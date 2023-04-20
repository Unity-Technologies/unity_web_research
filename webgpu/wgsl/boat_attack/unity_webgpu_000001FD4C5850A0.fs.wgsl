diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_TextureSampleAdd : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : f32;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_25 : vec4<f32> = u_xlat0;
  let x_33 : vec4<f32> = x_28.x_TextureSampleAdd;
  u_xlat0 = (x_25 + x_33);
  let x_40 : f32 = u_xlat0.w;
  let x_45 : f32 = vs_COLOR0.w;
  u_xlat1 = ((x_40 * x_45) + -0.00100000004749745131f);
  let x_49 : vec4<f32> = u_xlat0;
  let x_50 : vec4<f32> = vs_COLOR0;
  u_xlat0 = (x_49 * x_50);
  let x_54 : vec4<f32> = u_xlat0;
  SV_Target0 = x_54;
  let x_58 : f32 = u_xlat1;
  u_xlatb0 = (x_58 < 0.0f);
  let x_61 : bool = u_xlatb0;
  if (((select(0i, 1i, x_61) * -1i) != 0i)) {
    discard;
  }
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


