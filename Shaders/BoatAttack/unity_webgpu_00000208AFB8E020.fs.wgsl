struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_71 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_187 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_349 : MainLightShadows;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1251 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat33 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlatb25 : bool;
  var x_193 : f32;
  var u_xlatb14 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat5 : vec4<f32>;
  var x_268 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat34 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat12 : vec2<f32>;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb27 : bool;
  var x_837 : f32;
  var u_xlat27 : f32;
  var u_xlat40 : f32;
  var u_xlatu12 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu38 : u32;
  var u_xlati40 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati38 : i32;
  var u_xlat41 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1481 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_61 : f32 = x_44.x_GlobalMipBias.x;
  let x_62 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_59, x_61);
  let x_63 : vec2<f32> = vec2<f32>(x_62.x, x_62.w);
  let x_64 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_63.x, x_63.y, x_64.z);
  let x_67 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = x_71.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_67.w, x_67.x, x_67.y, x_67.z) * vec4<f32>(x_75.w, x_75.x, x_75.y, x_75.z));
  let x_84 : vec2<f32> = vs_TEXCOORD0;
  let x_86 : f32 = x_44.x_GlobalMipBias.x;
  let x_87 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_84, x_86);
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.x;
  let x_94 : f32 = u_xlat3.z;
  u_xlat3.x = (x_91 * x_94);
  let x_99 : vec3<f32> = u_xlat3;
  u_xlat23 = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_108 : vec2<f32> = u_xlat23;
  let x_109 : vec2<f32> = u_xlat23;
  u_xlat33 = dot(x_108, x_109);
  let x_111 : f32 = u_xlat33;
  u_xlat33 = min(x_111, 1.0f);
  let x_113 : f32 = u_xlat33;
  u_xlat33 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_116);
  let x_118 : f32 = u_xlat33;
  u_xlat33 = max(x_118, 1.00000002e-16f);
  let x_121 : vec2<f32> = u_xlat23;
  let x_124 : f32 = x_71.x_BumpScale;
  let x_126 : f32 = x_71.x_BumpScale;
  let x_127 : vec2<f32> = vec2<f32>(x_124, x_126);
  u_xlat23 = (x_121 * vec2<f32>(x_127.x, x_127.y));
  let x_137 : vec2<f32> = vs_TEXCOORD0;
  let x_139 : f32 = x_44.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_137, x_139);
  u_xlat3.x = x_140.y;
  let x_147 : f32 = x_71.x_OcclusionStrength;
  u_xlat14.x = (-(x_147) + 1.0f);
  let x_152 : f32 = u_xlat3.x;
  let x_154 : f32 = x_71.x_OcclusionStrength;
  let x_157 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_152 * x_154) + x_157);
  let x_160 : vec4<f32> = hlslcc_FragCoord;
  let x_164 : f32 = x_44.x_DitheringTextureInvSize;
  let x_166 : vec2<f32> = (vec2<f32>(x_160.x, x_160.y) * vec2<f32>(x_164, x_164));
  let x_167 : vec3<f32> = u_xlat14;
  u_xlat14 = vec3<f32>(x_166.x, x_166.y, x_167.z);
  let x_174 : vec3<f32> = u_xlat14;
  let x_177 : f32 = x_44.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_174.x, x_174.y), x_177);
  u_xlat14.x = x_178.w;
  let x_189 : f32 = x_187.unity_LODFade.x;
  u_xlatb25 = (x_189 >= 0.0f);
  let x_192 : bool = u_xlatb25;
  if (x_192) {
    let x_197 : f32 = u_xlat14.x;
    x_193 = abs(x_197);
  } else {
    let x_201 : f32 = u_xlat14.x;
    x_193 = -(abs(x_201));
  }
  let x_204 : f32 = x_193;
  u_xlat14.x = x_204;
  let x_207 : f32 = u_xlat14.x;
  let x_210 : f32 = x_187.unity_LODFade.x;
  u_xlat14.x = (-(x_207) + x_210);
  let x_215 : f32 = u_xlat14.x;
  u_xlatb14 = (x_215 < 0.0f);
  let x_217 : bool = u_xlatb14;
  if (((select(0i, 1i, x_217) * -1i) != 0i)) {
    discard;
  }
  let x_227 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_227 == 0.0f);
  let x_232 : vec3<f32> = vs_TEXCOORD1;
  let x_237 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_238 : vec3<f32> = (-(x_232) + x_237);
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_242 : vec4<f32> = u_xlat4;
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_242.x, x_242.y, x_242.z), vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_247);
  let x_249 : f32 = u_xlat25;
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec3<f32> = (vec3<f32>(x_249, x_249, x_249) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_259 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_259;
  let x_262 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_262;
  let x_265 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_265;
  let x_267 : bool = u_xlatb14;
  if (x_267) {
    let x_271 : vec4<f32> = u_xlat4;
    x_268 = vec3<f32>(x_271.x, x_271.y, x_271.z);
  } else {
    let x_274 : vec4<f32> = u_xlat5;
    x_268 = vec3<f32>(x_274.x, x_274.y, x_274.z);
  }
  let x_276 : vec3<f32> = x_268;
  u_xlat14 = x_276;
  let x_278 : vec3<f32> = vs_TEXCOORD2;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_283 : vec3<f32> = (vec3<f32>(x_278.z, x_278.x, x_278.y) * vec3<f32>(x_281.y, x_281.z, x_281.x));
  let x_284 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
  let x_286 : vec3<f32> = vs_TEXCOORD2;
  let x_288 : vec4<f32> = vs_TEXCOORD3;
  let x_291 : vec4<f32> = u_xlat4;
  let x_294 : vec3<f32> = ((vec3<f32>(x_286.y, x_286.z, x_286.x) * vec3<f32>(x_288.z, x_288.x, x_288.y)) + -(vec3<f32>(x_291.x, x_291.y, x_291.z)));
  let x_295 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat4;
  let x_299 : vec4<f32> = vs_TEXCOORD3;
  let x_301 : vec3<f32> = (vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.w, x_299.w, x_299.w));
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec2<f32> = u_xlat23;
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.y, x_304.y, x_304.y) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec2<f32> = u_xlat23;
  let x_313 : vec4<f32> = vs_TEXCOORD3;
  let x_316 : vec4<f32> = u_xlat4;
  let x_318 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.x, x_311.x) * vec3<f32>(x_313.x, x_313.y, x_313.z)) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : f32 = u_xlat33;
  let x_323 : vec3<f32> = vs_TEXCOORD2;
  let x_325 : vec4<f32> = u_xlat4;
  let x_327 : vec3<f32> = ((vec3<f32>(x_321, x_321, x_321) * x_323) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_335);
  let x_337 : f32 = u_xlat33;
  let x_339 : vec4<f32> = u_xlat4;
  let x_341 : vec3<f32> = (vec3<f32>(x_337, x_337, x_337) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec3<f32> = vs_TEXCOORD1;
  let x_351 : vec4<f32> = x_349.x_CascadeShadowSplitSpheres0;
  let x_354 : vec3<f32> = (x_344 + -(vec3<f32>(x_351.x, x_351.y, x_351.z)));
  let x_355 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_358 : vec3<f32> = vs_TEXCOORD1;
  let x_360 : vec4<f32> = x_349.x_CascadeShadowSplitSpheres1;
  let x_363 : vec3<f32> = (x_358 + -(vec3<f32>(x_360.x, x_360.y, x_360.z)));
  let x_364 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_367 : vec3<f32> = vs_TEXCOORD1;
  let x_370 : vec4<f32> = x_349.x_CascadeShadowSplitSpheres2;
  let x_373 : vec3<f32> = (x_367 + -(vec3<f32>(x_370.x, x_370.y, x_370.z)));
  let x_374 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_377 : vec3<f32> = vs_TEXCOORD1;
  let x_380 : vec4<f32> = x_349.x_CascadeShadowSplitSpheres3;
  let x_383 : vec3<f32> = (x_377 + -(vec3<f32>(x_380.x, x_380.y, x_380.z)));
  let x_384 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_386.x, x_386.y, x_386.z), vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_392 : vec4<f32> = u_xlat6;
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_392.x, x_392.y, x_392.z), vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_398 : vec4<f32> = u_xlat7;
  let x_400 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_398.x, x_398.y, x_398.z), vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_404 : vec4<f32> = u_xlat8;
  let x_406 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_404.x, x_404.y, x_404.z), vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_413 : vec4<f32> = u_xlat5;
  let x_416 : vec4<f32> = x_349.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_413 < x_416);
  let x_419 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_419);
  let x_423 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_423);
  let x_427 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_427);
  let x_431 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_431);
  let x_435 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_435);
  let x_440 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_440);
  let x_444 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_444);
  let x_447 : vec4<f32> = u_xlat5;
  let x_449 : vec4<f32> = u_xlat6;
  let x_451 : vec3<f32> = (vec3<f32>(x_447.x, x_447.y, x_447.z) + vec3<f32>(x_449.y, x_449.z, x_449.w));
  let x_452 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec4<f32> = u_xlat5;
  let x_457 : vec3<f32> = max(vec3<f32>(x_454.x, x_454.y, x_454.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_458 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_458.x, x_457.x, x_457.y, x_457.z);
  let x_460 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(x_460, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_465 : f32 = u_xlat33;
  u_xlat33 = (-(x_465) + 4.0f);
  let x_470 : f32 = u_xlat33;
  u_xlatu33 = u32(x_470);
  let x_474 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_474) << bitcast<u32>(2i));
  let x_477 : vec3<f32> = vs_TEXCOORD1;
  let x_479 : i32 = u_xlati33;
  let x_482 : i32 = u_xlati33;
  let x_486 : vec4<f32> = x_349.x_MainLightWorldToShadow[((x_479 + 1i) / 4i)][((x_482 + 1i) % 4i)];
  let x_488 : vec3<f32> = (vec3<f32>(x_477.y, x_477.y, x_477.y) * vec3<f32>(x_486.x, x_486.y, x_486.z));
  let x_489 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_491 : i32 = u_xlati33;
  let x_493 : i32 = u_xlati33;
  let x_496 : vec4<f32> = x_349.x_MainLightWorldToShadow[(x_491 / 4i)][(x_493 % 4i)];
  let x_498 : vec3<f32> = vs_TEXCOORD1;
  let x_501 : vec4<f32> = u_xlat5;
  let x_503 : vec3<f32> = ((vec3<f32>(x_496.x, x_496.y, x_496.z) * vec3<f32>(x_498.x, x_498.x, x_498.x)) + vec3<f32>(x_501.x, x_501.y, x_501.z));
  let x_504 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : i32 = u_xlati33;
  let x_509 : i32 = u_xlati33;
  let x_513 : vec4<f32> = x_349.x_MainLightWorldToShadow[((x_506 + 2i) / 4i)][((x_509 + 2i) % 4i)];
  let x_515 : vec3<f32> = vs_TEXCOORD1;
  let x_518 : vec4<f32> = u_xlat5;
  let x_520 : vec3<f32> = ((vec3<f32>(x_513.x, x_513.y, x_513.z) * vec3<f32>(x_515.z, x_515.z, x_515.z)) + vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : vec4<f32> = u_xlat5;
  let x_525 : i32 = u_xlati33;
  let x_528 : i32 = u_xlati33;
  let x_532 : vec4<f32> = x_349.x_MainLightWorldToShadow[((x_525 + 3i) / 4i)][((x_528 + 3i) % 4i)];
  let x_534 : vec3<f32> = (vec3<f32>(x_523.x, x_523.y, x_523.z) + vec3<f32>(x_532.x, x_532.y, x_532.z));
  let x_535 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
  let x_538 : f32 = vs_TEXCOORD1.y;
  let x_540 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_538 * x_540);
  let x_543 : f32 = x_44.unity_MatrixV[0i].z;
  let x_545 : f32 = vs_TEXCOORD1.x;
  let x_547 : f32 = u_xlat33;
  u_xlat33 = ((x_543 * x_545) + x_547);
  let x_550 : f32 = x_44.unity_MatrixV[2i].z;
  let x_552 : f32 = vs_TEXCOORD1.z;
  let x_554 : f32 = u_xlat33;
  u_xlat33 = ((x_550 * x_552) + x_554);
  let x_556 : f32 = u_xlat33;
  let x_558 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_556 + x_558);
  let x_560 : f32 = u_xlat33;
  let x_564 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_560) + -(x_564));
  let x_567 : f32 = u_xlat33;
  u_xlat33 = max(x_567, 0.0f);
  let x_569 : f32 = u_xlat33;
  let x_571 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_569 * x_571);
  u_xlat4.w = 1.0f;
  let x_576 : vec4<f32> = x_187.unity_SHAr;
  let x_577 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_576, x_577);
  let x_582 : vec4<f32> = x_187.unity_SHAg;
  let x_583 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_582, x_583);
  let x_588 : vec4<f32> = x_187.unity_SHAb;
  let x_589 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_588, x_589);
  let x_592 : vec4<f32> = u_xlat4;
  let x_594 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_592.y, x_592.z, x_592.z, x_592.x) * vec4<f32>(x_594.x, x_594.y, x_594.z, x_594.z));
  let x_599 : vec4<f32> = x_187.unity_SHBr;
  let x_600 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_599, x_600);
  let x_605 : vec4<f32> = x_187.unity_SHBg;
  let x_606 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_605, x_606);
  let x_611 : vec4<f32> = x_187.unity_SHBb;
  let x_612 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_611, x_612);
  let x_616 : f32 = u_xlat4.y;
  let x_618 : f32 = u_xlat4.y;
  u_xlat23.x = (x_616 * x_618);
  let x_622 : f32 = u_xlat4.x;
  let x_624 : f32 = u_xlat4.x;
  let x_627 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_622 * x_624) + -(x_627));
  let x_633 : vec4<f32> = x_187.unity_SHC;
  let x_635 : vec2<f32> = u_xlat23;
  let x_638 : vec4<f32> = u_xlat8;
  let x_640 : vec3<f32> = ((vec3<f32>(x_633.x, x_633.y, x_633.z) * vec3<f32>(x_635.x, x_635.x, x_635.x)) + vec3<f32>(x_638.x, x_638.y, x_638.z));
  let x_641 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_640.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat6;
  let x_645 : vec4<f32> = u_xlat7;
  let x_647 : vec3<f32> = (vec3<f32>(x_643.x, x_643.y, x_643.z) + vec3<f32>(x_645.x, x_645.y, x_645.z));
  let x_648 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_650 : vec4<f32> = u_xlat6;
  let x_652 : vec3<f32> = max(vec3<f32>(x_650.x, x_650.y, x_650.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_653 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_657 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_658 : vec2<f32> = vec2<f32>(x_657.x, x_657.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_658.x, x_658.y));
  let x_663 : vec2<f32> = u_xlat23;
  let x_664 : vec4<f32> = hlslcc_FragCoord;
  let x_666 : vec2<f32> = (x_663 * vec2<f32>(x_664.x, x_664.y));
  let x_667 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
  let x_670 : f32 = u_xlat7.y;
  let x_673 : f32 = x_44.x_ScaleBiasRt.x;
  let x_676 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_670 * x_673) + x_676);
  let x_680 : f32 = u_xlat23.x;
  u_xlat7.z = (-(x_680) + 1.0f);
  let x_685 : f32 = u_xlat1.x;
  u_xlat23.x = ((-(x_685) * 0.959999979f) + 0.959999979f);
  let x_693 : f32 = u_xlat23.x;
  u_xlat34 = (-(x_693) + 1.0f);
  let x_697 : vec2<f32> = u_xlat23;
  let x_699 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_697.x, x_697.x, x_697.x) * vec3<f32>(x_699.y, x_699.z, x_699.w));
  let x_702 : vec4<f32> = u_xlat0;
  let x_705 : vec4<f32> = x_71.x_BaseColor;
  let x_710 : vec3<f32> = ((vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_705.x, x_705.y, x_705.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_711 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec3<f32> = u_xlat1;
  let x_715 : vec4<f32> = u_xlat0;
  let x_720 : vec3<f32> = ((vec3<f32>(x_713.x, x_713.x, x_713.x) * vec3<f32>(x_715.x, x_715.y, x_715.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_724 : f32 = u_xlat1.y;
  let x_727 : f32 = x_71.x_Smoothness;
  u_xlat1.x = ((-(x_724) * x_727) + 1.0f);
  let x_732 : f32 = u_xlat1.x;
  let x_734 : f32 = u_xlat1.x;
  u_xlat23.x = (x_732 * x_734);
  let x_738 : f32 = u_xlat23.x;
  u_xlat23.x = max(x_738, 0.0078125f);
  let x_744 : f32 = u_xlat23.x;
  let x_746 : f32 = u_xlat23.x;
  u_xlat37 = (x_744 * x_746);
  let x_750 : f32 = u_xlat1.y;
  let x_752 : f32 = x_71.x_Smoothness;
  let x_754 : f32 = u_xlat34;
  u_xlat12.x = ((x_750 * x_752) + x_754);
  let x_758 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_758, 0.0f, 1.0f);
  let x_762 : f32 = u_xlat23.x;
  u_xlat34 = ((x_762 * 4.0f) + 2.0f);
  let x_771 : vec4<f32> = u_xlat7;
  let x_774 : f32 = x_44.x_GlobalMipBias.x;
  let x_775 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_771.x, x_771.z), x_774);
  u_xlat38 = x_775.x;
  let x_778 : f32 = u_xlat38;
  u_xlat39 = (x_778 + -1.0f);
  let x_781 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_782 : f32 = u_xlat39;
  u_xlat39 = ((x_781 * x_782) + 1.0f);
  let x_786 : f32 = u_xlat3.x;
  let x_787 : f32 = u_xlat38;
  u_xlat3.x = min(x_786, x_787);
  let x_791 : vec4<f32> = u_xlat5;
  let x_792 : vec2<f32> = vec2<f32>(x_791.x, x_791.y);
  let x_794 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_792.x, x_792.y, x_794);
  let x_806 : vec3<f32> = txVec0;
  let x_808 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_806.xy, x_806.z);
  u_xlat5.x = x_808;
  let x_812 : f32 = x_349.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_812) + 1.0f);
  let x_817 : f32 = u_xlat5.x;
  let x_819 : f32 = x_349.x_MainLightShadowParams.x;
  let x_822 : f32 = u_xlat16.x;
  u_xlat5.x = ((x_817 * x_819) + x_822);
  let x_827 : f32 = u_xlat5.z;
  u_xlatb16 = (0.0f >= x_827);
  let x_831 : f32 = u_xlat5.z;
  u_xlatb27 = (x_831 >= 1.0f);
  let x_833 : bool = u_xlatb27;
  let x_834 : bool = u_xlatb16;
  u_xlatb16 = (x_833 | x_834);
  let x_836 : bool = u_xlatb16;
  if (x_836) {
    x_837 = 1.0f;
  } else {
    let x_842 : f32 = u_xlat5.x;
    x_837 = x_842;
  }
  let x_843 : f32 = x_837;
  u_xlat5.x = x_843;
  let x_845 : vec3<f32> = vs_TEXCOORD1;
  let x_847 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_845 + -(x_847));
  let x_850 : vec3<f32> = u_xlat16;
  let x_851 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_850, x_851);
  let x_855 : f32 = u_xlat16.x;
  let x_857 : f32 = x_349.x_MainLightShadowParams.z;
  let x_860 : f32 = x_349.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_855 * x_857) + x_860);
  let x_864 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_864, 0.0f, 1.0f);
  let x_869 : f32 = u_xlat5.x;
  u_xlat27 = (-(x_869) + 1.0f);
  let x_873 : f32 = u_xlat16.x;
  let x_874 : f32 = u_xlat27;
  let x_877 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_873 * x_874) + x_877);
  let x_880 : f32 = u_xlat39;
  let x_883 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_880, x_880, x_880) * vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_886 : vec3<f32> = u_xlat14;
  let x_888 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_886), vec3<f32>(x_888.x, x_888.y, x_888.z));
  let x_893 : f32 = u_xlat7.x;
  let x_895 : f32 = u_xlat7.x;
  u_xlat7.x = (x_893 + x_895);
  let x_898 : vec4<f32> = u_xlat4;
  let x_900 : vec4<f32> = u_xlat7;
  let x_904 : vec3<f32> = u_xlat14;
  let x_906 : vec3<f32> = ((vec3<f32>(x_898.x, x_898.y, x_898.z) * -(vec3<f32>(x_900.x, x_900.x, x_900.x))) + -(x_904));
  let x_907 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_910 : vec4<f32> = u_xlat4;
  let x_912 : vec3<f32> = u_xlat14;
  u_xlat40 = dot(vec3<f32>(x_910.x, x_910.y, x_910.z), x_912);
  let x_914 : f32 = u_xlat40;
  u_xlat40 = clamp(x_914, 0.0f, 1.0f);
  let x_916 : f32 = u_xlat40;
  u_xlat40 = (-(x_916) + 1.0f);
  let x_919 : f32 = u_xlat40;
  let x_920 : f32 = u_xlat40;
  u_xlat40 = (x_919 * x_920);
  let x_922 : f32 = u_xlat40;
  let x_923 : f32 = u_xlat40;
  u_xlat40 = (x_922 * x_923);
  let x_926 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_926) * 0.699999988f) + 1.700000048f);
  let x_934 : f32 = u_xlat1.x;
  let x_936 : f32 = u_xlat8.x;
  u_xlat1.x = (x_934 * x_936);
  let x_940 : f32 = u_xlat1.x;
  u_xlat1.x = (x_940 * 6.0f);
  let x_952 : vec4<f32> = u_xlat7;
  let x_955 : f32 = u_xlat1.x;
  let x_956 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_952.x, x_952.y, x_952.z), x_955);
  u_xlat8 = x_956;
  let x_958 : f32 = u_xlat8.w;
  u_xlat1.x = (x_958 + -1.0f);
  let x_962 : f32 = x_187.unity_SpecCube0_HDR.w;
  let x_964 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_962 * x_964) + 1.0f);
  let x_969 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_969, 0.0f);
  let x_973 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_973);
  let x_977 : f32 = u_xlat1.x;
  let x_979 : f32 = x_187.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_977 * x_979);
  let x_983 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_983);
  let x_987 : f32 = u_xlat1.x;
  let x_989 : f32 = x_187.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_987 * x_989);
  let x_992 : vec4<f32> = u_xlat8;
  let x_994 : vec3<f32> = u_xlat1;
  let x_996 : vec3<f32> = (vec3<f32>(x_992.x, x_992.y, x_992.z) * vec3<f32>(x_994.x, x_994.x, x_994.x));
  let x_997 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec2<f32> = u_xlat23;
  let x_1001 : vec2<f32> = u_xlat23;
  let x_1005 : vec2<f32> = ((vec2<f32>(x_999.x, x_999.x) * vec2<f32>(x_1001.x, x_1001.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1006 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1005.x, x_1006.y, x_1005.y);
  let x_1009 : f32 = u_xlat1.z;
  u_xlat23.x = (1.0f / x_1009);
  let x_1012 : vec4<f32> = u_xlat0;
  let x_1015 : vec2<f32> = u_xlat12;
  let x_1017 : vec3<f32> = (-(vec3<f32>(x_1012.x, x_1012.y, x_1012.z)) + vec3<f32>(x_1015.x, x_1015.x, x_1015.x));
  let x_1018 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : f32 = u_xlat40;
  let x_1022 : vec4<f32> = u_xlat8;
  let x_1025 : vec4<f32> = u_xlat0;
  let x_1027 : vec3<f32> = ((vec3<f32>(x_1020, x_1020, x_1020) * vec3<f32>(x_1022.x, x_1022.y, x_1022.z)) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
  let x_1028 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1030 : vec2<f32> = u_xlat23;
  let x_1032 : vec4<f32> = u_xlat8;
  let x_1034 : vec3<f32> = (vec3<f32>(x_1030.x, x_1030.x, x_1030.x) * vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec4<f32> = u_xlat7;
  let x_1039 : vec4<f32> = u_xlat8;
  let x_1041 : vec3<f32> = (vec3<f32>(x_1037.x, x_1037.y, x_1037.z) * vec3<f32>(x_1039.x, x_1039.y, x_1039.z));
  let x_1042 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec4<f32> = u_xlat6;
  let x_1046 : vec3<f32> = u_xlat13;
  let x_1048 : vec4<f32> = u_xlat7;
  let x_1050 : vec3<f32> = ((vec3<f32>(x_1044.x, x_1044.y, x_1044.z) * x_1046) + vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
  let x_1051 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  let x_1054 : f32 = u_xlat5.x;
  let x_1056 : f32 = x_187.unity_LightData.z;
  u_xlat12.x = (x_1054 * x_1056);
  let x_1059 : vec4<f32> = u_xlat4;
  let x_1062 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat23.x = dot(vec3<f32>(x_1059.x, x_1059.y, x_1059.z), vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
  let x_1067 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_1067, 0.0f, 1.0f);
  let x_1071 : f32 = u_xlat23.x;
  let x_1073 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1071 * x_1073);
  let x_1076 : vec2<f32> = u_xlat12;
  let x_1078 : vec3<f32> = u_xlat16;
  let x_1079 : vec3<f32> = (vec3<f32>(x_1076.x, x_1076.x, x_1076.x) * x_1078);
  let x_1080 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1082 : vec3<f32> = u_xlat14;
  let x_1084 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1086 : vec3<f32> = (x_1082 + vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
  let x_1087 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
  let x_1089 : vec4<f32> = u_xlat7;
  let x_1091 : vec4<f32> = u_xlat7;
  u_xlat12.x = dot(vec3<f32>(x_1089.x, x_1089.y, x_1089.z), vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
  let x_1096 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_1096, 1.17549435e-37f);
  let x_1101 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_1101);
  let x_1104 : vec2<f32> = u_xlat12;
  let x_1106 : vec4<f32> = u_xlat7;
  let x_1108 : vec3<f32> = (vec3<f32>(x_1104.x, x_1104.x, x_1104.x) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1111 : vec4<f32> = u_xlat4;
  let x_1113 : vec4<f32> = u_xlat7;
  u_xlat12.x = dot(vec3<f32>(x_1111.x, x_1111.y, x_1111.z), vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1118 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_1118, 0.0f, 1.0f);
  let x_1122 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1124 : vec4<f32> = u_xlat7;
  u_xlat12.y = dot(vec3<f32>(x_1122.x, x_1122.y, x_1122.z), vec3<f32>(x_1124.x, x_1124.y, x_1124.z));
  let x_1129 : f32 = u_xlat12.y;
  u_xlat12.y = clamp(x_1129, 0.0f, 1.0f);
  let x_1132 : vec2<f32> = u_xlat12;
  let x_1133 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_1132 * x_1133);
  let x_1136 : f32 = u_xlat12.x;
  let x_1138 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_1136 * x_1138) + 1.000010014f);
  let x_1144 : f32 = u_xlat12.x;
  let x_1146 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1144 * x_1146);
  let x_1150 : f32 = u_xlat12.y;
  u_xlat23.x = max(x_1150, 0.100000001f);
  let x_1155 : f32 = u_xlat23.x;
  let x_1157 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1155 * x_1157);
  let x_1160 : f32 = u_xlat34;
  let x_1162 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1160 * x_1162);
  let x_1165 : f32 = u_xlat37;
  let x_1167 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1165 / x_1167);
  let x_1170 : vec4<f32> = u_xlat0;
  let x_1172 : vec2<f32> = u_xlat12;
  let x_1175 : vec3<f32> = u_xlat13;
  let x_1176 : vec3<f32> = ((vec3<f32>(x_1170.x, x_1170.y, x_1170.z) * vec3<f32>(x_1172.x, x_1172.x, x_1172.x)) + x_1175);
  let x_1177 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
  let x_1179 : vec4<f32> = u_xlat5;
  let x_1181 : vec4<f32> = u_xlat7;
  let x_1183 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) * vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1187 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1189 : f32 = x_187.unity_LightData.y;
  u_xlat12.x = min(x_1187, x_1189);
  let x_1194 : f32 = u_xlat12.x;
  u_xlatu12 = bitcast<u32>(i32(x_1194));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1206 : u32 = u_xlatu_loop_1;
    let x_1207 : u32 = u_xlatu12;
    if ((x_1206 < x_1207)) {
    } else {
      break;
    }
    let x_1210 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1210 >> 2u);
    let x_1213 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1213 & 3u));
    let x_1216 : u32 = u_xlatu38;
    let x_1219 : vec4<f32> = x_187.unity_LightIndices[bitcast<i32>(x_1216)];
    let x_1229 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1234 : vec4<u32> = indexable[x_1229];
    u_xlat38 = dot(x_1219, bitcast<vec4<f32>>(x_1234));
    let x_1238 : f32 = u_xlat38;
    u_xlati38 = i32(x_1238);
    let x_1240 : vec3<f32> = vs_TEXCOORD1;
    let x_1252 : i32 = u_xlati38;
    let x_1254 : vec4<f32> = x_1251.x_AdditionalLightsPosition[x_1252];
    let x_1257 : i32 = u_xlati38;
    let x_1259 : vec4<f32> = x_1251.x_AdditionalLightsPosition[x_1257];
    let x_1261 : vec3<f32> = ((-(x_1240) * vec3<f32>(x_1254.w, x_1254.w, x_1254.w)) + vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
    let x_1262 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
    let x_1264 : vec4<f32> = u_xlat8;
    let x_1266 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1264.x, x_1264.y, x_1264.z), vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
    let x_1269 : f32 = u_xlat40;
    u_xlat40 = max(x_1269, 6.10351562e-05f);
    let x_1273 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1273);
    let x_1276 : f32 = u_xlat41;
    let x_1278 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1276, x_1276, x_1276) * vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
    let x_1282 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1282);
    let x_1284 : f32 = u_xlat40;
    let x_1285 : i32 = u_xlati38;
    let x_1287 : f32 = x_1251.x_AdditionalLightsAttenuation[x_1285].x;
    u_xlat40 = (x_1284 * x_1287);
    let x_1289 : f32 = u_xlat40;
    let x_1291 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1289) * x_1291) + 1.0f);
    let x_1294 : f32 = u_xlat40;
    u_xlat40 = max(x_1294, 0.0f);
    let x_1296 : f32 = u_xlat40;
    let x_1297 : f32 = u_xlat40;
    u_xlat40 = (x_1296 * x_1297);
    let x_1299 : f32 = u_xlat40;
    let x_1300 : f32 = u_xlat42;
    u_xlat40 = (x_1299 * x_1300);
    let x_1302 : i32 = u_xlati38;
    let x_1304 : vec4<f32> = x_1251.x_AdditionalLightsSpotDir[x_1302];
    let x_1306 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1304.x, x_1304.y, x_1304.z), x_1306);
    let x_1308 : f32 = u_xlat42;
    let x_1309 : i32 = u_xlati38;
    let x_1311 : f32 = x_1251.x_AdditionalLightsAttenuation[x_1309].z;
    let x_1313 : i32 = u_xlati38;
    let x_1315 : f32 = x_1251.x_AdditionalLightsAttenuation[x_1313].w;
    u_xlat42 = ((x_1308 * x_1311) + x_1315);
    let x_1317 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1317, 0.0f, 1.0f);
    let x_1319 : f32 = u_xlat42;
    let x_1320 : f32 = u_xlat42;
    u_xlat42 = (x_1319 * x_1320);
    let x_1322 : f32 = u_xlat40;
    let x_1323 : f32 = u_xlat42;
    u_xlat40 = (x_1322 * x_1323);
    let x_1326 : f32 = u_xlat39;
    let x_1328 : i32 = u_xlati38;
    let x_1330 : vec4<f32> = x_1251.x_AdditionalLightsColor[x_1328];
    u_xlat10 = (vec3<f32>(x_1326, x_1326, x_1326) * vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
    let x_1333 : vec4<f32> = u_xlat4;
    let x_1335 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(vec3<f32>(x_1333.x, x_1333.y, x_1333.z), x_1335);
    let x_1337 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1337, 0.0f, 1.0f);
    let x_1339 : f32 = u_xlat38;
    let x_1340 : f32 = u_xlat40;
    u_xlat38 = (x_1339 * x_1340);
    let x_1342 : f32 = u_xlat38;
    let x_1344 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1342, x_1342, x_1342) * x_1344);
    let x_1346 : vec4<f32> = u_xlat8;
    let x_1348 : f32 = u_xlat41;
    let x_1351 : vec3<f32> = u_xlat14;
    let x_1352 : vec3<f32> = ((vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(x_1348, x_1348, x_1348)) + x_1351);
    let x_1353 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
    let x_1355 : vec4<f32> = u_xlat8;
    let x_1357 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1355.x, x_1355.y, x_1355.z), vec3<f32>(x_1357.x, x_1357.y, x_1357.z));
    let x_1360 : f32 = u_xlat38;
    u_xlat38 = max(x_1360, 1.17549435e-37f);
    let x_1362 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1362);
    let x_1364 : f32 = u_xlat38;
    let x_1366 : vec4<f32> = u_xlat8;
    let x_1368 : vec3<f32> = (vec3<f32>(x_1364, x_1364, x_1364) * vec3<f32>(x_1366.x, x_1366.y, x_1366.z));
    let x_1369 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1369.w);
    let x_1371 : vec4<f32> = u_xlat4;
    let x_1373 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1371.x, x_1371.y, x_1371.z), vec3<f32>(x_1373.x, x_1373.y, x_1373.z));
    let x_1376 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1376, 0.0f, 1.0f);
    let x_1378 : vec3<f32> = u_xlat9;
    let x_1379 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1378, vec3<f32>(x_1379.x, x_1379.y, x_1379.z));
    let x_1382 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1382, 0.0f, 1.0f);
    let x_1384 : f32 = u_xlat38;
    let x_1385 : f32 = u_xlat38;
    u_xlat38 = (x_1384 * x_1385);
    let x_1387 : f32 = u_xlat38;
    let x_1389 : f32 = u_xlat1.x;
    u_xlat38 = ((x_1387 * x_1389) + 1.000010014f);
    let x_1392 : f32 = u_xlat40;
    let x_1393 : f32 = u_xlat40;
    u_xlat40 = (x_1392 * x_1393);
    let x_1395 : f32 = u_xlat38;
    let x_1396 : f32 = u_xlat38;
    u_xlat38 = (x_1395 * x_1396);
    let x_1398 : f32 = u_xlat40;
    u_xlat40 = max(x_1398, 0.100000001f);
    let x_1400 : f32 = u_xlat38;
    let x_1401 : f32 = u_xlat40;
    u_xlat38 = (x_1400 * x_1401);
    let x_1403 : f32 = u_xlat34;
    let x_1404 : f32 = u_xlat38;
    u_xlat38 = (x_1403 * x_1404);
    let x_1406 : f32 = u_xlat37;
    let x_1407 : f32 = u_xlat38;
    u_xlat38 = (x_1406 / x_1407);
    let x_1409 : vec4<f32> = u_xlat0;
    let x_1411 : f32 = u_xlat38;
    let x_1414 : vec3<f32> = u_xlat13;
    let x_1415 : vec3<f32> = ((vec3<f32>(x_1409.x, x_1409.y, x_1409.z) * vec3<f32>(x_1411, x_1411, x_1411)) + x_1414);
    let x_1416 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1415.x, x_1415.y, x_1415.z, x_1416.w);
    let x_1418 : vec4<f32> = u_xlat8;
    let x_1420 : vec3<f32> = u_xlat10;
    let x_1422 : vec4<f32> = u_xlat7;
    let x_1424 : vec3<f32> = ((vec3<f32>(x_1418.x, x_1418.y, x_1418.z) * x_1420) + vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
    let x_1425 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1424.x, x_1424.y, x_1424.z, x_1425.w);

    continuing {
      let x_1427 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1427 + bitcast<u32>(1i));
    }
  }
  let x_1429 : vec4<f32> = u_xlat6;
  let x_1431 : vec3<f32> = u_xlat3;
  let x_1434 : vec4<f32> = u_xlat5;
  let x_1436 : vec3<f32> = ((vec3<f32>(x_1429.x, x_1429.y, x_1429.z) * vec3<f32>(x_1431.x, x_1431.x, x_1431.x)) + vec3<f32>(x_1434.x, x_1434.y, x_1434.z));
  let x_1437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
  let x_1439 : vec4<f32> = u_xlat7;
  let x_1441 : vec4<f32> = u_xlat0;
  let x_1443 : vec3<f32> = (vec3<f32>(x_1439.x, x_1439.y, x_1439.z) + vec3<f32>(x_1441.x, x_1441.y, x_1441.z));
  let x_1444 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
  let x_1446 : f32 = u_xlat33;
  let x_1447 : f32 = u_xlat33;
  u_xlat33 = (x_1446 * -(x_1447));
  let x_1450 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1450);
  let x_1452 : vec4<f32> = u_xlat0;
  let x_1456 : vec4<f32> = x_44.unity_FogColor;
  let x_1459 : vec3<f32> = (vec3<f32>(x_1452.x, x_1452.y, x_1452.z) + -(vec3<f32>(x_1456.x, x_1456.y, x_1456.z)));
  let x_1460 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
  let x_1464 : f32 = u_xlat33;
  let x_1466 : vec4<f32> = u_xlat0;
  let x_1470 : vec4<f32> = x_44.unity_FogColor;
  let x_1472 : vec3<f32> = ((vec3<f32>(x_1464, x_1464, x_1464) * vec3<f32>(x_1466.x, x_1466.y, x_1466.z)) + vec3<f32>(x_1470.x, x_1470.y, x_1470.z));
  let x_1473 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
  let x_1478 : f32 = x_71.x_Surface;
  u_xlatb0 = (x_1478 == 1.0f);
  let x_1480 : bool = u_xlatb0;
  if (x_1480) {
    let x_1485 : f32 = u_xlat2.x;
    x_1481 = x_1485;
  } else {
    x_1481 = 1.0f;
  }
  let x_1487 : f32 = x_1481;
  SV_Target0.w = x_1487;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

