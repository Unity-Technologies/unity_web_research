struct PGlobals {
  x_EnableExternalAlpha : f32,
  @size(12)
  padding : u32,
  x_Color : vec4<f32>,
  x_Cutoff : f32,
}

@group(0) @binding(1) var x_AlphaTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_AlphaTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : f32;
  var u_xlatb0 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_22 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AlphaTex, sampler_AlphaTex, x_22);
  u_xlat0 = x_24.x;
  let x_34 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_34);
  u_xlat1 = x_35.w;
  let x_38 : f32 = u_xlat1;
  let x_40 : f32 = u_xlat0;
  u_xlat0 = (-(x_38) + x_40);
  let x_49 : f32 = x_44.x_EnableExternalAlpha;
  let x_50 : f32 = u_xlat0;
  let x_52 : f32 = u_xlat1;
  u_xlat0 = ((x_49 * x_50) + x_52);
  let x_54 : f32 = u_xlat0;
  let x_57 : f32 = x_44.x_Cutoff;
  u_xlat0 = (x_54 + -(x_57));
  let x_63 : f32 = u_xlat0;
  u_xlatb0 = (x_63 < 0.0f);
  let x_66 : bool = u_xlatb0;
  if (((select(0i, 1i, x_66) * -1i) != 0i)) {
    discard;
  }
  let x_79 : vec4<f32> = x_44.x_Color;
  SV_Target0 = x_79;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

