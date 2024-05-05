<div class="main-sidebar sidebar-style-2">
    <aside id="sidebar-wrapper ">
        <div class="sidebar-brand">
            <a href="index.html" class="" style="width:100%">
                <img alt="image" class="rounded-circle mr-3" width="50" src="{{ asset('img/logo-lms.png') }}">
                <span style="width: 50%">Pocket Book</span>
            </a>
        </div>
        <div class="sidebar-brand sidebar-brand-sm">
            <a href="index.html">St</a>
        </div>
        <div class=" d-flex flex-column justify-content-between " style="height: 90vh">
            <ul class="sidebar-menu">

                <li class="{{ Request::is('blank-page') ? 'active' : '' }}">
                    <a class="nav-link" href="{{ url('blank-page') }}"><i class="fas fa-th-large"></i>
                        <span>Dashboard</span></a>
                </li>
                {{-- <li class="menu-header">Dashboard</li> --}}
                <li class="{{ Request::is('blank-page') ? 'active' : '' }}">
                    <a class="nav-link" href="{{ url('blank-page') }}"><i class="fas fa-home"></i>
                        <span>Material</span></a>
                </li>
                <li class="{{ Request::is('blank-page') ? 'active' : '' }}">
                    <a class="nav-link" href="{{ url('blank-page') }}"><i class="fas fa-home"></i>
                        <span>Assignments</span></a>
                </li>


            </ul>

            <div class="hide-sidebar-mini mt-4 mb-4 p-3">
                <a href="https://getstisla.com/docs" class="btn btn-primary btn-lg btn-block btn-icon-split">
                    <i class="fas fa-rocket"></i> Documentation
                </a>
            </div>
        </div>

    </aside>
</div>
