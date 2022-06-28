struct PGlobals {
  x_Cutoff : f32,
}

var<private> u_xlat0 : f32;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_22);
  u_xlat0 = x_24.w;
  let x_28 : f32 = u_xlat0;
  let x_33 : f32 = vs_COLOR0.w;
  let x_42 : f32 = x_37.x_Cutoff;
  u_xlat0 = ((x_28 * x_33) + -(x_42));
  let x_48 : f32 = u_xlat0;
  u_xlatb0 = (x_48 < 0.0f);
  let x_51 : bool = u_xlatb0;
  if (((select(0i, 1i, x_51) * -1i) != 0i)) {
    discard;
  }
  let x_63 : vec4<f32> = vs_TEXCOORD1;
  SV_Target0 = x_63;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

