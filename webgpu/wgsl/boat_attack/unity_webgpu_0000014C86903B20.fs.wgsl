diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_TreeBillboardCameraFront : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat1 : f32;

@group(1) @binding(0) var<uniform> x_35 : PGlobals;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec3<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = x_26;
  let x_32 : f32 = u_xlat0.w;
  let x_40 : f32 = x_35.x_TreeBillboardCameraFront.w;
  u_xlat1 = (x_32 + -(x_40));
  let x_46 : f32 = u_xlat1;
  u_xlatb1 = (x_46 < 0.0f);
  let x_49 : bool = u_xlatb1;
  if (((select(0i, 1i, x_49) * -1i) != 0i)) {
    discard;
  }
  let x_60 : vec4<f32> = u_xlat0;
  let x_64 : vec4<f32> = vs_COLOR0;
  let x_66 : vec3<f32> = (vec3<f32>(x_60.x, x_60.y, x_60.z) * vec3<f32>(x_64.x, x_64.y, x_64.z));
  let x_67 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_70 : f32 = u_xlat0.w;
  SV_Target0.w = x_70;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec3<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


