{include file='admin/main.tpl'}
<div id="layoutSidenav_content">
    <main>
        <header class="page-header page-header-dark bg-gradient-primary-to-secondary pb-10">
            <div class="container-xl px-4">
                <div class="page-header-content pt-4">
                    <div class="row align-items-center justify-content-between">
                        <div class="col-auto mt-4">
                            <h1 class="page-header-title">
                                工单管理
                            </h1>
                        </div>
                        <div class="col-12 col-xl-auto mt-4">系统中的工单</div>
                    </div>
                </div>
            </div>
        </header>
        <div class="container-xl px-4 mt-n10">
            <div class="card mb-4">
                <div class="card-body">
                    <p>显示表项:
                        {include file='table/checkbox.tpl'}
                    </p>
                </div>
            </div>
            <div class="card table-responsive">
            <div class="card-body">
                {include file='table/table.tpl'}
            </div>
            </div>
        </div>
    </main>
                    <!-- Footer -->
                    <footer class="footer-admin mt-auto footer-light">
                        <div class="container-xl px-4">
                            <div class="row">
                                <div class="col-md-12 text-center small">&copy;{date("Y")} {$config['appName']} ©
                                    Powered by <a href="/staff">SSPANEL</a>
                                    {if $config['enable_analytics_code'] === true}{include file='analytics.tpl'}{/if}
                                </div>
                            </div>
                        </div>
                    </footer>
                    <!-- End of Footer -->

</div>
    {include file='admin/footer.tpl'}
<script>
    {include file='table/js_1.tpl'}
    window.addEventListener('load', () => {
        table = $('#table_tickets').DataTable({
            ajax: 'ticket/ajax',
            processing: true,
            serverSide: true,
            order: [
                [1, 'desc']
            ]
        })
        {include file='table/js_2.tpl'}
    });
</script>
