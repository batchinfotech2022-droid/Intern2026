/* ===============================
   COMMON TABLE SEARCH FUNCTION
   =============================== */
function filterTable(config) {

    const searchInput = document.getElementById(config.searchId);
    const filterSelect = document.getElementById(config.filterId);
    const fromDate = document.getElementById(config.fromDateId);
    const toDate = document.getElementById(config.toDateId);

    const rows = document.querySelectorAll(config.tableSelector + " tbody tr:not(.no-records)");
    const noRecordRow = document.querySelector(config.tableSelector + " .no-records");

    let visibleCount = 0;

    rows.forEach(row => {

        let show = true;
        const rowText = row.innerText.toLowerCase();

        /* TEXT SEARCH */
        if (searchInput && searchInput.value.trim() !== "") {
            if (!rowText.includes(searchInput.value.toLowerCase())) {
                show = false;
            }
        }

        /* DROPDOWN FILTER */
        if (filterSelect && filterSelect.value !== "") {
    const rowStatus = row.dataset.status;
    if (rowStatus !== filterSelect.value.toLowerCase()) {
        show = false;
    }
}

        /* DATE RANGE FILTER */
        if (fromDate || toDate) {

            const rowDateText = row.querySelector("td[data-date]")?.dataset.date;
            if (rowDateText) {

                const rowDate = new Date(rowDateText);
                if (fromDate?.value && rowDate < new Date(fromDate.value)) show = false;
                if (toDate?.value && rowDate > new Date(toDate.value)) show = false;
            }
        }

        row.style.display = show ? "" : "none";
        if (show) visibleCount++;
    });

    /* NO RECORDS MESSAGE */
    if (noRecordRow) {
        noRecordRow.classList.toggle("d-none", visibleCount !== 0);
    }
}

/* ===============================
   INTERNS PAGE
   =============================== */
document.addEventListener("DOMContentLoaded", () => {

    const internSearch = document.getElementById("internSearch");
    const activeFilter = document.getElementById("activeFilter");

    if (internSearch || activeFilter) {
        [internSearch, activeFilter].forEach(el => {
            el?.addEventListener("input", () => {
                filterTable({
                    searchId: "internSearch",
                    filterId: "activeFilter",
                    tableSelector: ".intern-table"
                });
            });
        });
    }
});

/* ===============================
   LEAVE PAGE (NO STATUS)
   =============================== */
document.addEventListener("DOMContentLoaded", () => {

    const leaveSearch = document.getElementById("leaveSearch");

    if (leaveSearch) {
        leaveSearch.addEventListener("input", () => {
            filterTable({
                searchId: "leaveSearch",
                tableSelector: ".leave-table"
            });
        });
    }
});

/* ===============================
   ATTENDANCE PAGE
   =============================== */
document.addEventListener("DOMContentLoaded", () => {

    const attendanceSearch = document.getElementById("attendanceSearch");
    const attendanceFilter = document.getElementById("attendanceFilter");
    const fromDate = document.getElementById("fromDate");
    const toDate = document.getElementById("toDate");

    if (attendanceSearch || attendanceFilter || fromDate || toDate) {

        [attendanceSearch, attendanceFilter, fromDate, toDate].forEach(el => {
            el?.addEventListener("input", () => {
                filterTable({
                    searchId: "attendanceSearch",
                    filterId: "attendanceFilter",
                    fromDateId: "fromDate",
                    toDateId: "toDate",
                    tableSelector: ".attendance-table"
                });
            });
        });
    }
});