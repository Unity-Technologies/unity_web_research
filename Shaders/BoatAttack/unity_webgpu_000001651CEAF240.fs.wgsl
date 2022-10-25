struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_AmbientOcclusionParam : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
}

struct UnityPerMaterial {
  x_Color : vec4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(0) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_123 : UnityPerMaterial;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_37 : vec4<f32> = x_32.x_ScaledScreenParams;
  let x_38 : vec2<f32> = vec2<f32>(x_37.x, x_37.y);
  let x_42 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_38.x, x_38.y));
  let x_43 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_42.x, x_42.y, x_43.z);
  let x_45 : vec3<f32> = u_xlat0;
  let x_47 : vec4<f32> = hlslcc_FragCoord;
  let x_49 : vec2<f32> = (vec2<f32>(x_45.x, x_45.y) * vec2<f32>(x_47.x, x_47.y));
  let x_50 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_49.x, x_49.y, x_50.z);
  let x_56 : f32 = u_xlat0.y;
  let x_61 : f32 = x_32.x_ScaleBiasRt.x;
  let x_64 : f32 = x_32.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_56 * x_61) + x_64);
  let x_68 : f32 = u_xlat1.x;
  u_xlat0.z = (-(x_68) + 1.0f);
  let x_83 : vec3<f32> = u_xlat0;
  let x_87 : f32 = x_32.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_83.x, x_83.z), x_87);
  u_xlat0.x = x_88.x;
  let x_92 : f32 = u_xlat0.x;
  u_xlat0.x = (x_92 + -1.0f);
  let x_98 : f32 = x_32.x_AmbientOcclusionParam.w;
  let x_100 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_98 * x_100) + 1.0f);
  let x_106 : f32 = vs_INTERP2.x;
  u_xlat1.x = (x_106 + 0.25f);
  let x_111 : f32 = u_xlat1.x;
  u_xlat1.x = floor(x_111);
  let x_116 : f32 = u_xlat1.x;
  u_xlat2 = (-(x_116) + 1.0f);
  let x_119 : vec3<f32> = u_xlat1;
  let x_125 : vec4<f32> = x_123.x_Color;
  let x_128 : f32 = u_xlat2;
  u_xlat1 = ((vec3<f32>(x_119.x, x_119.x, x_119.x) * vec3<f32>(x_125.x, x_125.y, x_125.z)) + vec3<f32>(x_128, x_128, x_128));
  let x_131 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_131 * vec3<f32>(8.0f, 8.0f, 8.0f));
  let x_137 : vec3<f32> = u_xlat0;
  let x_139 : vec3<f32> = u_xlat1;
  let x_140 : vec3<f32> = (vec3<f32>(x_137.x, x_137.x, x_137.x) * x_139);
  let x_141 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_INTERP2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP2 = vs_INTERP2_param;
  main_1();
  return main_out(SV_Target0);
}

