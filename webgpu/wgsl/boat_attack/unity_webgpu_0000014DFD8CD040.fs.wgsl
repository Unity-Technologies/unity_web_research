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
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var x_TerrainHolesTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_TerrainHolesTexture : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb0 : bool;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat1 : f32;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> u_xlatb13 : bool;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> u_xlat25 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat38 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat36 : f32;

var<private> vs_TEXCOORD8 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_312 : LightShadows;

var<private> u_xlatb17 : bool;

var<private> u_xlatb29 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_443 : UnityPerDraw;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat19 : vec3<f32>;

var<private> u_xlatu36 : u32;

var<private> u_xlatu17 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati17 : i32;

var<private> u_xlat8 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_693 : AdditionalLights;

var<private> u_xlat42 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb10 : vec3<bool>;

var<private> u_xlatb11 : vec3<bool>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlat10 : vec4<f32>;

@group(0) @binding(7) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu38 : u32;

fn main_1() {
  var x_116 : f32;
  var x_129 : f32;
  var x_141 : f32;
  var txVec0 : vec3<f32>;
  var x_340 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_830 : f32;
  var x_841 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(x_TerrainHolesTexture, sampler_TerrainHolesTexture, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0.x = x_37.x;
  let x_45 : f32 = u_xlat0.x;
  u_xlatb0 = (x_45 == 0.0f);
  let x_48 : bool = u_xlatb0;
  if (((select(0i, 1i, x_48) * -1i) != 0i)) {
    discard;
  }
  let x_62 : vec4<f32> = vs_TEXCOORD0;
  let x_65 : f32 = x_29.x_GlobalMipBias.x;
  let x_66 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_62.x, x_62.y), x_65);
  u_xlat0 = x_66;
  let x_73 : vec4<f32> = vs_TEXCOORD0;
  let x_76 : f32 = x_29.x_GlobalMipBias.x;
  let x_77 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_73.x, x_73.y), x_76);
  u_xlat1 = x_77.x;
  let x_83 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb13 = (x_83 == 0.0f);
  let x_88 : vec3<f32> = vs_TEXCOORD7;
  let x_93 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_94 : vec3<f32> = (-(x_88) + x_93);
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_98 : vec4<f32> = u_xlat2;
  let x_100 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_103);
  let x_105 : f32 = u_xlat25;
  let x_107 : vec4<f32> = u_xlat2;
  let x_109 : vec3<f32> = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_114 : bool = u_xlatb13;
  if (x_114) {
    let x_120 : f32 = u_xlat2.x;
    x_116 = x_120;
  } else {
    let x_125 : f32 = x_29.unity_MatrixV[0i].z;
    x_116 = x_125;
  }
  let x_126 : f32 = x_116;
  u_xlat3.x = x_126;
  let x_128 : bool = u_xlatb13;
  if (x_128) {
    let x_134 : f32 = u_xlat2.y;
    x_129 = x_134;
  } else {
    let x_137 : f32 = x_29.unity_MatrixV[1i].z;
    x_129 = x_137;
  }
  let x_138 : f32 = x_129;
  u_xlat3.y = x_138;
  let x_140 : bool = u_xlatb13;
  if (x_140) {
    let x_145 : f32 = u_xlat2.z;
    x_141 = x_145;
  } else {
    let x_149 : f32 = x_29.unity_MatrixV[2i].z;
    x_141 = x_149;
  }
  let x_150 : f32 = x_141;
  u_xlat3.z = x_150;
  let x_154 : vec3<f32> = vs_TEXCOORD3;
  let x_155 : vec3<f32> = vs_TEXCOORD3;
  u_xlat13.x = dot(x_154, x_155);
  let x_159 : f32 = u_xlat13.x;
  u_xlat13.x = inverseSqrt(x_159);
  let x_162 : vec3<f32> = u_xlat13;
  let x_164 : vec3<f32> = vs_TEXCOORD3;
  u_xlat13 = (vec3<f32>(x_162.x, x_162.x, x_162.x) * x_164);
  let x_171 : vec4<f32> = vs_TEXCOORD0;
  let x_174 : f32 = x_29.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_171.z, x_171.w), x_174);
  u_xlat2 = x_175;
  let x_181 : vec4<f32> = vs_TEXCOORD0;
  let x_184 : f32 = x_29.x_GlobalMipBias.x;
  let x_185 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_181.z, x_181.w), x_184);
  u_xlat4 = vec3<f32>(x_185.x, x_185.y, x_185.z);
  let x_187 : vec4<f32> = u_xlat2;
  let x_191 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec3<f32> = u_xlat13;
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(x_194, vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_200 : f32 = u_xlat2.x;
  u_xlat2.x = (x_200 + 0.5f);
  let x_204 : vec4<f32> = u_xlat2;
  let x_206 : vec3<f32> = u_xlat4;
  let x_207 : vec3<f32> = (vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206);
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_212 : f32 = u_xlat2.w;
  u_xlat38 = max(x_212, 0.00009999999747378752f);
  let x_215 : vec4<f32> = u_xlat2;
  let x_217 : f32 = u_xlat38;
  let x_219 : vec3<f32> = (vec3<f32>(x_215.x, x_215.y, x_215.z) / vec3<f32>(x_217, x_217, x_217));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : f32 = u_xlat1;
  u_xlat38 = ((-(x_222) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_228 : f32 = u_xlat38;
  u_xlat39 = (-(x_228) + 1.0f);
  let x_232 : vec4<f32> = u_xlat0;
  let x_234 : f32 = u_xlat38;
  u_xlat4 = (vec3<f32>(x_232.x, x_232.y, x_232.z) * vec3<f32>(x_234, x_234, x_234));
  let x_237 : vec4<f32> = u_xlat0;
  let x_241 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_242 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : f32 = u_xlat1;
  let x_246 : vec4<f32> = u_xlat0;
  let x_251 : vec3<f32> = ((vec3<f32>(x_244, x_244, x_244) * vec3<f32>(x_246.x, x_246.y, x_246.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_255 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_255) + 1.0f);
  let x_258 : f32 = u_xlat1;
  let x_259 : f32 = u_xlat1;
  u_xlat38 = (x_258 * x_259);
  let x_261 : f32 = u_xlat38;
  u_xlat38 = max(x_261, 0.0078125f);
  let x_265 : f32 = u_xlat38;
  let x_266 : f32 = u_xlat38;
  u_xlat40 = (x_265 * x_266);
  let x_270 : f32 = u_xlat0.w;
  let x_271 : f32 = u_xlat39;
  u_xlat36 = (x_270 + x_271);
  let x_273 : f32 = u_xlat36;
  u_xlat36 = clamp(x_273, 0.0f, 1.0f);
  let x_275 : f32 = u_xlat38;
  u_xlat39 = ((x_275 * 4.0f) + 2.0f);
  let x_283 : vec4<f32> = vs_TEXCOORD8;
  let x_284 : vec2<f32> = vec2<f32>(x_283.x, x_283.y);
  let x_287 : f32 = vs_TEXCOORD8.z;
  txVec0 = vec3<f32>(x_284.x, x_284.y, x_287);
  let x_300 : vec3<f32> = txVec0;
  let x_302 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_300.xy, x_300.z);
  u_xlat5.x = x_302;
  let x_315 : f32 = x_312.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_315) + 1.0f);
  let x_320 : f32 = u_xlat5.x;
  let x_322 : f32 = x_312.x_MainLightShadowParams.x;
  let x_325 : f32 = u_xlat17.x;
  u_xlat5.x = ((x_320 * x_322) + x_325);
  let x_330 : f32 = vs_TEXCOORD8.z;
  u_xlatb17 = (0.0f >= x_330);
  let x_334 : f32 = vs_TEXCOORD8.z;
  u_xlatb29 = (x_334 >= 1.0f);
  let x_336 : bool = u_xlatb29;
  let x_337 : bool = u_xlatb17;
  u_xlatb17 = (x_336 | x_337);
  let x_339 : bool = u_xlatb17;
  if (x_339) {
    x_340 = 1.0f;
  } else {
    let x_345 : f32 = u_xlat5.x;
    x_340 = x_345;
  }
  let x_346 : f32 = x_340;
  u_xlat5.x = x_346;
  let x_348 : vec3<f32> = vs_TEXCOORD7;
  let x_350 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat17 = (x_348 + -(x_350));
  let x_353 : vec3<f32> = u_xlat17;
  let x_354 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_353, x_354);
  let x_359 : f32 = u_xlat17.x;
  let x_361 : f32 = x_312.x_MainLightShadowParams.z;
  let x_364 : f32 = x_312.x_MainLightShadowParams.w;
  u_xlat29 = ((x_359 * x_361) + x_364);
  let x_366 : f32 = u_xlat29;
  u_xlat29 = clamp(x_366, 0.0f, 1.0f);
  let x_370 : f32 = u_xlat5.x;
  u_xlat41 = (-(x_370) + 1.0f);
  let x_373 : f32 = u_xlat29;
  let x_374 : f32 = u_xlat41;
  let x_377 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_373 * x_374) + x_377);
  let x_380 : vec3<f32> = u_xlat3;
  let x_382 : vec3<f32> = u_xlat13;
  u_xlat29 = dot(-(x_380), x_382);
  let x_384 : f32 = u_xlat29;
  let x_385 : f32 = u_xlat29;
  u_xlat29 = (x_384 + x_385);
  let x_388 : vec3<f32> = u_xlat13;
  let x_389 : f32 = u_xlat29;
  let x_393 : vec3<f32> = u_xlat3;
  let x_395 : vec3<f32> = ((x_388 * -(vec3<f32>(x_389, x_389, x_389))) + -(x_393));
  let x_396 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec3<f32> = u_xlat13;
  let x_399 : vec3<f32> = u_xlat3;
  u_xlat29 = dot(x_398, x_399);
  let x_401 : f32 = u_xlat29;
  u_xlat29 = clamp(x_401, 0.0f, 1.0f);
  let x_403 : f32 = u_xlat29;
  u_xlat29 = (-(x_403) + 1.0f);
  let x_406 : f32 = u_xlat29;
  let x_407 : f32 = u_xlat29;
  u_xlat29 = (x_406 * x_407);
  let x_409 : f32 = u_xlat29;
  let x_410 : f32 = u_xlat29;
  u_xlat29 = (x_409 * x_410);
  let x_412 : f32 = u_xlat1;
  u_xlat41 = ((-(x_412) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_418 : f32 = u_xlat1;
  let x_419 : f32 = u_xlat41;
  u_xlat1 = (x_418 * x_419);
  let x_421 : f32 = u_xlat1;
  u_xlat1 = (x_421 * 6.0f);
  let x_432 : vec4<f32> = u_xlat6;
  let x_434 : f32 = u_xlat1;
  let x_435 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_432.x, x_432.y, x_432.z), x_434);
  u_xlat6 = x_435;
  let x_437 : f32 = u_xlat6.w;
  u_xlat1 = (x_437 + -1.0f);
  let x_445 : f32 = x_443.unity_SpecCube0_HDR.w;
  let x_446 : f32 = u_xlat1;
  u_xlat1 = ((x_445 * x_446) + 1.0f);
  let x_449 : f32 = u_xlat1;
  u_xlat1 = max(x_449, 0.0f);
  let x_451 : f32 = u_xlat1;
  u_xlat1 = log2(x_451);
  let x_453 : f32 = u_xlat1;
  let x_455 : f32 = x_443.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_453 * x_455);
  let x_457 : f32 = u_xlat1;
  u_xlat1 = exp2(x_457);
  let x_459 : f32 = u_xlat1;
  let x_461 : f32 = x_443.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_459 * x_461);
  let x_463 : vec4<f32> = u_xlat6;
  let x_465 : f32 = u_xlat1;
  let x_467 : vec3<f32> = (vec3<f32>(x_463.x, x_463.y, x_463.z) * vec3<f32>(x_465, x_465, x_465));
  let x_468 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_472 : f32 = u_xlat38;
  let x_474 : f32 = u_xlat38;
  u_xlat7 = ((vec2<f32>(x_472, x_472) * vec2<f32>(x_474, x_474)) + vec2<f32>(-1.0f, 1.0f));
  let x_480 : f32 = u_xlat7.y;
  u_xlat1 = (1.0f / x_480);
  let x_483 : vec4<f32> = u_xlat0;
  let x_486 : f32 = u_xlat36;
  u_xlat19 = (-(vec3<f32>(x_483.x, x_483.y, x_483.z)) + vec3<f32>(x_486, x_486, x_486));
  let x_489 : f32 = u_xlat29;
  let x_491 : vec3<f32> = u_xlat19;
  let x_493 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_489, x_489, x_489) * x_491) + vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : f32 = u_xlat1;
  let x_498 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_496, x_496, x_496) * x_498);
  let x_500 : vec4<f32> = u_xlat6;
  let x_502 : vec3<f32> = u_xlat19;
  let x_503 : vec3<f32> = (vec3<f32>(x_500.x, x_500.y, x_500.z) * x_502);
  let x_504 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat2;
  let x_508 : vec3<f32> = u_xlat4;
  let x_510 : vec4<f32> = u_xlat6;
  let x_512 : vec3<f32> = ((vec3<f32>(x_506.x, x_506.y, x_506.z) * x_508) + vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_516 : f32 = u_xlat5.x;
  let x_518 : f32 = x_443.unity_LightData.z;
  u_xlat36 = (x_516 * x_518);
  let x_520 : vec3<f32> = u_xlat13;
  let x_523 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat1 = dot(x_520, vec3<f32>(x_523.x, x_523.y, x_523.z));
  let x_526 : f32 = u_xlat1;
  u_xlat1 = clamp(x_526, 0.0f, 1.0f);
  let x_528 : f32 = u_xlat36;
  let x_529 : f32 = u_xlat1;
  u_xlat36 = (x_528 * x_529);
  let x_531 : f32 = u_xlat36;
  let x_534 : vec4<f32> = x_29.x_MainLightColor;
  let x_536 : vec3<f32> = (vec3<f32>(x_531, x_531, x_531) * vec3<f32>(x_534.x, x_534.y, x_534.z));
  let x_537 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_536.x, x_537.y, x_536.y, x_536.z);
  let x_539 : vec3<f32> = u_xlat3;
  let x_541 : vec4<f32> = x_29.x_MainLightPosition;
  let x_543 : vec3<f32> = (x_539 + vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat6;
  let x_548 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(vec3<f32>(x_546.x, x_546.y, x_546.z), vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_551 : f32 = u_xlat36;
  u_xlat36 = max(x_551, 1.17549435e-38f);
  let x_554 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_554);
  let x_556 : f32 = u_xlat36;
  let x_558 : vec4<f32> = u_xlat6;
  let x_560 : vec3<f32> = (vec3<f32>(x_556, x_556, x_556) * vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_563 : vec3<f32> = u_xlat13;
  let x_564 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_563, vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_567 : f32 = u_xlat36;
  u_xlat36 = clamp(x_567, 0.0f, 1.0f);
  let x_570 : vec4<f32> = x_29.x_MainLightPosition;
  let x_572 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_570.x, x_570.y, x_570.z), vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : f32 = u_xlat1;
  u_xlat1 = clamp(x_575, 0.0f, 1.0f);
  let x_577 : f32 = u_xlat36;
  let x_578 : f32 = u_xlat36;
  u_xlat36 = (x_577 * x_578);
  let x_580 : f32 = u_xlat36;
  let x_582 : f32 = u_xlat7.x;
  u_xlat36 = ((x_580 * x_582) + 1.00001001358032226562f);
  let x_586 : f32 = u_xlat1;
  let x_587 : f32 = u_xlat1;
  u_xlat1 = (x_586 * x_587);
  let x_589 : f32 = u_xlat36;
  let x_590 : f32 = u_xlat36;
  u_xlat36 = (x_589 * x_590);
  let x_592 : f32 = u_xlat1;
  u_xlat1 = max(x_592, 0.10000000149011611938f);
  let x_595 : f32 = u_xlat36;
  let x_596 : f32 = u_xlat1;
  u_xlat36 = (x_595 * x_596);
  let x_598 : f32 = u_xlat39;
  let x_599 : f32 = u_xlat36;
  u_xlat36 = (x_598 * x_599);
  let x_601 : f32 = u_xlat40;
  let x_602 : f32 = u_xlat36;
  u_xlat36 = (x_601 / x_602);
  let x_604 : vec4<f32> = u_xlat0;
  let x_606 : f32 = u_xlat36;
  let x_609 : vec3<f32> = u_xlat4;
  let x_610 : vec3<f32> = ((vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(x_606, x_606, x_606)) + x_609);
  let x_611 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_615 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_617 : f32 = x_443.unity_LightData.y;
  u_xlat36 = min(x_615, x_617);
  let x_621 : f32 = u_xlat36;
  u_xlatu36 = bitcast<u32>(i32(x_621));
  let x_625 : f32 = u_xlat17.x;
  let x_628 : f32 = x_312.x_AdditionalShadowFadeParams.x;
  let x_631 : f32 = x_312.x_AdditionalShadowFadeParams.y;
  u_xlat1 = ((x_625 * x_628) + x_631);
  let x_633 : f32 = u_xlat1;
  u_xlat1 = clamp(x_633, 0.0f, 1.0f);
  u_xlat19.x = 0.0f;
  u_xlat19.y = 0.0f;
  u_xlat19.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_645 : u32 = u_xlatu_loop_1;
    let x_646 : u32 = u_xlatu36;
    if ((x_645 < x_646)) {
    } else {
      break;
    }
    let x_649 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_649 >> 2u);
    let x_653 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_653 & 3u));
    let x_656 : u32 = u_xlatu17;
    let x_659 : vec4<f32> = x_443.unity_LightIndices[bitcast<i32>(x_656)];
    let x_669 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_674 : vec4<u32> = indexable[x_669];
    u_xlat17.x = dot(x_659, bitcast<vec4<f32>>(x_674));
    let x_680 : f32 = u_xlat17.x;
    u_xlati17 = i32(x_680);
    let x_683 : vec3<f32> = vs_TEXCOORD7;
    let x_694 : i32 = u_xlati17;
    let x_696 : vec4<f32> = x_693.x_AdditionalLightsPosition[x_694];
    let x_699 : i32 = u_xlati17;
    let x_701 : vec4<f32> = x_693.x_AdditionalLightsPosition[x_699];
    u_xlat8 = ((-(x_683) * vec3<f32>(x_696.w, x_696.w, x_696.w)) + vec3<f32>(x_701.x, x_701.y, x_701.z));
    let x_705 : vec3<f32> = u_xlat8;
    let x_706 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_705, x_706);
    let x_708 : f32 = u_xlat42;
    u_xlat42 = max(x_708, 0.00006103515625f);
    let x_712 : f32 = u_xlat42;
    u_xlat44 = inverseSqrt(x_712);
    let x_715 : f32 = u_xlat44;
    let x_717 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_715, x_715, x_715) * x_717);
    let x_720 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_720);
    let x_722 : f32 = u_xlat42;
    let x_723 : i32 = u_xlati17;
    let x_725 : f32 = x_693.x_AdditionalLightsAttenuation[x_723].x;
    u_xlat42 = (x_722 * x_725);
    let x_727 : f32 = u_xlat42;
    let x_729 : f32 = u_xlat42;
    u_xlat42 = ((-(x_727) * x_729) + 1.0f);
    let x_732 : f32 = u_xlat42;
    u_xlat42 = max(x_732, 0.0f);
    let x_734 : f32 = u_xlat42;
    let x_735 : f32 = u_xlat42;
    u_xlat42 = (x_734 * x_735);
    let x_737 : f32 = u_xlat42;
    let x_738 : f32 = u_xlat45;
    u_xlat42 = (x_737 * x_738);
    let x_740 : i32 = u_xlati17;
    let x_742 : vec4<f32> = x_693.x_AdditionalLightsSpotDir[x_740];
    let x_744 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_742.x, x_742.y, x_742.z), x_744);
    let x_746 : f32 = u_xlat45;
    let x_747 : i32 = u_xlati17;
    let x_749 : f32 = x_693.x_AdditionalLightsAttenuation[x_747].z;
    let x_751 : i32 = u_xlati17;
    let x_753 : f32 = x_693.x_AdditionalLightsAttenuation[x_751].w;
    u_xlat45 = ((x_746 * x_749) + x_753);
    let x_755 : f32 = u_xlat45;
    u_xlat45 = clamp(x_755, 0.0f, 1.0f);
    let x_757 : f32 = u_xlat45;
    let x_758 : f32 = u_xlat45;
    u_xlat45 = (x_757 * x_758);
    let x_760 : f32 = u_xlat42;
    let x_761 : f32 = u_xlat45;
    u_xlat42 = (x_760 * x_761);
    let x_765 : i32 = u_xlati17;
    let x_767 : f32 = x_312.x_AdditionalShadowParams[x_765].w;
    u_xlati45 = i32(x_767);
    let x_772 : i32 = u_xlati45;
    u_xlatb10.x = (x_772 >= 0i);
    let x_776 : bool = u_xlatb10.x;
    if (x_776) {
      let x_780 : i32 = u_xlati17;
      let x_782 : f32 = x_312.x_AdditionalShadowParams[x_780].z;
      u_xlatb10.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_782, x_782, x_782, x_782))));
      let x_789 : bool = u_xlatb10.x;
      if (x_789) {
        let x_792 : vec3<f32> = u_xlat9;
        let x_795 : vec3<f32> = u_xlat9;
        let x_798 : vec4<bool> = (abs(vec4<f32>(x_792.z, x_792.z, x_792.y, x_792.z)) >= abs(vec4<f32>(x_795.x, x_795.y, x_795.x, x_795.x)));
        u_xlatb10 = vec3<bool>(x_798.x, x_798.y, x_798.z);
        let x_801 : bool = u_xlatb10.y;
        let x_803 : bool = u_xlatb10.x;
        u_xlatb10.x = (x_801 & x_803);
        let x_807 : vec3<f32> = u_xlat9;
        let x_810 : vec4<bool> = (-(vec4<f32>(x_807.z, x_807.y, x_807.x, x_807.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb11 = vec3<bool>(x_810.x, x_810.y, x_810.z);
        let x_814 : bool = u_xlatb11.x;
        u_xlat22.x = select(4.0f, 5.0f, x_814);
        let x_819 : bool = u_xlatb11.y;
        u_xlat22.z = select(2.0f, 3.0f, x_819);
        let x_825 : bool = u_xlatb11.z;
        u_xlat11 = select(0.0f, 1.0f, x_825);
        let x_829 : bool = u_xlatb10.z;
        if (x_829) {
          let x_834 : f32 = u_xlat22.z;
          x_830 = x_834;
        } else {
          let x_836 : f32 = u_xlat11;
          x_830 = x_836;
        }
        let x_837 : f32 = x_830;
        u_xlat34 = x_837;
        let x_840 : bool = u_xlatb10.x;
        if (x_840) {
          let x_845 : f32 = u_xlat22.x;
          x_841 = x_845;
        } else {
          let x_847 : f32 = u_xlat34;
          x_841 = x_847;
        }
        let x_848 : f32 = x_841;
        u_xlat10.x = x_848;
        let x_850 : i32 = u_xlati17;
        let x_852 : f32 = x_312.x_AdditionalShadowParams[x_850].w;
        u_xlat22.x = trunc(x_852);
        let x_856 : f32 = u_xlat10.x;
        let x_858 : f32 = u_xlat22.x;
        u_xlat10.x = (x_856 + x_858);
        let x_862 : f32 = u_xlat10.x;
        u_xlati45 = i32(x_862);
      }
      let x_864 : i32 = u_xlati45;
      u_xlati45 = (x_864 << bitcast<u32>(2i));
      let x_866 : vec3<f32> = vs_TEXCOORD7;
      let x_869 : i32 = u_xlati45;
      let x_872 : i32 = u_xlati45;
      let x_876 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_869 + 1i) / 4i)][((x_872 + 1i) % 4i)];
      u_xlat10 = (vec4<f32>(x_866.y, x_866.y, x_866.y, x_866.y) * x_876);
      let x_878 : i32 = u_xlati45;
      let x_880 : i32 = u_xlati45;
      let x_883 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[(x_878 / 4i)][(x_880 % 4i)];
      let x_884 : vec3<f32> = vs_TEXCOORD7;
      let x_887 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_883 * vec4<f32>(x_884.x, x_884.x, x_884.x, x_884.x)) + x_887);
      let x_889 : i32 = u_xlati45;
      let x_892 : i32 = u_xlati45;
      let x_896 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_889 + 2i) / 4i)][((x_892 + 2i) % 4i)];
      let x_897 : vec3<f32> = vs_TEXCOORD7;
      let x_900 : vec4<f32> = u_xlat10;
      u_xlat10 = ((x_896 * vec4<f32>(x_897.z, x_897.z, x_897.z, x_897.z)) + x_900);
      let x_902 : vec4<f32> = u_xlat10;
      let x_903 : i32 = u_xlati45;
      let x_906 : i32 = u_xlati45;
      let x_910 : vec4<f32> = x_312.x_AdditionalLightsWorldToShadow[((x_903 + 3i) / 4i)][((x_906 + 3i) % 4i)];
      u_xlat10 = (x_902 + x_910);
      let x_912 : vec4<f32> = u_xlat10;
      let x_914 : vec4<f32> = u_xlat10;
      let x_916 : vec3<f32> = (vec3<f32>(x_912.x, x_912.y, x_912.z) / vec3<f32>(x_914.w, x_914.w, x_914.w));
      let x_917 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
      let x_920 : vec4<f32> = u_xlat10;
      let x_921 : vec2<f32> = vec2<f32>(x_920.x, x_920.y);
      let x_923 : f32 = u_xlat10.z;
      txVec1 = vec3<f32>(x_921.x, x_921.y, x_923);
      let x_931 : vec3<f32> = txVec1;
      let x_933 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_931.xy, x_931.z);
      u_xlat45 = x_933;
      let x_934 : i32 = u_xlati17;
      let x_936 : f32 = x_312.x_AdditionalShadowParams[x_934].x;
      u_xlat10.x = (1.0f + -(x_936));
      let x_940 : f32 = u_xlat45;
      let x_941 : i32 = u_xlati17;
      let x_943 : f32 = x_312.x_AdditionalShadowParams[x_941].x;
      let x_946 : f32 = u_xlat10.x;
      u_xlat45 = ((x_940 * x_943) + x_946);
      let x_949 : f32 = u_xlat10.z;
      u_xlatb10.x = (0.0f >= x_949);
      let x_954 : f32 = u_xlat10.z;
      u_xlatb22 = (x_954 >= 1.0f);
      let x_956 : bool = u_xlatb22;
      let x_958 : bool = u_xlatb10.x;
      u_xlatb10.x = (x_956 | x_958);
      let x_962 : bool = u_xlatb10.x;
      let x_963 : f32 = u_xlat45;
      u_xlat45 = select(x_963, 1.0f, x_962);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_966 : f32 = u_xlat45;
    u_xlat10.x = (-(x_966) + 1.0f);
    let x_970 : f32 = u_xlat1;
    let x_972 : f32 = u_xlat10.x;
    let x_974 : f32 = u_xlat45;
    u_xlat45 = ((x_970 * x_972) + x_974);
    let x_976 : f32 = u_xlat42;
    let x_977 : f32 = u_xlat45;
    u_xlat42 = (x_976 * x_977);
    let x_979 : vec3<f32> = u_xlat13;
    let x_980 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_979, x_980);
    let x_982 : f32 = u_xlat45;
    u_xlat45 = clamp(x_982, 0.0f, 1.0f);
    let x_984 : f32 = u_xlat42;
    let x_985 : f32 = u_xlat45;
    u_xlat42 = (x_984 * x_985);
    let x_987 : f32 = u_xlat42;
    let x_989 : i32 = u_xlati17;
    let x_991 : vec4<f32> = x_693.x_AdditionalLightsColor[x_989];
    let x_993 : vec3<f32> = (vec3<f32>(x_987, x_987, x_987) * vec3<f32>(x_991.x, x_991.y, x_991.z));
    let x_994 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
    let x_996 : vec3<f32> = u_xlat8;
    let x_997 : f32 = u_xlat44;
    let x_1000 : vec3<f32> = u_xlat3;
    u_xlat8 = ((x_996 * vec3<f32>(x_997, x_997, x_997)) + x_1000);
    let x_1002 : vec3<f32> = u_xlat8;
    let x_1003 : vec3<f32> = u_xlat8;
    u_xlat17.x = dot(x_1002, x_1003);
    let x_1007 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1007, 1.17549435e-38f);
    let x_1011 : f32 = u_xlat17.x;
    u_xlat17.x = inverseSqrt(x_1011);
    let x_1014 : vec3<f32> = u_xlat17;
    let x_1016 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_1014.x, x_1014.x, x_1014.x) * x_1016);
    let x_1018 : vec3<f32> = u_xlat13;
    let x_1019 : vec3<f32> = u_xlat8;
    u_xlat17.x = dot(x_1018, x_1019);
    let x_1023 : f32 = u_xlat17.x;
    u_xlat17.x = clamp(x_1023, 0.0f, 1.0f);
    let x_1026 : vec3<f32> = u_xlat9;
    let x_1027 : vec3<f32> = u_xlat8;
    u_xlat42 = dot(x_1026, x_1027);
    let x_1029 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1029, 0.0f, 1.0f);
    let x_1032 : f32 = u_xlat17.x;
    let x_1034 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1032 * x_1034);
    let x_1038 : f32 = u_xlat17.x;
    let x_1040 : f32 = u_xlat7.x;
    u_xlat17.x = ((x_1038 * x_1040) + 1.00001001358032226562f);
    let x_1044 : f32 = u_xlat42;
    let x_1045 : f32 = u_xlat42;
    u_xlat42 = (x_1044 * x_1045);
    let x_1048 : f32 = u_xlat17.x;
    let x_1050 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1048 * x_1050);
    let x_1053 : f32 = u_xlat42;
    u_xlat42 = max(x_1053, 0.10000000149011611938f);
    let x_1056 : f32 = u_xlat17.x;
    let x_1057 : f32 = u_xlat42;
    u_xlat17.x = (x_1056 * x_1057);
    let x_1060 : f32 = u_xlat39;
    let x_1062 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1060 * x_1062);
    let x_1065 : f32 = u_xlat40;
    let x_1067 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1065 / x_1067);
    let x_1070 : vec4<f32> = u_xlat0;
    let x_1072 : vec3<f32> = u_xlat17;
    let x_1075 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_1070.x, x_1070.y, x_1070.z) * vec3<f32>(x_1072.x, x_1072.x, x_1072.x)) + x_1075);
    let x_1077 : vec3<f32> = u_xlat8;
    let x_1078 : vec4<f32> = u_xlat10;
    let x_1081 : vec3<f32> = u_xlat19;
    u_xlat19 = ((x_1077 * vec3<f32>(x_1078.x, x_1078.y, x_1078.z)) + x_1081);

    continuing {
      let x_1083 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1083 + bitcast<u32>(1i));
    }
  }
  let x_1085 : vec4<f32> = u_xlat6;
  let x_1087 : vec4<f32> = u_xlat5;
  let x_1090 : vec4<f32> = u_xlat2;
  let x_1092 : vec3<f32> = ((vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * vec3<f32>(x_1087.x, x_1087.z, x_1087.w)) + vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
  let x_1093 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  let x_1097 : vec3<f32> = u_xlat19;
  let x_1098 : vec4<f32> = u_xlat0;
  let x_1100 : vec3<f32> = (x_1097 + vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


