struct PGlobals {
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_NoiseStrength : f32,
}

var<private> u_xlat0 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(3) var sampler_Noise : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat1 : f32;

@group(0) @binding(2) var x_Gradient : texture_2d<f32>;

@group(0) @binding(4) var sampler_Gradient : sampler;

var<private> u_xlat2 : f32;

@group(0) @binding(0) var<uniform> x_50 : PGlobals;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD1;
  let x_25 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25.x;
  let x_35 : vec4<f32> = vs_TEXCOORD1;
  let x_37 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_35.z, x_35.w));
  u_xlat1 = x_37.x;
  let x_40 : f32 = u_xlat1;
  u_xlat2 = (-(x_40) + 1.0f);
  let x_44 : f32 = u_xlat2;
  let x_45 : f32 = u_xlat0;
  u_xlat0 = (x_44 * x_45);
  let x_47 : f32 = u_xlat0;
  let x_55 : f32 = x_50.x_NoiseStrength;
  let x_57 : f32 = u_xlat1;
  u_xlat0 = ((x_47 * x_55) + x_57);
  let x_59 : f32 = u_xlat0;
  u_xlat0 = (-(x_59) + 1.0f);
  let x_62 : f32 = u_xlat0;
  let x_65 : f32 = x_50.x_Cutoff;
  u_xlat0 = (x_62 + -(x_65));
  let x_70 : f32 = x_50.x_EdgeSize;
  u_xlat1 = (1.0f / -(x_70));
  let x_73 : f32 = u_xlat1;
  let x_74 : f32 = u_xlat0;
  u_xlat0 = (x_73 * x_74);
  let x_76 : f32 = u_xlat0;
  u_xlat0 = clamp(x_76, 0.0f, 1.0f);
  let x_79 : f32 = u_xlat0;
  u_xlat1 = ((x_79 * -2.0f) + 3.0f);
  let x_84 : f32 = u_xlat0;
  let x_85 : f32 = u_xlat0;
  u_xlat0 = (x_84 * x_85);
  let x_87 : f32 = u_xlat1;
  let x_89 : f32 = u_xlat0;
  let x_92 : f32 = x_50.x_Cutoff;
  u_xlat0 = ((-(x_87) * x_89) + -(x_92));
  let x_95 : f32 = u_xlat0;
  u_xlat0 = (x_95 + 1.0f);
  let x_100 : f32 = u_xlat0;
  u_xlatb0 = (x_100 < 0.0f);
  let x_102 : bool = u_xlatb0;
  if (((select(0i, 1i, x_102) * -1i) != 0i)) {
    discard;
  }
  SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

