diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D_TexelSize : vec4<f32>,
  /* @offset(16) */
  x_MainTex_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_DE8BF47E_TexelSize : vec4<f32>,
  /* @offset(48) */
  Vector1_6E11FCEA : f32,
  /* @offset(52) */
  Vector1_A492C01C : f32,
  /* @offset(56) */
  Vector1_8B35DE98 : f32,
  /* @offset(64) */
  Texture2D_C005B064_TexelSize : vec4<f32>,
  /* @offset(80) */
  Texture2D_D7D66558_TexelSize : vec4<f32>,
  /* @offset(96) */
  Vector1_90E376AD : f32,
}

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_29 : UnityPerDraw;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP3 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var Texture2D_DE8BF47E : texture_2d<f32>;

@group(0) @binding(4) var samplerTexture2D_DE8BF47E : sampler;

var<private> vs_INTERP1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_108 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_173 : UnityPerMaterial;

var<private> vs_INTERP2 : vec3<f32>;

var<private> u_xlat8 : f32;

@group(0) @binding(2) var Texture2D_D7D66558 : texture_2d<f32>;

@group(0) @binding(5) var samplerTexture2D_D7D66558 : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> SV_TARGET0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : f32 = vs_INTERP0.w;
  u_xlatb0.x = (0.0f < x_19);
  let x_34 : f32 = x_29.unity_WorldTransformParams.w;
  u_xlatb0.y = (x_34 >= 0.0f);
  let x_42 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_42);
  let x_49 : bool = u_xlatb0.y;
  u_xlat0.y = select(-1.0f, 1.0f, x_49);
  let x_53 : f32 = u_xlat0.y;
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = (x_53 * x_55);
  let x_59 : vec4<f32> = vs_INTERP0;
  let x_63 : vec3<f32> = vs_INTERP3;
  u_xlat4 = (vec3<f32>(x_59.y, x_59.z, x_59.x) * vec3<f32>(x_63.z, x_63.x, x_63.y));
  let x_66 : vec3<f32> = vs_INTERP3;
  let x_68 : vec4<f32> = vs_INTERP0;
  let x_71 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_66.y, x_66.z, x_66.x) * vec3<f32>(x_68.z, x_68.x, x_68.y)) + -(x_71));
  let x_74 : vec3<f32> = u_xlat4;
  let x_75 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_74 * vec3<f32>(x_75.x, x_75.x, x_75.x));
  let x_79 : vec3<f32> = vs_INTERP3;
  let x_80 : vec3<f32> = vs_INTERP3;
  u_xlat12 = dot(x_79, x_80);
  let x_82 : f32 = u_xlat12;
  u_xlat12 = sqrt(x_82);
  let x_84 : f32 = u_xlat12;
  u_xlat12 = (1.0f / x_84);
  let x_86 : vec3<f32> = u_xlat0;
  let x_87 : f32 = u_xlat12;
  u_xlat0 = (x_86 * vec3<f32>(x_87, x_87, x_87));
  let x_104 : vec4<f32> = vs_INTERP1;
  let x_111 : f32 = x_108.x_GlobalMipBias.x;
  let x_112 : vec4<f32> = textureSampleBias(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E, vec2<f32>(x_104.x, x_104.y), x_111);
  let x_113 : vec3<f32> = vec3<f32>(x_112.y, x_112.z, x_112.w);
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_116 : vec4<f32> = u_xlat1;
  let x_122 : vec3<f32> = ((vec3<f32>(x_116.z, x_116.x, x_116.y) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec3<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_125 * vec3<f32>(x_126.y, x_126.y, x_126.y));
  let x_130 : f32 = u_xlat12;
  let x_132 : vec4<f32> = vs_INTERP0;
  u_xlat2 = (vec3<f32>(x_130, x_130, x_130) * vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_136 : f32 = u_xlat12;
  let x_138 : vec3<f32> = vs_INTERP3;
  u_xlat3 = (vec3<f32>(x_136, x_136, x_136) * x_138);
  let x_140 : vec4<f32> = u_xlat1;
  let x_142 : vec3<f32> = u_xlat2;
  let x_144 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_140.x, x_140.x, x_140.x) * x_142) + x_144);
  let x_146 : vec4<f32> = u_xlat1;
  let x_148 : vec3<f32> = u_xlat3;
  let x_150 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_146.z, x_146.z, x_146.z) * x_148) + x_150);
  let x_152 : vec3<f32> = u_xlat0;
  let x_153 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_152, x_153);
  let x_157 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_157, 1.17549435e-38f);
  let x_162 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_162);
  let x_166 : f32 = u_xlat0.x;
  let x_168 : f32 = u_xlat0.y;
  u_xlat0.x = (x_166 * x_168);
  let x_176 : f32 = x_173.Vector1_A492C01C;
  u_xlat4.x = (x_176 + -10.0f);
  let x_181 : f32 = u_xlat4.x;
  let x_185 : f32 = vs_INTERP2.y;
  u_xlat4.x = (-(x_181) + x_185);
  let x_189 : f32 = u_xlat4.x;
  u_xlat4.x = (x_189 * 0.05000000074505805969f);
  let x_194 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_194, 0.0f, 1.0f);
  let x_199 : f32 = u_xlat4.x;
  u_xlat8 = ((x_199 * -2.0f) + 3.0f);
  let x_205 : f32 = u_xlat4.x;
  let x_207 : f32 = u_xlat4.x;
  u_xlat4.x = (x_205 * x_207);
  let x_211 : f32 = u_xlat4.x;
  let x_212 : f32 = u_xlat8;
  u_xlat4.x = (x_211 * x_212);
  let x_217 : f32 = x_173.Vector1_8B35DE98;
  u_xlat8 = ((-(x_217) * 0.01111099962145090103f) + 0.94999998807907104492f);
  let x_224 : f32 = u_xlat4.x;
  let x_226 : f32 = u_xlat0.x;
  let x_228 : f32 = u_xlat8;
  u_xlat0.x = ((x_224 * x_226) + -(x_228));
  let x_233 : f32 = u_xlat0.x;
  u_xlat0.x = (x_233 * 10.0f);
  let x_238 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_238, 0.0f, 1.0f);
  let x_242 : f32 = u_xlat0.x;
  u_xlat4.x = ((x_242 * -2.0f) + 3.0f);
  let x_247 : f32 = u_xlat0.x;
  let x_249 : f32 = u_xlat0.x;
  u_xlat0.x = (x_247 * x_249);
  let x_253 : f32 = u_xlat0.x;
  let x_255 : f32 = u_xlat4.x;
  u_xlat0.x = (x_253 * x_255);
  let x_259 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_259, 1.0f);
  let x_263 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_263) + 1.0f);
  let x_267 : vec4<f32> = vs_INTERP1;
  let x_271 : vec2<f32> = (vec2<f32>(x_267.x, x_267.y) * vec2<f32>(4.0f, 4.0f));
  let x_272 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_271.x, x_271.y, x_272.z);
  let x_279 : vec3<f32> = u_xlat4;
  let x_282 : f32 = x_108.x_GlobalMipBias.x;
  let x_283 : vec4<f32> = textureSampleBias(Texture2D_D7D66558, samplerTexture2D_D7D66558, vec2<f32>(x_279.x, x_279.y), x_282);
  u_xlat4 = vec3<f32>(x_283.x, x_283.y, x_283.z);
  let x_290 : vec4<f32> = vs_INTERP1;
  let x_293 : f32 = x_108.x_GlobalMipBias.x;
  let x_294 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_290.x, x_290.y), x_293);
  u_xlat1 = x_294;
  let x_295 : vec3<f32> = u_xlat4;
  let x_297 : vec4<f32> = u_xlat1;
  let x_299 : vec3<f32> = (-(x_295) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec3<f32> = u_xlat0;
  let x_304 : vec4<f32> = u_xlat1;
  let x_307 : vec3<f32> = u_xlat4;
  u_xlat0 = ((vec3<f32>(x_302.x, x_302.x, x_302.x) * vec3<f32>(x_304.x, x_304.y, x_304.z)) + x_307);
  let x_310 : f32 = u_xlat1.w;
  u_xlat12 = (x_310 + -0.5f);
  let x_313 : f32 = u_xlat12;
  let x_316 : f32 = vs_INTERP2.y;
  u_xlat12 = ((x_313 * 4.0f) + x_316);
  let x_318 : f32 = u_xlat12;
  u_xlat12 = (x_318 * 0.33000001311302185059f);
  let x_322 : f32 = vs_INTERP2.y;
  u_xlat1.x = (x_322 + 1.0f);
  let x_326 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_326 * -1.33333337306976318359f) + 1.0f);
  let x_331 : f32 = u_xlat12;
  let x_333 : f32 = u_xlat1.x;
  u_xlat12 = max(x_331, x_333);
  let x_335 : f32 = u_xlat12;
  u_xlat12 = max(x_335, 0.10000000149011611938f);
  let x_338 : f32 = u_xlat12;
  u_xlat12 = min(x_338, 1.0f);
  let x_342 : vec3<f32> = u_xlat0;
  let x_343 : f32 = u_xlat12;
  let x_345 : vec3<f32> = (x_342 * vec3<f32>(x_343, x_343, x_343));
  let x_346 : vec4<f32> = SV_TARGET0;
  SV_TARGET0 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  SV_TARGET0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_TARGET0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec4<f32>, @location(3) vs_INTERP3_param : vec3<f32>, @location(1) vs_INTERP1_param : vec4<f32>, @location(2) vs_INTERP2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_TARGET0);
}


