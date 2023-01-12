struct PGlobals {
  unity_FogColor : vec4<f32>,
}

var<private> vs_COLOR0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_17 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = vs_COLOR0;
  let x_22 : vec4<f32> = x_17.unity_FogColor;
  u_xlat0 = (vec3<f32>(x_13.x, x_13.y, x_13.z) + -(vec3<f32>(x_22.x, x_22.y, x_22.z)));
  let x_30 : f32 = vs_TEXCOORD0;
  let x_32 : vec3<f32> = u_xlat0;
  let x_35 : vec4<f32> = x_17.unity_FogColor;
  let x_37 : vec3<f32> = ((vec3<f32>(x_30, x_30, x_30) * x_32) + vec3<f32>(x_35.x, x_35.y, x_35.z));
  let x_38 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_37.x, x_37.y, x_37.z, x_38.w);
  let x_43 : f32 = vs_COLOR0.w;
  SV_Target0.w = x_43;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

