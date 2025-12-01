import streamlit as st

st.set_page_config(layout="wide")

pg = st.navigation(
    [
        st.Page(
            "src/dashboard.py",
            title="Dashboard",
            icon=":material/analytics:",
            default=True,
        ),
        st.Page(
            "src/readme.py",
            title="ReadMe",
            icon=":material/chrome_reader_mode:",
        ),
    ],
    position="top",
)
pg.run()
