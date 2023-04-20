diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_ScreenSize : vec4<f32>,
  /* @offset(48) */
  x_Params : vec4<f32>,
}

var<private> u_xlat0 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_23 : PGlobals;

var<private> u_xlat2 : vec2<f32>;

var<private> u_xlat3 : f32;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_LinearClamp : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_12 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_19 : vec2<f32> = u_xlat0;
  let x_28 : vec4<f32> = x_23.x_Params;
  u_xlat0 = (x_19 * vec2<f32>(x_28.x, x_28.y));
  let x_31 : vec2<f32> = u_xlat0;
  let x_33 : vec4<f32> = x_23.x_Params;
  u_xlat0 = (x_31 * vec2<f32>(x_33.w, x_33.w));
  let x_41 : f32 = u_xlat0.x;
  let x_43 : f32 = u_xlat0.x;
  u_xlat2.x = (x_41 * x_43);
  let x_48 : f32 = u_xlat0.x;
  let x_50 : f32 = u_xlat0.x;
  u_xlat3 = ((x_48 * x_50) + 4.0f);
  let x_54 : f32 = u_xlat3;
  u_xlat3 = sqrt(x_54);
  let x_57 : f32 = u_xlat2.x;
  let x_58 : f32 = u_xlat3;
  u_xlat2.x = (x_57 / x_58);
  let x_62 : f32 = u_xlat2.x;
  let x_64 : f32 = u_xlat3;
  u_xlat2.x = (-(x_62) + x_64);
  let x_68 : f32 = u_xlat2.x;
  let x_69 : f32 = u_xlat3;
  u_xlat2.x = (x_68 / x_69);
  let x_72 : vec2<f32> = u_xlat2;
  let x_74 : vec2<f32> = u_xlat0;
  u_xlat0 = (vec2<f32>(x_72.x, x_72.x) * x_74);
  let x_77 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_77 * 2.0f) + -1.0f);
  let x_81 : vec2<f32> = u_xlat0;
  let x_82 : vec2<f32> = u_xlat2;
  u_xlat0 = (x_81 / vec2<f32>(x_82.x, x_82.x));
  let x_85 : vec2<f32> = u_xlat0;
  let x_87 : vec4<f32> = x_23.x_Params;
  u_xlat0 = (x_85 / vec2<f32>(x_87.x, x_87.y));
  let x_90 : vec2<f32> = u_xlat0;
  u_xlat0 = ((x_90 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
  let x_97 : vec4<f32> = x_23.x_ScreenSize;
  u_xlat2 = ((-(vec2<f32>(x_97.z, x_97.w)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(1.0f, 1.0f));
  let x_104 : vec2<f32> = u_xlat2;
  let x_105 : vec2<f32> = u_xlat0;
  u_xlat0 = min(x_104, x_105);
  let x_107 : vec2<f32> = u_xlat0;
  let x_110 : vec4<f32> = x_23.x_RTHandleScale;
  u_xlat0 = (x_107 * vec2<f32>(x_110.x, x_110.y));
  let x_125 : vec2<f32> = u_xlat0;
  let x_129 : f32 = x_23.x_GlobalMipBias.x;
  let x_130 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_125, x_129);
  SV_Target0 = x_130;
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


