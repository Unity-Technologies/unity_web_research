diagnostic(off, derivative_uniformity);

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragDepth : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  SV_Target0 = vec4<f32>(0.89999997615814208984f, 0.0f, 0.0f, 1.0f);
  gl_FragDepth = 0.89999997615814208984f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @builtin(frag_depth)
  gl_FragDepth_1 : f32,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, gl_FragDepth);
}


