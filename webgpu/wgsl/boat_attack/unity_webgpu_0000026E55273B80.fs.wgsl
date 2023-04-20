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

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat6 : f32;

var<private> u_xlat1 : f32;

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
  let x_41 : f32 = x_23.x_Params.z;
  u_xlat4.x = (x_41 + 1.0f);
  let x_49 : f32 = u_xlat4.x;
  let x_51 : f32 = u_xlat4.x;
  u_xlat6 = (x_49 * x_51);
  let x_54 : f32 = u_xlat0.x;
  let x_56 : f32 = u_xlat0.x;
  let x_58 : f32 = u_xlat6;
  u_xlat6 = ((x_54 * x_56) + x_58);
  let x_62 : f32 = u_xlat0.x;
  let x_64 : f32 = x_23.x_Params.z;
  u_xlat1 = (x_62 * x_64);
  let x_67 : f32 = u_xlat1;
  let x_69 : f32 = u_xlat1;
  let x_71 : f32 = u_xlat6;
  u_xlat3 = ((-(x_67) * x_69) + x_71);
  let x_73 : f32 = u_xlat3;
  u_xlat3 = sqrt(x_73);
  let x_76 : f32 = u_xlat4.x;
  let x_77 : f32 = u_xlat3;
  u_xlat3 = (x_76 * x_77);
  let x_79 : f32 = u_xlat1;
  let x_82 : f32 = u_xlat0.x;
  let x_84 : f32 = u_xlat3;
  u_xlat1 = ((-(x_79) * x_82) + x_84);
  let x_86 : f32 = u_xlat1;
  let x_87 : f32 = u_xlat6;
  u_xlat6 = (x_86 / x_87);
  let x_89 : f32 = u_xlat6;
  let x_91 : f32 = x_23.x_Params.z;
  u_xlat1 = (x_89 + x_91);
  let x_93 : f32 = u_xlat1;
  let x_95 : f32 = u_xlat4.x;
  u_xlat4.x = (x_93 / x_95);
  let x_98 : vec2<f32> = u_xlat4;
  let x_100 : vec2<f32> = u_xlat0;
  u_xlat0 = (vec2<f32>(x_98.x, x_98.x) * x_100);
  let x_102 : vec2<f32> = u_xlat0;
  let x_103 : f32 = u_xlat6;
  u_xlat0 = (x_102 / vec2<f32>(x_103, x_103));
  let x_106 : vec2<f32> = u_xlat0;
  let x_108 : vec4<f32> = x_23.x_Params;
  u_xlat0 = (x_106 / vec2<f32>(x_108.x, x_108.y));
  let x_111 : vec2<f32> = u_xlat0;
  u_xlat0 = ((x_111 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
  let x_118 : vec4<f32> = x_23.x_ScreenSize;
  u_xlat4 = ((-(vec2<f32>(x_118.z, x_118.w)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(1.0f, 1.0f));
  let x_124 : vec2<f32> = u_xlat4;
  let x_125 : vec2<f32> = u_xlat0;
  u_xlat0 = min(x_124, x_125);
  let x_127 : vec2<f32> = u_xlat0;
  let x_130 : vec4<f32> = x_23.x_RTHandleScale;
  u_xlat0 = (x_127 * vec2<f32>(x_130.x, x_130.y));
  let x_145 : vec2<f32> = u_xlat0;
  let x_148 : f32 = x_23.x_GlobalMipBias.x;
  let x_149 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_145, x_148);
  SV_Target0 = x_149;
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


