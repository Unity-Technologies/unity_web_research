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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_133 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlat29 : f32;

var<private> u_xlatu29 : u32;

var<private> u_xlati29 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat30 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb12 : bool;

var<private> u_xlatb21 : bool;

var<private> u_xlat21 : f32;

@group(1) @binding(2) var<uniform> x_497 : UnityPerDraw;

var<private> u_xlat31 : f32;

var<private> u_xlat32 : f32;

var<private> u_xlatu5 : u32;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatu15 : u32;

var<private> u_xlati24 : i32;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlati15 : i32;

var<private> u_xlat7 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_668 : AdditionalLights;

var<private> u_xlat24 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlati33 : i32;

var<private> u_xlatb34 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat35 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat34 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu6 : u32;

var<private> u_xlatb15 : bool;

fn main_1() {
  var x_98 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_453 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_798 : f32;
  var x_808 : f32;
  var txVec1 : vec3<f32>;
  var x_1057 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_54 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb1 = (x_54 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_61) + x_66);
  let x_69 : vec3<f32> = u_xlat10;
  let x_70 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_69, x_70);
  let x_75 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat10;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_85 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat2.x = x_85;
  let x_88 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat2.y = x_88;
  let x_93 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat2.z = x_93;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_101 : vec3<f32> = u_xlat10;
    x_98 = x_101;
  } else {
    let x_103 : vec3<f32> = u_xlat2;
    x_98 = x_103;
  }
  let x_104 : vec3<f32> = x_98;
  u_xlat1 = x_104;
  let x_107 : vec3<f32> = vs_TEXCOORD2;
  let x_108 : vec3<f32> = vs_TEXCOORD2;
  u_xlat28 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_110);
  let x_112 : f32 = u_xlat28;
  let x_114 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_112, x_112, x_112) * x_114);
  let x_116 : vec3<f32> = u_xlat1;
  let x_117 : vec3<f32> = u_xlat1;
  u_xlat28 = dot(x_116, x_117);
  let x_119 : f32 = u_xlat28;
  u_xlat28 = max(x_119, 0.00006103515625f);
  let x_122 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_122);
  let x_125 : vec3<f32> = vs_TEXCOORD1;
  let x_135 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres0;
  let x_138 : vec3<f32> = (x_125 + -(vec3<f32>(x_135.x, x_135.y, x_135.z)));
  let x_139 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_144 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres1;
  let x_147 : vec3<f32> = (x_142 + -(vec3<f32>(x_144.x, x_144.y, x_144.z)));
  let x_148 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec3<f32> = vs_TEXCOORD1;
  let x_154 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_151 + -(vec3<f32>(x_154.x, x_154.y, x_154.z)));
  let x_159 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec4<f32> = x_133.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_159 + -(vec3<f32>(x_161.x, x_161.y, x_161.z)));
  let x_165 : vec4<f32> = u_xlat3;
  let x_167 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_165.x, x_165.y, x_165.z), vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_171 : vec4<f32> = u_xlat4;
  let x_173 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec3<f32> = u_xlat5;
  let x_178 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_177, x_178);
  let x_181 : vec3<f32> = u_xlat6;
  let x_182 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_181, x_182);
  let x_188 : vec4<f32> = u_xlat3;
  let x_191 : vec4<f32> = x_133.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_188 < x_191);
  let x_194 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_194);
  let x_199 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_199);
  let x_203 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_203);
  let x_207 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_207);
  let x_211 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_211);
  let x_217 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_217);
  let x_221 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_221);
  let x_224 : vec4<f32> = u_xlat3;
  let x_226 : vec4<f32> = u_xlat4;
  let x_228 : vec3<f32> = (vec3<f32>(x_224.x, x_224.y, x_224.z) + vec3<f32>(x_226.y, x_226.z, x_226.w));
  let x_229 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
  let x_231 : vec4<f32> = u_xlat3;
  let x_234 : vec3<f32> = max(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_235.x, x_234.x, x_234.y, x_234.z);
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(x_238, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_244 : f32 = u_xlat29;
  u_xlat29 = (-(x_244) + 4.0f);
  let x_249 : f32 = u_xlat29;
  u_xlatu29 = u32(x_249);
  let x_253 : u32 = u_xlatu29;
  u_xlati29 = (bitcast<i32>(x_253) << bitcast<u32>(2i));
  let x_256 : vec3<f32> = vs_TEXCOORD1;
  let x_258 : i32 = u_xlati29;
  let x_261 : i32 = u_xlati29;
  let x_265 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_258 + 1i) / 4i)][((x_261 + 1i) % 4i)];
  let x_267 : vec3<f32> = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : i32 = u_xlati29;
  let x_272 : i32 = u_xlati29;
  let x_275 : vec4<f32> = x_133.x_MainLightWorldToShadow[(x_270 / 4i)][(x_272 % 4i)];
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec3<f32> = ((vec3<f32>(x_275.x, x_275.y, x_275.z) * vec3<f32>(x_277.x, x_277.x, x_277.x)) + vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : i32 = u_xlati29;
  let x_288 : i32 = u_xlati29;
  let x_292 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_285 + 2i) / 4i)][((x_288 + 2i) % 4i)];
  let x_294 : vec3<f32> = vs_TEXCOORD1;
  let x_297 : vec4<f32> = u_xlat3;
  let x_299 : vec3<f32> = ((vec3<f32>(x_292.x, x_292.y, x_292.z) * vec3<f32>(x_294.z, x_294.z, x_294.z)) + vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_300 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : i32 = u_xlati29;
  let x_307 : i32 = u_xlati29;
  let x_311 : vec4<f32> = x_133.x_MainLightWorldToShadow[((x_304 + 3i) / 4i)][((x_307 + 3i) % 4i)];
  let x_313 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_318 : f32 = vs_TEXCOORD1.y;
  let x_320 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat29 = (x_318 * x_320);
  let x_323 : f32 = x_28.unity_MatrixV[0i].z;
  let x_325 : f32 = vs_TEXCOORD1.x;
  let x_327 : f32 = u_xlat29;
  u_xlat29 = ((x_323 * x_325) + x_327);
  let x_330 : f32 = x_28.unity_MatrixV[2i].z;
  let x_332 : f32 = vs_TEXCOORD1.z;
  let x_334 : f32 = u_xlat29;
  u_xlat29 = ((x_330 * x_332) + x_334);
  let x_336 : f32 = u_xlat29;
  let x_338 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat29 = (x_336 + x_338);
  let x_340 : f32 = u_xlat29;
  let x_343 : f32 = x_28.x_ProjectionParams.y;
  u_xlat29 = (-(x_340) + -(x_343));
  let x_346 : f32 = u_xlat29;
  u_xlat29 = max(x_346, 0.0f);
  let x_348 : f32 = u_xlat29;
  let x_351 : f32 = x_28.unity_FogParams.x;
  u_xlat29 = (x_348 * x_351);
  let x_359 : vec2<f32> = vs_TEXCOORD7;
  let x_361 : f32 = x_28.x_GlobalMipBias.x;
  let x_362 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_359, x_361);
  u_xlat4 = x_362;
  let x_367 : vec2<f32> = vs_TEXCOORD7;
  let x_369 : f32 = x_28.x_GlobalMipBias.x;
  let x_370 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_367, x_369);
  u_xlat5 = vec3<f32>(x_370.x, x_370.y, x_370.z);
  let x_372 : vec4<f32> = u_xlat4;
  let x_376 : vec3<f32> = (vec3<f32>(x_372.x, x_372.y, x_372.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_377 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_380 : vec3<f32> = u_xlat2;
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat30 = dot(x_380, vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : f32 = u_xlat30;
  u_xlat30 = (x_384 + 0.5f);
  let x_387 : f32 = u_xlat30;
  let x_389 : vec3<f32> = u_xlat5;
  let x_390 : vec3<f32> = (vec3<f32>(x_387, x_387, x_387) * x_389);
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : f32 = u_xlat4.w;
  u_xlat30 = max(x_394, 0.00009999999747378752f);
  let x_397 : vec4<f32> = u_xlat4;
  let x_399 : f32 = u_xlat30;
  let x_401 : vec3<f32> = (vec3<f32>(x_397.x, x_397.y, x_397.z) / vec3<f32>(x_399, x_399, x_399));
  let x_402 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_405 : vec4<f32> = u_xlat3;
  let x_406 : vec2<f32> = vec2<f32>(x_405.x, x_405.y);
  let x_408 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_406.x, x_406.y, x_408);
  let x_420 : vec3<f32> = txVec0;
  let x_422 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_420.xy, x_420.z);
  u_xlat3.x = x_422;
  let x_427 : f32 = x_133.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_427) + 1.0f);
  let x_432 : f32 = u_xlat3.x;
  let x_434 : f32 = x_133.x_MainLightShadowParams.x;
  let x_437 : f32 = u_xlat12.x;
  u_xlat3.x = ((x_432 * x_434) + x_437);
  let x_442 : f32 = u_xlat3.z;
  u_xlatb12 = (0.0f >= x_442);
  let x_446 : f32 = u_xlat3.z;
  u_xlatb21 = (x_446 >= 1.0f);
  let x_448 : bool = u_xlatb21;
  let x_449 : bool = u_xlatb12;
  u_xlatb12 = (x_448 | x_449);
  let x_451 : bool = u_xlatb12;
  if (x_451) {
    x_453 = 1.0f;
  } else {
    let x_458 : f32 = u_xlat3.x;
    x_453 = x_458;
  }
  let x_459 : f32 = x_453;
  u_xlat3.x = x_459;
  let x_461 : vec3<f32> = vs_TEXCOORD1;
  let x_463 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat12 = (x_461 + -(x_463));
  let x_466 : vec3<f32> = u_xlat12;
  let x_467 : vec3<f32> = u_xlat12;
  u_xlat12.x = dot(x_466, x_467);
  let x_472 : f32 = u_xlat12.x;
  let x_474 : f32 = x_133.x_MainLightShadowParams.z;
  let x_477 : f32 = x_133.x_MainLightShadowParams.w;
  u_xlat21 = ((x_472 * x_474) + x_477);
  let x_479 : f32 = u_xlat21;
  u_xlat21 = clamp(x_479, 0.0f, 1.0f);
  let x_482 : f32 = u_xlat3.x;
  u_xlat30 = (-(x_482) + 1.0f);
  let x_485 : f32 = u_xlat21;
  let x_486 : f32 = u_xlat30;
  let x_489 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_485 * x_486) + x_489);
  let x_493 : f32 = u_xlat3.x;
  let x_499 : f32 = x_497.unity_LightData.z;
  u_xlat3.x = (x_493 * x_499);
  let x_502 : vec4<f32> = u_xlat3;
  let x_505 : vec4<f32> = x_28.x_MainLightColor;
  let x_507 : vec3<f32> = (vec3<f32>(x_502.x, x_502.x, x_502.x) * vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_507.x, x_508.y, x_507.y, x_507.z);
  let x_511 : vec3<f32> = u_xlat2;
  let x_513 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat31 = dot(x_511, vec3<f32>(x_513.x, x_513.y, x_513.z));
  let x_516 : f32 = u_xlat31;
  u_xlat31 = clamp(x_516, 0.0f, 1.0f);
  let x_518 : vec4<f32> = u_xlat3;
  let x_520 : f32 = u_xlat31;
  u_xlat5 = (vec3<f32>(x_518.x, x_518.z, x_518.w) * vec3<f32>(x_520, x_520, x_520));
  let x_524 : f32 = u_xlat0.x;
  u_xlat31 = ((x_524 * 10.0f) + 1.0f);
  let x_528 : f32 = u_xlat31;
  u_xlat31 = exp2(x_528);
  let x_530 : vec3<f32> = u_xlat1;
  let x_531 : f32 = u_xlat28;
  let x_535 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat6 = ((x_530 * vec3<f32>(x_531, x_531, x_531)) + vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_539 : vec3<f32> = u_xlat6;
  let x_540 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_539, x_540);
  let x_542 : f32 = u_xlat32;
  u_xlat32 = max(x_542, 1.17549435e-38f);
  let x_545 : f32 = u_xlat32;
  u_xlat32 = inverseSqrt(x_545);
  let x_547 : f32 = u_xlat32;
  let x_549 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_547, x_547, x_547) * x_549);
  let x_551 : vec3<f32> = u_xlat2;
  let x_552 : vec3<f32> = u_xlat6;
  u_xlat32 = dot(x_551, x_552);
  let x_554 : f32 = u_xlat32;
  u_xlat32 = clamp(x_554, 0.0f, 1.0f);
  let x_556 : f32 = u_xlat32;
  u_xlat32 = log2(x_556);
  let x_558 : f32 = u_xlat31;
  let x_559 : f32 = u_xlat32;
  u_xlat32 = (x_558 * x_559);
  let x_561 : f32 = u_xlat32;
  u_xlat32 = exp2(x_561);
  let x_563 : f32 = u_xlat32;
  let x_566 : vec4<f32> = x_41.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_563, x_563, x_563) * vec3<f32>(x_566.x, x_566.y, x_566.z));
  let x_569 : vec4<f32> = u_xlat3;
  let x_571 : vec3<f32> = u_xlat6;
  let x_572 : vec3<f32> = (vec3<f32>(x_569.x, x_569.z, x_569.w) * x_571);
  let x_573 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_572.x, x_573.y, x_572.y, x_572.z);
  let x_575 : vec3<f32> = u_xlat5;
  let x_576 : vec4<f32> = u_xlat0;
  let x_579 : vec4<f32> = u_xlat3;
  let x_581 : vec3<f32> = ((x_575 * vec3<f32>(x_576.y, x_576.z, x_576.w)) + vec3<f32>(x_579.x, x_579.z, x_579.w));
  let x_582 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_581.x, x_582.y, x_581.y, x_581.z);
  let x_585 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_587 : f32 = x_497.unity_LightData.y;
  u_xlat5.x = min(x_585, x_587);
  let x_592 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_592));
  let x_596 : f32 = u_xlat12.x;
  let x_599 : f32 = x_133.x_AdditionalShadowFadeParams.x;
  let x_602 : f32 = x_133.x_AdditionalShadowFadeParams.y;
  u_xlat12.x = ((x_596 * x_599) + x_602);
  let x_606 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_606, 0.0f, 1.0f);
  u_xlat14.x = 0.0f;
  u_xlat14.y = 0.0f;
  u_xlat14.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_620 : u32 = u_xlatu_loop_1;
    let x_621 : u32 = u_xlatu5;
    if ((x_620 < x_621)) {
    } else {
      break;
    }
    let x_624 : u32 = u_xlatu_loop_1;
    u_xlatu15 = (x_624 >> 2u);
    let x_627 : u32 = u_xlatu_loop_1;
    u_xlati24 = bitcast<i32>((x_627 & 3u));
    let x_631 : u32 = u_xlatu15;
    let x_634 : vec4<f32> = x_497.unity_LightIndices[bitcast<i32>(x_631)];
    let x_644 : i32 = u_xlati24;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_649 : vec4<u32> = indexable[x_644];
    u_xlat15.x = dot(x_634, bitcast<vec4<f32>>(x_649));
    let x_655 : f32 = u_xlat15.x;
    u_xlati15 = i32(x_655);
    let x_658 : vec3<f32> = vs_TEXCOORD1;
    let x_669 : i32 = u_xlati15;
    let x_671 : vec4<f32> = x_668.x_AdditionalLightsPosition[x_669];
    let x_674 : i32 = u_xlati15;
    let x_676 : vec4<f32> = x_668.x_AdditionalLightsPosition[x_674];
    u_xlat7 = ((-(x_658) * vec3<f32>(x_671.w, x_671.w, x_671.w)) + vec3<f32>(x_676.x, x_676.y, x_676.z));
    let x_680 : vec3<f32> = u_xlat7;
    let x_681 : vec3<f32> = u_xlat7;
    u_xlat24 = dot(x_680, x_681);
    let x_683 : f32 = u_xlat24;
    u_xlat24 = max(x_683, 0.00006103515625f);
    let x_686 : f32 = u_xlat24;
    u_xlat33 = inverseSqrt(x_686);
    let x_688 : f32 = u_xlat33;
    let x_690 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_688, x_688, x_688) * x_690);
    let x_692 : f32 = u_xlat24;
    u_xlat33 = (1.0f / x_692);
    let x_694 : f32 = u_xlat24;
    let x_695 : i32 = u_xlati15;
    let x_697 : f32 = x_668.x_AdditionalLightsAttenuation[x_695].x;
    u_xlat24 = (x_694 * x_697);
    let x_699 : f32 = u_xlat24;
    let x_701 : f32 = u_xlat24;
    u_xlat24 = ((-(x_699) * x_701) + 1.0f);
    let x_704 : f32 = u_xlat24;
    u_xlat24 = max(x_704, 0.0f);
    let x_706 : f32 = u_xlat24;
    let x_707 : f32 = u_xlat24;
    u_xlat24 = (x_706 * x_707);
    let x_709 : f32 = u_xlat24;
    let x_710 : f32 = u_xlat33;
    u_xlat24 = (x_709 * x_710);
    let x_712 : i32 = u_xlati15;
    let x_714 : vec4<f32> = x_668.x_AdditionalLightsSpotDir[x_712];
    let x_716 : vec3<f32> = u_xlat7;
    u_xlat33 = dot(vec3<f32>(x_714.x, x_714.y, x_714.z), x_716);
    let x_718 : f32 = u_xlat33;
    let x_719 : i32 = u_xlati15;
    let x_721 : f32 = x_668.x_AdditionalLightsAttenuation[x_719].z;
    let x_723 : i32 = u_xlati15;
    let x_725 : f32 = x_668.x_AdditionalLightsAttenuation[x_723].w;
    u_xlat33 = ((x_718 * x_721) + x_725);
    let x_727 : f32 = u_xlat33;
    u_xlat33 = clamp(x_727, 0.0f, 1.0f);
    let x_729 : f32 = u_xlat33;
    let x_730 : f32 = u_xlat33;
    u_xlat33 = (x_729 * x_730);
    let x_732 : f32 = u_xlat33;
    let x_733 : f32 = u_xlat24;
    u_xlat24 = (x_732 * x_733);
    let x_737 : i32 = u_xlati15;
    let x_739 : f32 = x_133.x_AdditionalShadowParams[x_737].w;
    u_xlati33 = i32(x_739);
    let x_742 : i32 = u_xlati33;
    u_xlatb34 = (x_742 >= 0i);
    let x_744 : bool = u_xlatb34;
    if (x_744) {
      let x_748 : i32 = u_xlati15;
      let x_750 : f32 = x_133.x_AdditionalShadowParams[x_748].z;
      u_xlatb34 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_750, x_750, x_750, x_750))));
      let x_754 : bool = u_xlatb34;
      if (x_754) {
        let x_758 : vec3<f32> = u_xlat7;
        let x_761 : vec3<f32> = u_xlat7;
        let x_764 : vec4<bool> = (abs(vec4<f32>(x_758.z, x_758.z, x_758.y, x_758.z)) >= abs(vec4<f32>(x_761.x, x_761.y, x_761.x, x_761.x)));
        let x_766 : vec3<bool> = vec3<bool>(x_764.x, x_764.y, x_764.z);
        let x_767 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_766.x, x_766.y, x_766.z, x_767.w);
        let x_770 : bool = u_xlatb8.y;
        let x_772 : bool = u_xlatb8.x;
        u_xlatb34 = (x_770 & x_772);
        let x_774 : vec3<f32> = u_xlat7;
        let x_777 : vec4<bool> = (-(vec4<f32>(x_774.z, x_774.y, x_774.z, x_774.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_778 : vec3<bool> = vec3<bool>(x_777.x, x_777.y, x_777.w);
        let x_779 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_778.x, x_778.y, x_779.z, x_778.z);
        let x_783 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_783);
        let x_788 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_788);
        let x_793 : bool = u_xlatb8.w;
        u_xlat35 = select(0.0f, 1.0f, x_793);
        let x_797 : bool = u_xlatb8.z;
        if (x_797) {
          let x_802 : f32 = u_xlat8.y;
          x_798 = x_802;
        } else {
          let x_804 : f32 = u_xlat35;
          x_798 = x_804;
        }
        let x_805 : f32 = x_798;
        u_xlat17 = x_805;
        let x_807 : bool = u_xlatb34;
        if (x_807) {
          let x_812 : f32 = u_xlat8.x;
          x_808 = x_812;
        } else {
          let x_814 : f32 = u_xlat17;
          x_808 = x_814;
        }
        let x_815 : f32 = x_808;
        u_xlat34 = x_815;
        let x_816 : i32 = u_xlati15;
        let x_818 : f32 = x_133.x_AdditionalShadowParams[x_816].w;
        u_xlat8.x = trunc(x_818);
        let x_821 : f32 = u_xlat34;
        let x_823 : f32 = u_xlat8.x;
        u_xlat34 = (x_821 + x_823);
        let x_825 : f32 = u_xlat34;
        u_xlati33 = i32(x_825);
      }
      let x_827 : i32 = u_xlati33;
      u_xlati33 = (x_827 << bitcast<u32>(2i));
      let x_829 : vec3<f32> = vs_TEXCOORD1;
      let x_832 : i32 = u_xlati33;
      let x_835 : i32 = u_xlati33;
      let x_839 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[((x_832 + 1i) / 4i)][((x_835 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_829.y, x_829.y, x_829.y, x_829.y) * x_839);
      let x_841 : i32 = u_xlati33;
      let x_843 : i32 = u_xlati33;
      let x_846 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[(x_841 / 4i)][(x_843 % 4i)];
      let x_847 : vec3<f32> = vs_TEXCOORD1;
      let x_850 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_846 * vec4<f32>(x_847.x, x_847.x, x_847.x, x_847.x)) + x_850);
      let x_852 : i32 = u_xlati33;
      let x_855 : i32 = u_xlati33;
      let x_859 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[((x_852 + 2i) / 4i)][((x_855 + 2i) % 4i)];
      let x_860 : vec3<f32> = vs_TEXCOORD1;
      let x_863 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_859 * vec4<f32>(x_860.z, x_860.z, x_860.z, x_860.z)) + x_863);
      let x_865 : vec4<f32> = u_xlat8;
      let x_866 : i32 = u_xlati33;
      let x_869 : i32 = u_xlati33;
      let x_873 : vec4<f32> = x_133.x_AdditionalLightsWorldToShadow[((x_866 + 3i) / 4i)][((x_869 + 3i) % 4i)];
      u_xlat8 = (x_865 + x_873);
      let x_875 : vec4<f32> = u_xlat8;
      let x_877 : vec4<f32> = u_xlat8;
      let x_879 : vec3<f32> = (vec3<f32>(x_875.x, x_875.y, x_875.z) / vec3<f32>(x_877.w, x_877.w, x_877.w));
      let x_880 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
      let x_883 : vec4<f32> = u_xlat8;
      let x_884 : vec2<f32> = vec2<f32>(x_883.x, x_883.y);
      let x_886 : f32 = u_xlat8.z;
      txVec1 = vec3<f32>(x_884.x, x_884.y, x_886);
      let x_894 : vec3<f32> = txVec1;
      let x_896 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_894.xy, x_894.z);
      u_xlat33 = x_896;
      let x_897 : i32 = u_xlati15;
      let x_899 : f32 = x_133.x_AdditionalShadowParams[x_897].x;
      u_xlat34 = (1.0f + -(x_899));
      let x_902 : f32 = u_xlat33;
      let x_903 : i32 = u_xlati15;
      let x_905 : f32 = x_133.x_AdditionalShadowParams[x_903].x;
      let x_907 : f32 = u_xlat34;
      u_xlat33 = ((x_902 * x_905) + x_907);
      let x_910 : f32 = u_xlat8.z;
      u_xlatb34 = (0.0f >= x_910);
      let x_913 : f32 = u_xlat8.z;
      u_xlatb8.x = (x_913 >= 1.0f);
      let x_916 : bool = u_xlatb34;
      let x_918 : bool = u_xlatb8.x;
      u_xlatb34 = (x_916 | x_918);
      let x_920 : bool = u_xlatb34;
      let x_921 : f32 = u_xlat33;
      u_xlat33 = select(x_921, 1.0f, x_920);
    } else {
      u_xlat33 = 1.0f;
    }
    let x_924 : f32 = u_xlat33;
    u_xlat34 = (-(x_924) + 1.0f);
    let x_928 : f32 = u_xlat12.x;
    let x_929 : f32 = u_xlat34;
    let x_931 : f32 = u_xlat33;
    u_xlat33 = ((x_928 * x_929) + x_931);
    let x_933 : f32 = u_xlat33;
    let x_934 : f32 = u_xlat24;
    u_xlat24 = (x_933 * x_934);
    let x_936 : f32 = u_xlat24;
    let x_938 : i32 = u_xlati15;
    let x_940 : vec4<f32> = x_668.x_AdditionalLightsColor[x_938];
    u_xlat15 = (vec3<f32>(x_936, x_936, x_936) * vec3<f32>(x_940.x, x_940.y, x_940.z));
    let x_943 : vec3<f32> = u_xlat2;
    let x_944 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_943, x_944);
    let x_946 : f32 = u_xlat34;
    u_xlat34 = clamp(x_946, 0.0f, 1.0f);
    let x_948 : vec3<f32> = u_xlat15;
    let x_949 : f32 = u_xlat34;
    let x_951 : vec3<f32> = (x_948 * vec3<f32>(x_949, x_949, x_949));
    let x_952 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
    let x_954 : vec3<f32> = u_xlat1;
    let x_955 : f32 = u_xlat28;
    let x_958 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_954 * vec3<f32>(x_955, x_955, x_955)) + x_958);
    let x_960 : vec3<f32> = u_xlat7;
    let x_961 : vec3<f32> = u_xlat7;
    u_xlat34 = dot(x_960, x_961);
    let x_963 : f32 = u_xlat34;
    u_xlat34 = max(x_963, 1.17549435e-38f);
    let x_965 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_965);
    let x_967 : f32 = u_xlat34;
    let x_969 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_967, x_967, x_967) * x_969);
    let x_971 : vec3<f32> = u_xlat2;
    let x_972 : vec3<f32> = u_xlat7;
    u_xlat7.x = dot(x_971, x_972);
    let x_976 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_976, 0.0f, 1.0f);
    let x_980 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_980);
    let x_983 : f32 = u_xlat31;
    let x_985 : f32 = u_xlat7.x;
    u_xlat7.x = (x_983 * x_985);
    let x_989 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_989);
    let x_992 : vec3<f32> = u_xlat7;
    let x_995 : vec4<f32> = x_41.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_992.x, x_992.x, x_992.x) * vec3<f32>(x_995.x, x_995.y, x_995.z));
    let x_998 : vec3<f32> = u_xlat15;
    let x_999 : vec3<f32> = u_xlat7;
    u_xlat15 = (x_998 * x_999);
    let x_1001 : vec4<f32> = u_xlat8;
    let x_1003 : vec4<f32> = u_xlat0;
    let x_1006 : vec3<f32> = u_xlat15;
    u_xlat15 = ((vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(x_1003.y, x_1003.z, x_1003.w)) + x_1006);
    let x_1008 : vec3<f32> = u_xlat14;
    let x_1009 : vec3<f32> = u_xlat15;
    u_xlat14 = (x_1008 + x_1009);

    continuing {
      let x_1011 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1011 + bitcast<u32>(1i));
    }
  }
  let x_1014 : vec4<f32> = u_xlat4;
  let x_1016 : vec4<f32> = u_xlat0;
  let x_1019 : vec4<f32> = u_xlat3;
  u_xlat9 = ((vec3<f32>(x_1014.x, x_1014.y, x_1014.z) * vec3<f32>(x_1016.y, x_1016.z, x_1016.w)) + vec3<f32>(x_1019.x, x_1019.z, x_1019.w));
  let x_1022 : vec3<f32> = u_xlat14;
  let x_1023 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_1022 + x_1023);
  let x_1025 : f32 = u_xlat29;
  let x_1026 : f32 = u_xlat29;
  u_xlat1.x = (x_1025 * -(x_1026));
  let x_1031 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1031);
  let x_1034 : vec3<f32> = u_xlat9;
  let x_1036 : vec4<f32> = x_28.unity_FogColor;
  u_xlat9 = (x_1034 + -(vec3<f32>(x_1036.x, x_1036.y, x_1036.z)));
  let x_1042 : vec3<f32> = u_xlat1;
  let x_1044 : vec3<f32> = u_xlat9;
  let x_1047 : vec4<f32> = x_28.unity_FogColor;
  let x_1049 : vec3<f32> = ((vec3<f32>(x_1042.x, x_1042.x, x_1042.x) * x_1044) + vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1054 : f32 = x_41.x_Surface;
  u_xlatb9 = (x_1054 == 1.0f);
  let x_1056 : bool = u_xlatb9;
  if (x_1056) {
    let x_1061 : f32 = u_xlat0.x;
    x_1057 = x_1061;
  } else {
    x_1057 = 1.0f;
  }
  let x_1063 : f32 = x_1057;
  SV_Target0.w = x_1063;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


