diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(160) */
  x_NightFade : f32,
}

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

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat36 : f32;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(6) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat25 : f32;

@group(1) @binding(2) var<uniform> x_109 : UnityPerDraw;

var<private> u_xlatb25 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_F0A81025 : sampler;

var<private> u_xlatb37 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlat38 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb36 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat27 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat40 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat41 : f32;

@group(1) @binding(3) var<uniform> x_485 : LightShadows;

var<private> u_xlatb41 : bool;

var<private> u_xlatb42 : bool;

var<private> u_xlat42 : f32;

var<private> u_xlat43 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu40 : u32;

var<private> u_xlati41 : i32;

var<private> u_xlati40 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_842 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlati43 : i32;

var<private> u_xlatb45 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat46 : f32;

var<private> u_xlat45 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb46 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu3 : u32;

var<private> u_xlatb40 : bool;

fn main_1() {
  var x_268 : f32;
  var x_280 : f32;
  var x_293 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_974 : f32;
  var x_984 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_37.z);
  let x_46 : vec4<f32> = vs_INTERP5;
  let x_49 : f32 = x_29.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(Texture2D_8BA53EED, samplerTexture2D_8BA53EED, vec2<f32>(x_46.x, x_46.y), x_49);
  let x_51 : vec3<f32> = vec3<f32>(x_50.x, x_50.y, x_50.w);
  let x_52 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_51.x, x_51.y, x_51.z, x_52.w);
  let x_56 : f32 = u_xlat1.x;
  let x_59 : f32 = u_xlat1.z;
  u_xlat1.x = (x_56 * x_59);
  let x_62 : vec4<f32> = u_xlat1;
  let x_69 : vec2<f32> = ((vec2<f32>(x_62.x, x_62.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec2<f32>(x_73.x, x_73.y), vec2<f32>(x_75.x, x_75.y));
  let x_78 : f32 = u_xlat36;
  u_xlat36 = min(x_78, 1.0f);
  let x_81 : f32 = u_xlat36;
  u_xlat36 = (-(x_81) + 1.0f);
  let x_84 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_84);
  let x_86 : f32 = u_xlat36;
  u_xlat36 = max(x_86, 0.0000000000000001f);
  let x_95 : vec4<f32> = vs_INTERP5;
  let x_98 : f32 = x_29.x_GlobalMipBias.x;
  let x_99 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_95.x, x_95.y), x_98);
  u_xlat2 = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_101 * vec3<f32>(14.0f, 14.0f, 14.0f));
  let x_113 : vec4<f32> = x_109.unity_ObjectToWorld[3i];
  let x_116 : vec4<f32> = x_109.unity_ObjectToWorld[3i];
  u_xlat25 = dot(vec3<f32>(x_113.x, x_113.y, x_113.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_119);
  let x_121 : f32 = u_xlat25;
  u_xlat25 = fract(x_121);
  let x_123 : f32 = u_xlat25;
  let x_126 : f32 = x_29.x_NightFade;
  u_xlat25 = (x_123 + x_126);
  let x_131 : f32 = u_xlat25;
  u_xlatb25 = (x_131 >= 1.0f);
  let x_133 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_133);
  let x_142 : vec4<f32> = vs_INTERP5;
  let x_145 : f32 = x_29.x_GlobalMipBias.x;
  let x_146 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_142.x, x_142.y), x_145);
  u_xlat3 = vec3<f32>(x_146.x, x_146.w, x_146.y);
  let x_153 : f32 = vs_INTERP4.w;
  u_xlatb37 = (0.0f < x_153);
  let x_156 : bool = u_xlatb37;
  u_xlat37 = select(-1.0f, 1.0f, x_156);
  let x_160 : f32 = x_109.unity_WorldTransformParams.w;
  u_xlatb38 = (x_160 >= 0.0f);
  let x_163 : bool = u_xlatb38;
  u_xlat38 = select(-1.0f, 1.0f, x_163);
  let x_165 : f32 = u_xlat37;
  let x_166 : f32 = u_xlat38;
  u_xlat37 = (x_165 * x_166);
  let x_169 : vec4<f32> = vs_INTERP4;
  let x_173 : vec3<f32> = vs_INTERP8;
  let x_175 : vec3<f32> = (vec3<f32>(x_169.y, x_169.z, x_169.x) * vec3<f32>(x_173.z, x_173.x, x_173.y));
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_178 : vec3<f32> = vs_INTERP8;
  let x_180 : vec4<f32> = vs_INTERP4;
  let x_183 : vec4<f32> = u_xlat4;
  let x_186 : vec3<f32> = ((vec3<f32>(x_178.y, x_178.z, x_178.x) * vec3<f32>(x_180.z, x_180.x, x_180.y)) + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_189 : f32 = u_xlat37;
  let x_191 : vec4<f32> = u_xlat4;
  let x_193 : vec3<f32> = (vec3<f32>(x_189, x_189, x_189) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat1;
  let x_198 : vec4<f32> = u_xlat4;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.y, x_196.y, x_196.y) * vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec4<f32> = u_xlat1;
  let x_205 : vec4<f32> = vs_INTERP4;
  let x_208 : vec4<f32> = u_xlat4;
  let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.x, x_203.x) * vec3<f32>(x_205.x, x_205.y, x_205.z)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_210.x, x_210.y, x_211.z, x_210.z);
  let x_213 : f32 = u_xlat36;
  let x_215 : vec3<f32> = vs_INTERP8;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = ((vec3<f32>(x_213, x_213, x_213) * x_215) + vec3<f32>(x_217.x, x_217.y, x_217.w));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_219.z);
  let x_222 : vec4<f32> = u_xlat1;
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_222.x, x_222.y, x_222.w), vec3<f32>(x_224.x, x_224.y, x_224.w));
  let x_227 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_227);
  let x_229 : f32 = u_xlat36;
  let x_231 : vec4<f32> = u_xlat1;
  let x_233 : vec3<f32> = (vec3<f32>(x_229, x_229, x_229) * vec3<f32>(x_231.x, x_231.y, x_231.w));
  let x_234 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_239 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb36 = (x_239 == 0.0f);
  let x_242 : vec3<f32> = vs_INTERP7;
  let x_247 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_248 : vec3<f32> = (-(x_242) + x_247);
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_248.x, x_248.y, x_249.z, x_248.z);
  let x_251 : vec4<f32> = u_xlat1;
  let x_253 : vec4<f32> = u_xlat1;
  u_xlat38 = dot(vec3<f32>(x_251.x, x_251.y, x_251.w), vec3<f32>(x_253.x, x_253.y, x_253.w));
  let x_256 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_256);
  let x_258 : vec4<f32> = u_xlat1;
  let x_260 : f32 = u_xlat38;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.w) * vec3<f32>(x_260, x_260, x_260));
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_262.z);
  let x_266 : bool = u_xlatb36;
  if (x_266) {
    let x_272 : f32 = u_xlat1.x;
    x_268 = x_272;
  } else {
    let x_276 : f32 = x_29.unity_MatrixV[0i].z;
    x_268 = x_276;
  }
  let x_277 : f32 = x_268;
  u_xlat5.x = x_277;
  let x_279 : bool = u_xlatb36;
  if (x_279) {
    let x_285 : f32 = u_xlat1.y;
    x_280 = x_285;
  } else {
    let x_289 : f32 = x_29.unity_MatrixV[1i].z;
    x_280 = x_289;
  }
  let x_290 : f32 = x_280;
  u_xlat5.y = x_290;
  let x_292 : bool = u_xlatb36;
  if (x_292) {
    let x_297 : f32 = u_xlat1.w;
    x_293 = x_297;
  } else {
    let x_301 : f32 = x_29.unity_MatrixV[2i].z;
    x_293 = x_301;
  }
  let x_302 : f32 = x_293;
  u_xlat5.z = x_302;
  u_xlat4.w = 1.0f;
  let x_308 : vec4<f32> = x_109.unity_SHAr;
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_308, x_309);
  let x_314 : vec4<f32> = x_109.unity_SHAg;
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_314, x_315);
  let x_320 : vec4<f32> = x_109.unity_SHAb;
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_320, x_321);
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_325.y, x_325.z, x_325.z, x_325.x) * vec4<f32>(x_327.x, x_327.y, x_327.z, x_327.z));
  let x_333 : vec4<f32> = x_109.unity_SHBr;
  let x_334 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_333, x_334);
  let x_339 : vec4<f32> = x_109.unity_SHBg;
  let x_340 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_339, x_340);
  let x_345 : vec4<f32> = x_109.unity_SHBb;
  let x_346 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_345, x_346);
  let x_350 : f32 = u_xlat4.y;
  let x_352 : f32 = u_xlat4.y;
  u_xlat36 = (x_350 * x_352);
  let x_355 : f32 = u_xlat4.x;
  let x_357 : f32 = u_xlat4.x;
  let x_359 : f32 = u_xlat36;
  u_xlat36 = ((x_355 * x_357) + -(x_359));
  let x_364 : vec4<f32> = x_109.unity_SHC;
  let x_366 : f32 = u_xlat36;
  let x_369 : vec3<f32> = u_xlat8;
  let x_370 : vec3<f32> = ((vec3<f32>(x_364.x, x_364.y, x_364.z) * vec3<f32>(x_366, x_366, x_366)) + x_369);
  let x_371 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_370.x, x_370.y, x_371.z, x_370.z);
  let x_373 : vec4<f32> = u_xlat1;
  let x_375 : vec3<f32> = u_xlat6;
  let x_376 : vec3<f32> = (vec3<f32>(x_373.x, x_373.y, x_373.w) + x_375);
  let x_377 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_376.z);
  let x_379 : vec4<f32> = u_xlat1;
  let x_382 : vec3<f32> = max(vec3<f32>(x_379.x, x_379.y, x_379.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_383 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_382.z);
  let x_385 : vec3<f32> = u_xlat3;
  let x_386 : vec2<f32> = vec2<f32>(x_385.x, x_385.y);
  let x_387 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_386.x, x_386.y, x_387.z);
  let x_389 : vec3<f32> = u_xlat3;
  let x_393 : vec2<f32> = clamp(vec2<f32>(x_389.x, x_389.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_394 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_393.x, x_393.y, x_394.z);
  let x_397 : f32 = u_xlat3.x;
  u_xlat36 = ((-(x_397) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_402 : f32 = u_xlat36;
  let x_405 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_402) + x_405);
  let x_407 : f32 = u_xlat36;
  let x_409 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_407, x_407, x_407) * x_409);
  let x_411 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_411 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_415 : vec3<f32> = u_xlat3;
  let x_417 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_415.x, x_415.x, x_415.x) * x_417) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_423 : f32 = u_xlat3.y;
  u_xlat36 = (-(x_423) + 1.0f);
  let x_426 : f32 = u_xlat36;
  let x_427 : f32 = u_xlat36;
  u_xlat3.x = (x_426 * x_427);
  let x_431 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_431, 0.0078125f);
  let x_437 : f32 = u_xlat3.x;
  let x_439 : f32 = u_xlat3.x;
  u_xlat15 = (x_437 * x_439);
  let x_441 : f32 = u_xlat38;
  u_xlat38 = (x_441 + 1.0f);
  let x_443 : f32 = u_xlat38;
  u_xlat38 = min(x_443, 1.0f);
  let x_447 : f32 = u_xlat3.x;
  u_xlat39 = ((x_447 * 4.0f) + 2.0f);
  let x_453 : f32 = u_xlat3.z;
  u_xlat27 = min(x_453, 1.0f);
  let x_458 : vec4<f32> = vs_INTERP3;
  let x_459 : vec2<f32> = vec2<f32>(x_458.x, x_458.y);
  let x_461 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_459.x, x_459.y, x_461);
  let x_474 : vec3<f32> = txVec0;
  let x_476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_474.xy, x_474.z);
  u_xlat40 = x_476;
  let x_488 : f32 = x_485.x_MainLightShadowParams.x;
  u_xlat41 = (-(x_488) + 1.0f);
  let x_491 : f32 = u_xlat40;
  let x_493 : f32 = x_485.x_MainLightShadowParams.x;
  let x_495 : f32 = u_xlat41;
  u_xlat40 = ((x_491 * x_493) + x_495);
  let x_499 : f32 = vs_INTERP3.z;
  u_xlatb41 = (0.0f >= x_499);
  let x_503 : f32 = vs_INTERP3.z;
  u_xlatb42 = (x_503 >= 1.0f);
  let x_505 : bool = u_xlatb41;
  let x_506 : bool = u_xlatb42;
  u_xlatb41 = (x_505 | x_506);
  let x_508 : bool = u_xlatb41;
  let x_509 : f32 = u_xlat40;
  u_xlat40 = select(x_509, 1.0f, x_508);
  let x_511 : vec3<f32> = vs_INTERP7;
  let x_513 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_515 : vec3<f32> = (x_511 + -(x_513));
  let x_516 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat7;
  let x_520 : vec4<f32> = u_xlat7;
  u_xlat41 = dot(vec3<f32>(x_518.x, x_518.y, x_518.z), vec3<f32>(x_520.x, x_520.y, x_520.z));
  let x_524 : f32 = u_xlat41;
  let x_526 : f32 = x_485.x_MainLightShadowParams.z;
  let x_529 : f32 = x_485.x_MainLightShadowParams.w;
  u_xlat42 = ((x_524 * x_526) + x_529);
  let x_531 : f32 = u_xlat42;
  u_xlat42 = clamp(x_531, 0.0f, 1.0f);
  let x_533 : f32 = u_xlat40;
  u_xlat7.x = (-(x_533) + 1.0f);
  let x_537 : f32 = u_xlat42;
  let x_539 : f32 = u_xlat7.x;
  let x_541 : f32 = u_xlat40;
  u_xlat40 = ((x_537 * x_539) + x_541);
  let x_543 : vec3<f32> = u_xlat5;
  let x_545 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(-(x_543), vec3<f32>(x_545.x, x_545.y, x_545.z));
  let x_548 : f32 = u_xlat42;
  let x_549 : f32 = u_xlat42;
  u_xlat42 = (x_548 + x_549);
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : f32 = u_xlat42;
  let x_557 : vec3<f32> = u_xlat5;
  let x_559 : vec3<f32> = ((vec3<f32>(x_551.x, x_551.y, x_551.z) * -(vec3<f32>(x_553, x_553, x_553))) + -(x_557));
  let x_560 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat4;
  let x_564 : vec3<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_562.x, x_562.y, x_562.z), x_564);
  let x_566 : f32 = u_xlat42;
  u_xlat42 = clamp(x_566, 0.0f, 1.0f);
  let x_568 : f32 = u_xlat42;
  u_xlat42 = (-(x_568) + 1.0f);
  let x_571 : f32 = u_xlat42;
  let x_572 : f32 = u_xlat42;
  u_xlat42 = (x_571 * x_572);
  let x_574 : f32 = u_xlat42;
  let x_575 : f32 = u_xlat42;
  u_xlat42 = (x_574 * x_575);
  let x_578 : f32 = u_xlat36;
  u_xlat43 = ((-(x_578) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_584 : f32 = u_xlat36;
  let x_585 : f32 = u_xlat43;
  u_xlat36 = (x_584 * x_585);
  let x_587 : f32 = u_xlat36;
  u_xlat36 = (x_587 * 6.0f);
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : f32 = u_xlat36;
  let x_601 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_598.x, x_598.y, x_598.z), x_600);
  u_xlat7 = x_601;
  let x_603 : f32 = u_xlat7.w;
  u_xlat36 = (x_603 + -1.0f);
  let x_606 : f32 = x_109.unity_SpecCube0_HDR.w;
  let x_607 : f32 = u_xlat36;
  u_xlat36 = ((x_606 * x_607) + 1.0f);
  let x_610 : f32 = u_xlat36;
  u_xlat36 = max(x_610, 0.0f);
  let x_612 : f32 = u_xlat36;
  u_xlat36 = log2(x_612);
  let x_614 : f32 = u_xlat36;
  let x_616 : f32 = x_109.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_614 * x_616);
  let x_618 : f32 = u_xlat36;
  u_xlat36 = exp2(x_618);
  let x_620 : f32 = u_xlat36;
  let x_622 : f32 = x_109.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_620 * x_622);
  let x_624 : vec4<f32> = u_xlat7;
  let x_626 : f32 = u_xlat36;
  let x_628 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(x_626, x_626, x_626));
  let x_629 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec3<f32> = u_xlat3;
  let x_633 : vec3<f32> = u_xlat3;
  let x_637 : vec2<f32> = ((vec2<f32>(x_631.x, x_631.x) * vec2<f32>(x_633.x, x_633.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_638 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_637.x, x_637.y, x_638.z);
  let x_641 : f32 = u_xlat8.y;
  u_xlat36 = (1.0f / x_641);
  let x_644 : vec3<f32> = u_xlat0;
  let x_646 : f32 = u_xlat38;
  u_xlat20 = (-(x_644) + vec3<f32>(x_646, x_646, x_646));
  let x_649 : f32 = u_xlat42;
  let x_651 : vec3<f32> = u_xlat20;
  let x_653 : vec3<f32> = u_xlat0;
  u_xlat20 = ((vec3<f32>(x_649, x_649, x_649) * x_651) + x_653);
  let x_655 : f32 = u_xlat36;
  let x_657 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_655, x_655, x_655) * x_657);
  let x_659 : vec4<f32> = u_xlat7;
  let x_661 : vec3<f32> = u_xlat20;
  let x_662 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) * x_661);
  let x_663 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat1;
  let x_667 : vec3<f32> = u_xlat6;
  let x_669 : vec4<f32> = u_xlat7;
  let x_671 : vec3<f32> = ((vec3<f32>(x_665.x, x_665.y, x_665.w) * x_667) + vec3<f32>(x_669.x, x_669.y, x_669.z));
  let x_672 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_671.z);
  let x_674 : f32 = u_xlat40;
  let x_676 : f32 = x_109.unity_LightData.z;
  u_xlat36 = (x_674 * x_676);
  let x_678 : vec4<f32> = u_xlat4;
  let x_681 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat38 = dot(vec3<f32>(x_678.x, x_678.y, x_678.z), vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_684 : f32 = u_xlat38;
  u_xlat38 = clamp(x_684, 0.0f, 1.0f);
  let x_686 : f32 = u_xlat36;
  let x_687 : f32 = u_xlat38;
  u_xlat36 = (x_686 * x_687);
  let x_689 : f32 = u_xlat36;
  let x_692 : vec4<f32> = x_29.x_MainLightColor;
  let x_694 : vec3<f32> = (vec3<f32>(x_689, x_689, x_689) * vec3<f32>(x_692.x, x_692.y, x_692.z));
  let x_695 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec3<f32> = u_xlat5;
  let x_699 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat20 = (x_697 + vec3<f32>(x_699.x, x_699.y, x_699.z));
  let x_702 : vec3<f32> = u_xlat20;
  let x_703 : vec3<f32> = u_xlat20;
  u_xlat36 = dot(x_702, x_703);
  let x_705 : f32 = u_xlat36;
  u_xlat36 = max(x_705, 1.17549435e-38f);
  let x_708 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_708);
  let x_710 : f32 = u_xlat36;
  let x_712 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_710, x_710, x_710) * x_712);
  let x_714 : vec4<f32> = u_xlat4;
  let x_716 : vec3<f32> = u_xlat20;
  u_xlat36 = dot(vec3<f32>(x_714.x, x_714.y, x_714.z), x_716);
  let x_718 : f32 = u_xlat36;
  u_xlat36 = clamp(x_718, 0.0f, 1.0f);
  let x_721 : vec4<f32> = x_29.x_MainLightPosition;
  let x_723 : vec3<f32> = u_xlat20;
  u_xlat38 = dot(vec3<f32>(x_721.x, x_721.y, x_721.z), x_723);
  let x_725 : f32 = u_xlat38;
  u_xlat38 = clamp(x_725, 0.0f, 1.0f);
  let x_727 : f32 = u_xlat36;
  let x_728 : f32 = u_xlat36;
  u_xlat36 = (x_727 * x_728);
  let x_730 : f32 = u_xlat36;
  let x_732 : f32 = u_xlat8.x;
  u_xlat36 = ((x_730 * x_732) + 1.00001001358032226562f);
  let x_736 : f32 = u_xlat38;
  let x_737 : f32 = u_xlat38;
  u_xlat38 = (x_736 * x_737);
  let x_739 : f32 = u_xlat36;
  let x_740 : f32 = u_xlat36;
  u_xlat36 = (x_739 * x_740);
  let x_742 : f32 = u_xlat38;
  u_xlat38 = max(x_742, 0.10000000149011611938f);
  let x_745 : f32 = u_xlat36;
  let x_746 : f32 = u_xlat38;
  u_xlat36 = (x_745 * x_746);
  let x_748 : f32 = u_xlat39;
  let x_749 : f32 = u_xlat36;
  u_xlat36 = (x_748 * x_749);
  let x_751 : f32 = u_xlat15;
  let x_752 : f32 = u_xlat36;
  u_xlat36 = (x_751 / x_752);
  let x_754 : vec3<f32> = u_xlat0;
  let x_755 : f32 = u_xlat36;
  let x_758 : vec3<f32> = u_xlat6;
  u_xlat20 = ((x_754 * vec3<f32>(x_755, x_755, x_755)) + x_758);
  let x_760 : vec4<f32> = u_xlat7;
  let x_762 : vec3<f32> = u_xlat20;
  let x_763 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) * x_762);
  let x_764 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_767 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_769 : f32 = x_109.unity_LightData.y;
  u_xlat36 = min(x_767, x_769);
  let x_773 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_773));
  let x_776 : f32 = u_xlat41;
  let x_779 : f32 = x_485.x_AdditionalShadowFadeParams.x;
  let x_782 : f32 = x_485.x_AdditionalShadowFadeParams.y;
  u_xlat38 = ((x_776 * x_779) + x_782);
  let x_784 : f32 = u_xlat38;
  u_xlat38 = clamp(x_784, 0.0f, 1.0f);
  u_xlat20.x = 0.0f;
  u_xlat20.y = 0.0f;
  u_xlat20.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_796 : u32 = u_xlatu_loop_1;
    let x_797 : u32 = u_xlatu36;
    if ((x_796 < x_797)) {
    } else {
      break;
    }
    let x_800 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_800 >> 2u);
    let x_804 : u32 = u_xlatu_loop_1;
    u_xlati41 = bitcast<i32>((x_804 & 3u));
    let x_807 : u32 = u_xlatu40;
    let x_810 : vec4<f32> = x_109.unity_LightIndices[bitcast<i32>(x_807)];
    let x_820 : i32 = u_xlati41;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_825 : vec4<u32> = indexable[x_820];
    u_xlat40 = dot(x_810, bitcast<vec4<f32>>(x_825));
    let x_829 : f32 = u_xlat40;
    u_xlati40 = i32(x_829);
    let x_832 : vec3<f32> = vs_INTERP7;
    let x_843 : i32 = u_xlati40;
    let x_845 : vec4<f32> = x_842.x_AdditionalLightsPosition[x_843];
    let x_848 : i32 = u_xlati40;
    let x_850 : vec4<f32> = x_842.x_AdditionalLightsPosition[x_848];
    u_xlat9 = ((-(x_832) * vec3<f32>(x_845.w, x_845.w, x_845.w)) + vec3<f32>(x_850.x, x_850.y, x_850.z));
    let x_853 : vec3<f32> = u_xlat9;
    let x_854 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_853, x_854);
    let x_856 : f32 = u_xlat41;
    u_xlat41 = max(x_856, 0.00006103515625f);
    let x_859 : f32 = u_xlat41;
    u_xlat42 = inverseSqrt(x_859);
    let x_862 : f32 = u_xlat42;
    let x_864 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_862, x_862, x_862) * x_864);
    let x_866 : f32 = u_xlat41;
    u_xlat43 = (1.0f / x_866);
    let x_868 : f32 = u_xlat41;
    let x_869 : i32 = u_xlati40;
    let x_871 : f32 = x_842.x_AdditionalLightsAttenuation[x_869].x;
    u_xlat41 = (x_868 * x_871);
    let x_873 : f32 = u_xlat41;
    let x_875 : f32 = u_xlat41;
    u_xlat41 = ((-(x_873) * x_875) + 1.0f);
    let x_878 : f32 = u_xlat41;
    u_xlat41 = max(x_878, 0.0f);
    let x_880 : f32 = u_xlat41;
    let x_881 : f32 = u_xlat41;
    u_xlat41 = (x_880 * x_881);
    let x_883 : f32 = u_xlat41;
    let x_884 : f32 = u_xlat43;
    u_xlat41 = (x_883 * x_884);
    let x_886 : i32 = u_xlati40;
    let x_888 : vec4<f32> = x_842.x_AdditionalLightsSpotDir[x_886];
    let x_890 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_888.x, x_888.y, x_888.z), x_890);
    let x_892 : f32 = u_xlat43;
    let x_893 : i32 = u_xlati40;
    let x_895 : f32 = x_842.x_AdditionalLightsAttenuation[x_893].z;
    let x_897 : i32 = u_xlati40;
    let x_899 : f32 = x_842.x_AdditionalLightsAttenuation[x_897].w;
    u_xlat43 = ((x_892 * x_895) + x_899);
    let x_901 : f32 = u_xlat43;
    u_xlat43 = clamp(x_901, 0.0f, 1.0f);
    let x_903 : f32 = u_xlat43;
    let x_904 : f32 = u_xlat43;
    u_xlat43 = (x_903 * x_904);
    let x_906 : f32 = u_xlat41;
    let x_907 : f32 = u_xlat43;
    u_xlat41 = (x_906 * x_907);
    let x_911 : i32 = u_xlati40;
    let x_913 : f32 = x_485.x_AdditionalShadowParams[x_911].w;
    u_xlati43 = i32(x_913);
    let x_916 : i32 = u_xlati43;
    u_xlatb45 = (x_916 >= 0i);
    let x_918 : bool = u_xlatb45;
    if (x_918) {
      let x_922 : i32 = u_xlati40;
      let x_924 : f32 = x_485.x_AdditionalShadowParams[x_922].z;
      u_xlatb45 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_924, x_924, x_924, x_924))));
      let x_929 : bool = u_xlatb45;
      if (x_929) {
        let x_934 : vec3<f32> = u_xlat10;
        let x_937 : vec3<f32> = u_xlat10;
        let x_940 : vec4<bool> = (abs(vec4<f32>(x_934.z, x_934.z, x_934.y, x_934.z)) >= abs(vec4<f32>(x_937.x, x_937.y, x_937.x, x_937.x)));
        let x_942 : vec3<bool> = vec3<bool>(x_940.x, x_940.y, x_940.z);
        let x_943 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_942.x, x_942.y, x_942.z, x_943.w);
        let x_946 : bool = u_xlatb11.y;
        let x_948 : bool = u_xlatb11.x;
        u_xlatb45 = (x_946 & x_948);
        let x_950 : vec3<f32> = u_xlat10;
        let x_953 : vec4<bool> = (-(vec4<f32>(x_950.z, x_950.y, x_950.z, x_950.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_954 : vec3<bool> = vec3<bool>(x_953.x, x_953.y, x_953.w);
        let x_955 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_954.x, x_954.y, x_955.z, x_954.z);
        let x_959 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_959);
        let x_964 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_964);
        let x_970 : bool = u_xlatb11.w;
        u_xlat46 = select(0.0f, 1.0f, x_970);
        let x_973 : bool = u_xlatb11.z;
        if (x_973) {
          let x_978 : f32 = u_xlat11.y;
          x_974 = x_978;
        } else {
          let x_980 : f32 = u_xlat46;
          x_974 = x_980;
        }
        let x_981 : f32 = x_974;
        u_xlat46 = x_981;
        let x_983 : bool = u_xlatb45;
        if (x_983) {
          let x_988 : f32 = u_xlat11.x;
          x_984 = x_988;
        } else {
          let x_990 : f32 = u_xlat46;
          x_984 = x_990;
        }
        let x_991 : f32 = x_984;
        u_xlat45 = x_991;
        let x_992 : i32 = u_xlati40;
        let x_994 : f32 = x_485.x_AdditionalShadowParams[x_992].w;
        u_xlat46 = trunc(x_994);
        let x_996 : f32 = u_xlat45;
        let x_997 : f32 = u_xlat46;
        u_xlat45 = (x_996 + x_997);
        let x_999 : f32 = u_xlat45;
        u_xlati43 = i32(x_999);
      }
      let x_1001 : i32 = u_xlati43;
      u_xlati43 = (x_1001 << bitcast<u32>(2i));
      let x_1003 : vec3<f32> = vs_INTERP7;
      let x_1006 : i32 = u_xlati43;
      let x_1009 : i32 = u_xlati43;
      let x_1013 : vec4<f32> = x_485.x_AdditionalLightsWorldToShadow[((x_1006 + 1i) / 4i)][((x_1009 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1003.y, x_1003.y, x_1003.y, x_1003.y) * x_1013);
      let x_1015 : i32 = u_xlati43;
      let x_1017 : i32 = u_xlati43;
      let x_1020 : vec4<f32> = x_485.x_AdditionalLightsWorldToShadow[(x_1015 / 4i)][(x_1017 % 4i)];
      let x_1021 : vec3<f32> = vs_INTERP7;
      let x_1024 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1020 * vec4<f32>(x_1021.x, x_1021.x, x_1021.x, x_1021.x)) + x_1024);
      let x_1026 : i32 = u_xlati43;
      let x_1029 : i32 = u_xlati43;
      let x_1033 : vec4<f32> = x_485.x_AdditionalLightsWorldToShadow[((x_1026 + 2i) / 4i)][((x_1029 + 2i) % 4i)];
      let x_1034 : vec3<f32> = vs_INTERP7;
      let x_1037 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1033 * vec4<f32>(x_1034.z, x_1034.z, x_1034.z, x_1034.z)) + x_1037);
      let x_1039 : vec4<f32> = u_xlat11;
      let x_1040 : i32 = u_xlati43;
      let x_1043 : i32 = u_xlati43;
      let x_1047 : vec4<f32> = x_485.x_AdditionalLightsWorldToShadow[((x_1040 + 3i) / 4i)][((x_1043 + 3i) % 4i)];
      u_xlat11 = (x_1039 + x_1047);
      let x_1049 : vec4<f32> = u_xlat11;
      let x_1051 : vec4<f32> = u_xlat11;
      let x_1053 : vec3<f32> = (vec3<f32>(x_1049.x, x_1049.y, x_1049.z) / vec3<f32>(x_1051.w, x_1051.w, x_1051.w));
      let x_1054 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
      let x_1057 : vec4<f32> = u_xlat11;
      let x_1058 : vec2<f32> = vec2<f32>(x_1057.x, x_1057.y);
      let x_1060 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1058.x, x_1058.y, x_1060);
      let x_1068 : vec3<f32> = txVec1;
      let x_1070 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1068.xy, x_1068.z);
      u_xlat43 = x_1070;
      let x_1071 : i32 = u_xlati40;
      let x_1073 : f32 = x_485.x_AdditionalShadowParams[x_1071].x;
      u_xlat45 = (1.0f + -(x_1073));
      let x_1076 : f32 = u_xlat43;
      let x_1077 : i32 = u_xlati40;
      let x_1079 : f32 = x_485.x_AdditionalShadowParams[x_1077].x;
      let x_1081 : f32 = u_xlat45;
      u_xlat43 = ((x_1076 * x_1079) + x_1081);
      let x_1084 : f32 = u_xlat11.z;
      u_xlatb45 = (0.0f >= x_1084);
      let x_1088 : f32 = u_xlat11.z;
      u_xlatb46 = (x_1088 >= 1.0f);
      let x_1090 : bool = u_xlatb45;
      let x_1091 : bool = u_xlatb46;
      u_xlatb45 = (x_1090 | x_1091);
      let x_1093 : bool = u_xlatb45;
      let x_1094 : f32 = u_xlat43;
      u_xlat43 = select(x_1094, 1.0f, x_1093);
    } else {
      u_xlat43 = 1.0f;
    }
    let x_1097 : f32 = u_xlat43;
    u_xlat45 = (-(x_1097) + 1.0f);
    let x_1100 : f32 = u_xlat38;
    let x_1101 : f32 = u_xlat45;
    let x_1103 : f32 = u_xlat43;
    u_xlat43 = ((x_1100 * x_1101) + x_1103);
    let x_1105 : f32 = u_xlat41;
    let x_1106 : f32 = u_xlat43;
    u_xlat41 = (x_1105 * x_1106);
    let x_1108 : vec4<f32> = u_xlat4;
    let x_1110 : vec3<f32> = u_xlat10;
    u_xlat43 = dot(vec3<f32>(x_1108.x, x_1108.y, x_1108.z), x_1110);
    let x_1112 : f32 = u_xlat43;
    u_xlat43 = clamp(x_1112, 0.0f, 1.0f);
    let x_1114 : f32 = u_xlat41;
    let x_1115 : f32 = u_xlat43;
    u_xlat41 = (x_1114 * x_1115);
    let x_1117 : f32 = u_xlat41;
    let x_1119 : i32 = u_xlati40;
    let x_1121 : vec4<f32> = x_842.x_AdditionalLightsColor[x_1119];
    let x_1123 : vec3<f32> = (vec3<f32>(x_1117, x_1117, x_1117) * vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
    let x_1124 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
    let x_1126 : vec3<f32> = u_xlat9;
    let x_1127 : f32 = u_xlat42;
    let x_1130 : vec3<f32> = u_xlat5;
    u_xlat9 = ((x_1126 * vec3<f32>(x_1127, x_1127, x_1127)) + x_1130);
    let x_1132 : vec3<f32> = u_xlat9;
    let x_1133 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(x_1132, x_1133);
    let x_1135 : f32 = u_xlat40;
    u_xlat40 = max(x_1135, 1.17549435e-38f);
    let x_1137 : f32 = u_xlat40;
    u_xlat40 = inverseSqrt(x_1137);
    let x_1139 : f32 = u_xlat40;
    let x_1141 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1139, x_1139, x_1139) * x_1141);
    let x_1143 : vec4<f32> = u_xlat4;
    let x_1145 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_1143.x, x_1143.y, x_1143.z), x_1145);
    let x_1147 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1147, 0.0f, 1.0f);
    let x_1149 : vec3<f32> = u_xlat10;
    let x_1150 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_1149, x_1150);
    let x_1152 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1152, 0.0f, 1.0f);
    let x_1154 : f32 = u_xlat40;
    let x_1155 : f32 = u_xlat40;
    u_xlat40 = (x_1154 * x_1155);
    let x_1157 : f32 = u_xlat40;
    let x_1159 : f32 = u_xlat8.x;
    u_xlat40 = ((x_1157 * x_1159) + 1.00001001358032226562f);
    let x_1162 : f32 = u_xlat41;
    let x_1163 : f32 = u_xlat41;
    u_xlat41 = (x_1162 * x_1163);
    let x_1165 : f32 = u_xlat40;
    let x_1166 : f32 = u_xlat40;
    u_xlat40 = (x_1165 * x_1166);
    let x_1168 : f32 = u_xlat41;
    u_xlat41 = max(x_1168, 0.10000000149011611938f);
    let x_1170 : f32 = u_xlat40;
    let x_1171 : f32 = u_xlat41;
    u_xlat40 = (x_1170 * x_1171);
    let x_1173 : f32 = u_xlat39;
    let x_1174 : f32 = u_xlat40;
    u_xlat40 = (x_1173 * x_1174);
    let x_1176 : f32 = u_xlat15;
    let x_1177 : f32 = u_xlat40;
    u_xlat40 = (x_1176 / x_1177);
    let x_1179 : vec3<f32> = u_xlat0;
    let x_1180 : f32 = u_xlat40;
    let x_1183 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1179 * vec3<f32>(x_1180, x_1180, x_1180)) + x_1183);
    let x_1185 : vec3<f32> = u_xlat9;
    let x_1186 : vec4<f32> = u_xlat11;
    let x_1189 : vec3<f32> = u_xlat20;
    u_xlat20 = ((x_1185 * vec3<f32>(x_1186.x, x_1186.y, x_1186.z)) + x_1189);

    continuing {
      let x_1191 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1191 + bitcast<u32>(1i));
    }
  }
  let x_1193 : vec4<f32> = u_xlat1;
  let x_1195 : f32 = u_xlat27;
  let x_1198 : vec4<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1193.x, x_1193.y, x_1193.w) * vec3<f32>(x_1195, x_1195, x_1195)) + vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : vec3<f32> = u_xlat20;
  let x_1202 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1201 + x_1202);
  let x_1206 : vec3<f32> = u_xlat2;
  let x_1207 : f32 = u_xlat25;
  let x_1210 : vec3<f32> = u_xlat0;
  let x_1211 : vec3<f32> = ((x_1206 * vec3<f32>(x_1207, x_1207, x_1207)) + x_1210);
  let x_1212 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1211.x, x_1211.y, x_1211.z, x_1212.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


