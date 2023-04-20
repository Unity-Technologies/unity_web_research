diagnostic(off, derivative_uniformity);

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : f32 = vs_TEXCOORD0;
  u_xlat0.x = x_12;
  let x_18 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_18, 0.0f, 1.0f);
  let x_26 : vec3<f32> = vs_TEXCOORD1;
  let x_28 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (x_26 + -(x_28));
  let x_31 : vec3<f32> = u_xlat0;
  let x_33 : vec3<f32> = u_xlat1;
  let x_35 : vec3<f32> = vs_TEXCOORD2;
  u_xlat0 = ((vec3<f32>(x_31.x, x_31.x, x_31.x) * x_33) + x_35);
  let x_37 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_37, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_43 : vec3<f32> = u_xlat0;
  let x_46 : vec3<f32> = min(x_43, vec3<f32>(25.0f, 25.0f, 25.0f));
  let x_47 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : f32, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


