<?php echo $header; ?>
<div class="mobile-menu-area hidden-lg hidden-md">
  <div class="container">
    <div class="row">
      <div class="col-xs-12">
        <div class="mobile-menu">
          <nav id="dropdown">
            <ul>
              <?php echo $content_bottom; ?>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="container-fluid">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li>
      <a href="<?php echo $breadcrumb['href']; ?>">
        <?php echo $breadcrumb['text']; ?>
      </a>
    </li>
    <?php } ?>
  </ul>
  <div class="row">
    <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-12 col-md-9'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-12 col-md-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
      <?php echo $content_top; ?>
      <h1>
        <?php echo $heading_title; ?>
      </h1>
      <?php if ($orders) { ?>
      <div class="table-responsive">
        <table class="table table-bordered table-hover">
          <thead>
            <tr>
              <td class="text-right">
                <?php echo $column_order_id; ?>
              </td>
              <td class="text-left">
                <?php echo $column_customer; ?>
              </td>
              <td class="text-right">
                <?php echo $column_product; ?>
              </td>
              <td class="text-left">
                <?php echo $column_status; ?>
              </td>
              <td class="text-right">
                <?php echo $column_total; ?>
              </td>
              <td class="text-left">
                <?php echo $column_date_added; ?>
              </td>
              <td></td>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($orders as $order) { ?>
            <tr>
              <td class="text-right">#
                <?php echo $order['order_id']; ?>
              </td>
              <td class="text-left">
                <?php echo $order['name']; ?>
              </td>
              <td class="text-right">
                <?php echo $order['products']; ?>
              </td>
              <td class="text-left">
                <?php echo $order['status']; ?>
              </td>
              <td class="text-right">
                <?php echo $order['total']; ?>
              </td>
              <td class="text-left">
                <?php echo $order['date_added']; ?>
              </td>
              <td class="text-center">
                <a href="<?php echo $order['view']; ?>" data-toggle="tooltip" title="<?php echo $button_view; ?>" class="btn btn-info view-btn">
                  <i class="fa fa-eye"></i>
                </a>
              </td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left">
          <?php echo $pagination; ?>
        </div>
        <div class="col-sm-6 text-right">
          <?php echo $results; ?>
        </div>
      </div>
      <?php } else { ?>
      <p>
        <?php echo $text_empty; ?>
      </p>
      <?php } ?>
      <div class="buttons clearfix">
        <div class="pull-right">
          <a href="<?php echo $continue; ?>" class="submit-btn-1 mt-20 btn-hover-1 text-right">
            <?php echo $button_continue; ?>
          </a>
        </div>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>