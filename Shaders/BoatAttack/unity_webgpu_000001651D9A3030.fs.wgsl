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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_94 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_212 : MainLightShadows;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_976 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat33 : f32;
  var u_xlatb2 : bool;
  var x_100 : f32;
  var u_xlatb33 : bool;
  var u_xlat35 : f32;
  var u_xlat3 : vec3<f32>;
  var x_160 : f32;
  var x_172 : f32;
  var x_184 : f32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat17 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlatb15 : bool;
  var u_xlatb26 : bool;
  var x_646 : f32;
  var u_xlat26 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu36 : u32;
  var u_xlati39 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati36 : i32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1175 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_65 : vec4<f32> = hlslcc_FragCoord;
  let x_69 : f32 = x_44.x_DitheringTextureInvSize;
  let x_71 : vec2<f32> = (vec2<f32>(x_65.x, x_65.y) * vec2<f32>(x_69, x_69));
  let x_72 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  let x_81 : vec4<f32> = u_xlat2;
  let x_84 : f32 = x_44.x_GlobalMipBias.x;
  let x_85 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_81.x, x_81.y), x_84);
  u_xlat33 = x_85.w;
  let x_96 : f32 = x_94.unity_LODFade.x;
  u_xlatb2 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb2;
  if (x_99) {
    let x_103 : f32 = u_xlat33;
    x_100 = abs(x_103);
  } else {
    let x_106 : f32 = u_xlat33;
    x_100 = -(abs(x_106));
  }
  let x_109 : f32 = x_100;
  u_xlat33 = x_109;
  let x_110 : f32 = u_xlat33;
  let x_113 : f32 = x_94.unity_LODFade.x;
  u_xlat33 = (-(x_110) + x_113);
  let x_116 : f32 = u_xlat33;
  u_xlatb33 = (x_116 < 0.0f);
  let x_118 : bool = u_xlatb33;
  if (((select(0i, 1i, x_118) * -1i) != 0i)) {
    discard;
  }
  let x_129 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb33 = (x_129 == 0.0f);
  let x_133 : vec3<f32> = vs_TEXCOORD1;
  let x_138 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_139 : vec3<f32> = (-(x_133) + x_138);
  let x_140 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat35 = dot(vec3<f32>(x_143.x, x_143.y, x_143.z), vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_148);
  let x_150 : f32 = u_xlat35;
  let x_152 : vec4<f32> = u_xlat2;
  let x_154 : vec3<f32> = (vec3<f32>(x_150, x_150, x_150) * vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_159 : bool = u_xlatb33;
  if (x_159) {
    let x_164 : f32 = u_xlat2.x;
    x_160 = x_164;
  } else {
    let x_168 : f32 = x_44.unity_MatrixV[0i].z;
    x_160 = x_168;
  }
  let x_169 : f32 = x_160;
  u_xlat3.x = x_169;
  let x_171 : bool = u_xlatb33;
  if (x_171) {
    let x_177 : f32 = u_xlat2.y;
    x_172 = x_177;
  } else {
    let x_180 : f32 = x_44.unity_MatrixV[1i].z;
    x_172 = x_180;
  }
  let x_181 : f32 = x_172;
  u_xlat3.y = x_181;
  let x_183 : bool = u_xlatb33;
  if (x_183) {
    let x_188 : f32 = u_xlat2.z;
    x_184 = x_188;
  } else {
    let x_191 : f32 = x_44.unity_MatrixV[2i].z;
    x_184 = x_191;
  }
  let x_192 : f32 = x_184;
  u_xlat3.z = x_192;
  let x_195 : vec3<f32> = vs_TEXCOORD2;
  let x_196 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_195, x_196);
  let x_198 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_198);
  let x_200 : f32 = u_xlat33;
  let x_202 : vec3<f32> = vs_TEXCOORD2;
  let x_203 : vec3<f32> = (vec3<f32>(x_200, x_200, x_200) * x_202);
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec3<f32> = vs_TEXCOORD1;
  let x_214 : vec4<f32> = x_212.x_CascadeShadowSplitSpheres0;
  let x_217 : vec3<f32> = (x_207 + -(vec3<f32>(x_214.x, x_214.y, x_214.z)));
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_221 : vec3<f32> = vs_TEXCOORD1;
  let x_223 : vec4<f32> = x_212.x_CascadeShadowSplitSpheres1;
  let x_226 : vec3<f32> = (x_221 + -(vec3<f32>(x_223.x, x_223.y, x_223.z)));
  let x_227 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_230 : vec3<f32> = vs_TEXCOORD1;
  let x_233 : vec4<f32> = x_212.x_CascadeShadowSplitSpheres2;
  let x_236 : vec3<f32> = (x_230 + -(vec3<f32>(x_233.x, x_233.y, x_233.z)));
  let x_237 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_240 : vec3<f32> = vs_TEXCOORD1;
  let x_243 : vec4<f32> = x_212.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_240 + -(vec3<f32>(x_243.x, x_243.y, x_243.z)));
  let x_247 : vec4<f32> = u_xlat4;
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_247.x, x_247.y, x_247.z), vec3<f32>(x_249.x, x_249.y, x_249.z));
  let x_253 : vec4<f32> = u_xlat5;
  let x_255 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_259 : vec4<f32> = u_xlat6;
  let x_261 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_259.x, x_259.y, x_259.z), vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_265 : vec3<f32> = u_xlat7;
  let x_266 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_265, x_266);
  let x_272 : vec4<f32> = u_xlat4;
  let x_275 : vec4<f32> = x_212.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_272 < x_275);
  let x_278 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_278);
  let x_282 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_282);
  let x_286 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_286);
  let x_290 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_290);
  let x_294 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_294);
  let x_300 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_300);
  let x_304 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_304);
  let x_307 : vec4<f32> = u_xlat4;
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + vec3<f32>(x_309.y, x_309.z, x_309.w));
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat4;
  let x_317 : vec3<f32> = max(vec3<f32>(x_314.x, x_314.y, x_314.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_318 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_318.x, x_317.x, x_317.y, x_317.z);
  let x_320 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_320, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_326 : f32 = u_xlat33;
  u_xlat33 = (-(x_326) + 4.0f);
  let x_331 : f32 = u_xlat33;
  u_xlatu33 = u32(x_331);
  let x_335 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_335) << bitcast<u32>(2i));
  let x_338 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : i32 = u_xlati33;
  let x_343 : i32 = u_xlati33;
  let x_347 : vec4<f32> = x_212.x_MainLightWorldToShadow[((x_340 + 1i) / 4i)][((x_343 + 1i) % 4i)];
  let x_349 : vec3<f32> = (vec3<f32>(x_338.y, x_338.y, x_338.y) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_352 : i32 = u_xlati33;
  let x_354 : i32 = u_xlati33;
  let x_357 : vec4<f32> = x_212.x_MainLightWorldToShadow[(x_352 / 4i)][(x_354 % 4i)];
  let x_359 : vec3<f32> = vs_TEXCOORD1;
  let x_362 : vec4<f32> = u_xlat4;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359.x, x_359.x, x_359.x)) + vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : i32 = u_xlati33;
  let x_370 : i32 = u_xlati33;
  let x_374 : vec4<f32> = x_212.x_MainLightWorldToShadow[((x_367 + 2i) / 4i)][((x_370 + 2i) % 4i)];
  let x_376 : vec3<f32> = vs_TEXCOORD1;
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_376.z, x_376.z, x_376.z)) + vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat4;
  let x_386 : i32 = u_xlati33;
  let x_389 : i32 = u_xlati33;
  let x_393 : vec4<f32> = x_212.x_MainLightWorldToShadow[((x_386 + 3i) / 4i)][((x_389 + 3i) % 4i)];
  let x_395 : vec3<f32> = (vec3<f32>(x_384.x, x_384.y, x_384.z) + vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  u_xlat2.w = 1.0f;
  let x_401 : vec4<f32> = x_94.unity_SHAr;
  let x_402 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(x_401, x_402);
  let x_407 : vec4<f32> = x_94.unity_SHAg;
  let x_408 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(x_407, x_408);
  let x_413 : vec4<f32> = x_94.unity_SHAb;
  let x_414 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_413, x_414);
  let x_417 : vec4<f32> = u_xlat2;
  let x_419 : vec4<f32> = u_xlat2;
  u_xlat6 = (vec4<f32>(x_417.y, x_417.z, x_417.z, x_417.x) * vec4<f32>(x_419.x, x_419.y, x_419.z, x_419.z));
  let x_424 : vec4<f32> = x_94.unity_SHBr;
  let x_425 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_424, x_425);
  let x_430 : vec4<f32> = x_94.unity_SHBg;
  let x_431 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_430, x_431);
  let x_436 : vec4<f32> = x_94.unity_SHBb;
  let x_437 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_436, x_437);
  let x_441 : f32 = u_xlat2.y;
  let x_443 : f32 = u_xlat2.y;
  u_xlat33 = (x_441 * x_443);
  let x_446 : f32 = u_xlat2.x;
  let x_448 : f32 = u_xlat2.x;
  let x_450 : f32 = u_xlat33;
  u_xlat33 = ((x_446 * x_448) + -(x_450));
  let x_455 : vec4<f32> = x_94.unity_SHC;
  let x_457 : f32 = u_xlat33;
  let x_460 : vec3<f32> = u_xlat7;
  let x_461 : vec3<f32> = ((vec3<f32>(x_455.x, x_455.y, x_455.z) * vec3<f32>(x_457, x_457, x_457)) + x_460);
  let x_462 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_464 : vec4<f32> = u_xlat5;
  let x_466 : vec4<f32> = u_xlat6;
  let x_468 : vec3<f32> = (vec3<f32>(x_464.x, x_464.y, x_464.z) + vec3<f32>(x_466.x, x_466.y, x_466.z));
  let x_469 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
  let x_471 : vec4<f32> = u_xlat5;
  let x_473 : vec3<f32> = max(vec3<f32>(x_471.x, x_471.y, x_471.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_474 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_478 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_479 : vec2<f32> = vec2<f32>(x_478.x, x_478.y);
  let x_483 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_479.x, x_479.y));
  let x_484 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_483.x, x_483.y, x_484.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat6;
  let x_488 : vec4<f32> = hlslcc_FragCoord;
  let x_490 : vec2<f32> = (vec2<f32>(x_486.x, x_486.y) * vec2<f32>(x_488.x, x_488.y));
  let x_491 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
  let x_494 : f32 = u_xlat6.y;
  let x_497 : f32 = x_44.x_ScaleBiasRt.x;
  let x_500 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_494 * x_497) + x_500);
  let x_502 : f32 = u_xlat33;
  u_xlat6.z = (-(x_502) + 1.0f);
  let x_507 : f32 = x_57.x_Metallic;
  u_xlat33 = ((-(x_507) * 0.959999979f) + 0.959999979f);
  let x_512 : f32 = u_xlat33;
  u_xlat35 = (-(x_512) + 1.0f);
  let x_516 : f32 = u_xlat33;
  let x_518 : vec4<f32> = u_xlat1;
  u_xlat12 = (vec3<f32>(x_516, x_516, x_516) * vec3<f32>(x_518.y, x_518.z, x_518.w));
  let x_521 : vec4<f32> = u_xlat0;
  let x_524 : vec4<f32> = x_57.x_BaseColor;
  let x_529 : vec3<f32> = ((vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(x_524.x, x_524.y, x_524.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_530 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_533 : f32 = x_57.x_Metallic;
  let x_535 : f32 = x_57.x_Metallic;
  let x_537 : f32 = x_57.x_Metallic;
  let x_538 : vec3<f32> = vec3<f32>(x_533, x_535, x_537);
  let x_543 : vec4<f32> = u_xlat0;
  let x_548 : vec3<f32> = ((vec3<f32>(x_538.x, x_538.y, x_538.z) * vec3<f32>(x_543.x, x_543.y, x_543.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_549 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
  let x_552 : f32 = x_57.x_Smoothness;
  u_xlat33 = (-(x_552) + 1.0f);
  let x_556 : f32 = u_xlat33;
  let x_557 : f32 = u_xlat33;
  u_xlat36 = (x_556 * x_557);
  let x_559 : f32 = u_xlat36;
  u_xlat36 = max(x_559, 0.0078125f);
  let x_563 : f32 = u_xlat36;
  let x_564 : f32 = u_xlat36;
  u_xlat37 = (x_563 * x_564);
  let x_566 : f32 = u_xlat35;
  let x_568 : f32 = x_57.x_Smoothness;
  u_xlat35 = (x_566 + x_568);
  let x_570 : f32 = u_xlat35;
  u_xlat35 = clamp(x_570, 0.0f, 1.0f);
  let x_573 : f32 = u_xlat36;
  u_xlat38 = ((x_573 * 4.0f) + 2.0f);
  let x_581 : vec4<f32> = u_xlat6;
  let x_584 : f32 = x_44.x_GlobalMipBias.x;
  let x_585 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_581.x, x_581.z), x_584);
  u_xlat6.x = x_585.x;
  let x_590 : f32 = u_xlat6.x;
  u_xlat17 = (x_590 + -1.0f);
  let x_593 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_594 : f32 = u_xlat17;
  u_xlat17 = ((x_593 * x_594) + 1.0f);
  let x_598 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_598, 1.0f);
  let x_602 : vec4<f32> = u_xlat4;
  let x_603 : vec2<f32> = vec2<f32>(x_602.x, x_602.y);
  let x_605 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_603.x, x_603.y, x_605);
  let x_617 : vec3<f32> = txVec0;
  let x_619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_617.xy, x_617.z);
  u_xlat4.x = x_619;
  let x_623 : f32 = x_212.x_MainLightShadowParams.x;
  u_xlat15 = (-(x_623) + 1.0f);
  let x_627 : f32 = u_xlat4.x;
  let x_629 : f32 = x_212.x_MainLightShadowParams.x;
  let x_631 : f32 = u_xlat15;
  u_xlat4.x = ((x_627 * x_629) + x_631);
  let x_636 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_636);
  let x_640 : f32 = u_xlat4.z;
  u_xlatb26 = (x_640 >= 1.0f);
  let x_642 : bool = u_xlatb26;
  let x_643 : bool = u_xlatb15;
  u_xlatb15 = (x_642 | x_643);
  let x_645 : bool = u_xlatb15;
  if (x_645) {
    x_646 = 1.0f;
  } else {
    let x_651 : f32 = u_xlat4.x;
    x_646 = x_651;
  }
  let x_652 : f32 = x_646;
  u_xlat4.x = x_652;
  let x_654 : vec3<f32> = vs_TEXCOORD1;
  let x_656 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_654 + -(x_656));
  let x_659 : vec3<f32> = u_xlat7;
  let x_660 : vec3<f32> = u_xlat7;
  u_xlat15 = dot(x_659, x_660);
  let x_662 : f32 = u_xlat15;
  let x_664 : f32 = x_212.x_MainLightShadowParams.z;
  let x_667 : f32 = x_212.x_MainLightShadowParams.w;
  u_xlat15 = ((x_662 * x_664) + x_667);
  let x_669 : f32 = u_xlat15;
  u_xlat15 = clamp(x_669, 0.0f, 1.0f);
  let x_673 : f32 = u_xlat4.x;
  u_xlat26 = (-(x_673) + 1.0f);
  let x_676 : f32 = u_xlat15;
  let x_677 : f32 = u_xlat26;
  let x_680 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_676 * x_677) + x_680);
  let x_683 : f32 = u_xlat17;
  let x_686 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_683, x_683, x_683) * vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : vec3<f32> = u_xlat3;
  let x_691 : vec4<f32> = u_xlat2;
  u_xlat15 = dot(-(x_689), vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : f32 = u_xlat15;
  let x_695 : f32 = u_xlat15;
  u_xlat15 = (x_694 + x_695);
  let x_698 : vec4<f32> = u_xlat2;
  let x_700 : f32 = u_xlat15;
  let x_704 : vec3<f32> = u_xlat3;
  let x_706 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.y, x_698.z) * -(vec3<f32>(x_700, x_700, x_700))) + -(x_704));
  let x_707 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat2;
  let x_711 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(vec3<f32>(x_709.x, x_709.y, x_709.z), x_711);
  let x_713 : f32 = u_xlat15;
  u_xlat15 = clamp(x_713, 0.0f, 1.0f);
  let x_715 : f32 = u_xlat15;
  u_xlat15 = (-(x_715) + 1.0f);
  let x_718 : f32 = u_xlat15;
  let x_719 : f32 = u_xlat15;
  u_xlat15 = (x_718 * x_719);
  let x_721 : f32 = u_xlat15;
  let x_722 : f32 = u_xlat15;
  u_xlat15 = (x_721 * x_722);
  let x_724 : f32 = u_xlat33;
  u_xlat26 = ((-(x_724) * 0.699999988f) + 1.700000048f);
  let x_730 : f32 = u_xlat33;
  let x_731 : f32 = u_xlat26;
  u_xlat33 = (x_730 * x_731);
  let x_733 : f32 = u_xlat33;
  u_xlat33 = (x_733 * 6.0f);
  let x_744 : vec4<f32> = u_xlat8;
  let x_746 : f32 = u_xlat33;
  let x_747 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_744.x, x_744.y, x_744.z), x_746);
  u_xlat8 = x_747;
  let x_749 : f32 = u_xlat8.w;
  u_xlat33 = (x_749 + -1.0f);
  let x_752 : f32 = x_94.unity_SpecCube0_HDR.w;
  let x_753 : f32 = u_xlat33;
  u_xlat33 = ((x_752 * x_753) + 1.0f);
  let x_756 : f32 = u_xlat33;
  u_xlat33 = max(x_756, 0.0f);
  let x_758 : f32 = u_xlat33;
  u_xlat33 = log2(x_758);
  let x_760 : f32 = u_xlat33;
  let x_762 : f32 = x_94.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_760 * x_762);
  let x_764 : f32 = u_xlat33;
  u_xlat33 = exp2(x_764);
  let x_766 : f32 = u_xlat33;
  let x_768 : f32 = x_94.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_766 * x_768);
  let x_770 : vec4<f32> = u_xlat8;
  let x_772 : f32 = u_xlat33;
  let x_774 : vec3<f32> = (vec3<f32>(x_770.x, x_770.y, x_770.z) * vec3<f32>(x_772, x_772, x_772));
  let x_775 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_779 : f32 = u_xlat36;
  let x_781 : f32 = u_xlat36;
  u_xlat28 = ((vec2<f32>(x_779, x_779) * vec2<f32>(x_781, x_781)) + vec2<f32>(-1.0f, 1.0f));
  let x_787 : f32 = u_xlat28.y;
  u_xlat33 = (1.0f / x_787);
  let x_790 : vec4<f32> = u_xlat0;
  let x_793 : f32 = u_xlat35;
  u_xlat9 = (-(vec3<f32>(x_790.x, x_790.y, x_790.z)) + vec3<f32>(x_793, x_793, x_793));
  let x_796 : f32 = u_xlat15;
  let x_798 : vec3<f32> = u_xlat9;
  let x_800 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_796, x_796, x_796) * x_798) + vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : f32 = u_xlat33;
  let x_805 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_803, x_803, x_803) * x_805);
  let x_807 : vec4<f32> = u_xlat8;
  let x_809 : vec3<f32> = u_xlat9;
  let x_810 : vec3<f32> = (vec3<f32>(x_807.x, x_807.y, x_807.z) * x_809);
  let x_811 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat5;
  let x_815 : vec3<f32> = u_xlat12;
  let x_817 : vec4<f32> = u_xlat8;
  let x_819 : vec3<f32> = ((vec3<f32>(x_813.x, x_813.y, x_813.z) * x_815) + vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_823 : f32 = u_xlat4.x;
  let x_825 : f32 = x_94.unity_LightData.z;
  u_xlat33 = (x_823 * x_825);
  let x_827 : vec4<f32> = u_xlat2;
  let x_830 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat35 = dot(vec3<f32>(x_827.x, x_827.y, x_827.z), vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : f32 = u_xlat35;
  u_xlat35 = clamp(x_833, 0.0f, 1.0f);
  let x_835 : f32 = u_xlat33;
  let x_836 : f32 = u_xlat35;
  u_xlat33 = (x_835 * x_836);
  let x_838 : f32 = u_xlat33;
  let x_840 : vec3<f32> = u_xlat7;
  let x_841 : vec3<f32> = (vec3<f32>(x_838, x_838, x_838) * x_840);
  let x_842 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec3<f32> = u_xlat3;
  let x_846 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_844 + vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : vec3<f32> = u_xlat7;
  let x_850 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_849, x_850);
  let x_852 : f32 = u_xlat33;
  u_xlat33 = max(x_852, 1.17549435e-37f);
  let x_855 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_855);
  let x_857 : f32 = u_xlat33;
  let x_859 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_857, x_857, x_857) * x_859);
  let x_861 : vec4<f32> = u_xlat2;
  let x_863 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_861.x, x_861.y, x_861.z), x_863);
  let x_865 : f32 = u_xlat33;
  u_xlat33 = clamp(x_865, 0.0f, 1.0f);
  let x_868 : vec4<f32> = x_44.x_MainLightPosition;
  let x_870 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_868.x, x_868.y, x_868.z), x_870);
  let x_872 : f32 = u_xlat35;
  u_xlat35 = clamp(x_872, 0.0f, 1.0f);
  let x_874 : f32 = u_xlat33;
  let x_875 : f32 = u_xlat33;
  u_xlat33 = (x_874 * x_875);
  let x_877 : f32 = u_xlat33;
  let x_879 : f32 = u_xlat28.x;
  u_xlat33 = ((x_877 * x_879) + 1.000010014f);
  let x_883 : f32 = u_xlat35;
  let x_884 : f32 = u_xlat35;
  u_xlat35 = (x_883 * x_884);
  let x_886 : f32 = u_xlat33;
  let x_887 : f32 = u_xlat33;
  u_xlat33 = (x_886 * x_887);
  let x_889 : f32 = u_xlat35;
  u_xlat35 = max(x_889, 0.100000001f);
  let x_892 : f32 = u_xlat33;
  let x_893 : f32 = u_xlat35;
  u_xlat33 = (x_892 * x_893);
  let x_895 : f32 = u_xlat38;
  let x_896 : f32 = u_xlat33;
  u_xlat33 = (x_895 * x_896);
  let x_898 : f32 = u_xlat37;
  let x_899 : f32 = u_xlat33;
  u_xlat33 = (x_898 / x_899);
  let x_901 : vec4<f32> = u_xlat0;
  let x_903 : f32 = u_xlat33;
  let x_906 : vec3<f32> = u_xlat12;
  u_xlat7 = ((vec3<f32>(x_901.x, x_901.y, x_901.z) * vec3<f32>(x_903, x_903, x_903)) + x_906);
  let x_908 : vec4<f32> = u_xlat4;
  let x_910 : vec3<f32> = u_xlat7;
  let x_911 : vec3<f32> = (vec3<f32>(x_908.x, x_908.y, x_908.z) * x_910);
  let x_912 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_915 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_917 : f32 = x_94.unity_LightData.y;
  u_xlat33 = min(x_915, x_917);
  let x_919 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_919));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_931 : u32 = u_xlatu_loop_1;
    let x_932 : u32 = u_xlatu33;
    if ((x_931 < x_932)) {
    } else {
      break;
    }
    let x_935 : u32 = u_xlatu_loop_1;
    u_xlatu36 = (x_935 >> 2u);
    let x_938 : u32 = u_xlatu_loop_1;
    u_xlati39 = bitcast<i32>((x_938 & 3u));
    let x_941 : u32 = u_xlatu36;
    let x_944 : vec4<f32> = x_94.unity_LightIndices[bitcast<i32>(x_941)];
    let x_954 : i32 = u_xlati39;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_959 : vec4<u32> = indexable[x_954];
    u_xlat36 = dot(x_944, bitcast<vec4<f32>>(x_959));
    let x_963 : f32 = u_xlat36;
    u_xlati36 = i32(x_963);
    let x_965 : vec3<f32> = vs_TEXCOORD1;
    let x_977 : i32 = u_xlati36;
    let x_979 : vec4<f32> = x_976.x_AdditionalLightsPosition[x_977];
    let x_982 : i32 = u_xlati36;
    let x_984 : vec4<f32> = x_976.x_AdditionalLightsPosition[x_982];
    let x_986 : vec3<f32> = ((-(x_965) * vec3<f32>(x_979.w, x_979.w, x_979.w)) + vec3<f32>(x_984.x, x_984.y, x_984.z));
    let x_987 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
    let x_990 : vec4<f32> = u_xlat8;
    let x_992 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_990.x, x_990.y, x_990.z), vec3<f32>(x_992.x, x_992.y, x_992.z));
    let x_995 : f32 = u_xlat39;
    u_xlat39 = max(x_995, 6.10351562e-05f);
    let x_999 : f32 = u_xlat39;
    u_xlat40 = inverseSqrt(x_999);
    let x_1001 : f32 = u_xlat40;
    let x_1003 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1001, x_1001, x_1001) * vec3<f32>(x_1003.x, x_1003.y, x_1003.z));
    let x_1007 : f32 = u_xlat39;
    u_xlat41 = (1.0f / x_1007);
    let x_1009 : f32 = u_xlat39;
    let x_1010 : i32 = u_xlati36;
    let x_1012 : f32 = x_976.x_AdditionalLightsAttenuation[x_1010].x;
    u_xlat39 = (x_1009 * x_1012);
    let x_1014 : f32 = u_xlat39;
    let x_1016 : f32 = u_xlat39;
    u_xlat39 = ((-(x_1014) * x_1016) + 1.0f);
    let x_1019 : f32 = u_xlat39;
    u_xlat39 = max(x_1019, 0.0f);
    let x_1021 : f32 = u_xlat39;
    let x_1022 : f32 = u_xlat39;
    u_xlat39 = (x_1021 * x_1022);
    let x_1024 : f32 = u_xlat39;
    let x_1025 : f32 = u_xlat41;
    u_xlat39 = (x_1024 * x_1025);
    let x_1027 : i32 = u_xlati36;
    let x_1029 : vec4<f32> = x_976.x_AdditionalLightsSpotDir[x_1027];
    let x_1031 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1029.x, x_1029.y, x_1029.z), x_1031);
    let x_1033 : f32 = u_xlat41;
    let x_1034 : i32 = u_xlati36;
    let x_1036 : f32 = x_976.x_AdditionalLightsAttenuation[x_1034].z;
    let x_1038 : i32 = u_xlati36;
    let x_1040 : f32 = x_976.x_AdditionalLightsAttenuation[x_1038].w;
    u_xlat41 = ((x_1033 * x_1036) + x_1040);
    let x_1042 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1042, 0.0f, 1.0f);
    let x_1044 : f32 = u_xlat41;
    let x_1045 : f32 = u_xlat41;
    u_xlat41 = (x_1044 * x_1045);
    let x_1047 : f32 = u_xlat39;
    let x_1048 : f32 = u_xlat41;
    u_xlat39 = (x_1047 * x_1048);
    let x_1051 : f32 = u_xlat17;
    let x_1053 : i32 = u_xlati36;
    let x_1055 : vec4<f32> = x_976.x_AdditionalLightsColor[x_1053];
    u_xlat10 = (vec3<f32>(x_1051, x_1051, x_1051) * vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
    let x_1058 : vec4<f32> = u_xlat2;
    let x_1060 : vec3<f32> = u_xlat9;
    u_xlat36 = dot(vec3<f32>(x_1058.x, x_1058.y, x_1058.z), x_1060);
    let x_1062 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1062, 0.0f, 1.0f);
    let x_1064 : f32 = u_xlat36;
    let x_1065 : f32 = u_xlat39;
    u_xlat36 = (x_1064 * x_1065);
    let x_1067 : f32 = u_xlat36;
    let x_1069 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1067, x_1067, x_1067) * x_1069);
    let x_1071 : vec4<f32> = u_xlat8;
    let x_1073 : f32 = u_xlat40;
    let x_1076 : vec3<f32> = u_xlat3;
    let x_1077 : vec3<f32> = ((vec3<f32>(x_1071.x, x_1071.y, x_1071.z) * vec3<f32>(x_1073, x_1073, x_1073)) + x_1076);
    let x_1078 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
    let x_1080 : vec4<f32> = u_xlat8;
    let x_1082 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1080.x, x_1080.y, x_1080.z), vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
    let x_1085 : f32 = u_xlat36;
    u_xlat36 = max(x_1085, 1.17549435e-37f);
    let x_1087 : f32 = u_xlat36;
    u_xlat36 = inverseSqrt(x_1087);
    let x_1089 : f32 = u_xlat36;
    let x_1091 : vec4<f32> = u_xlat8;
    let x_1093 : vec3<f32> = (vec3<f32>(x_1089, x_1089, x_1089) * vec3<f32>(x_1091.x, x_1091.y, x_1091.z));
    let x_1094 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1094.w);
    let x_1096 : vec4<f32> = u_xlat2;
    let x_1098 : vec4<f32> = u_xlat8;
    u_xlat36 = dot(vec3<f32>(x_1096.x, x_1096.y, x_1096.z), vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
    let x_1101 : f32 = u_xlat36;
    u_xlat36 = clamp(x_1101, 0.0f, 1.0f);
    let x_1103 : vec3<f32> = u_xlat9;
    let x_1104 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_1103, vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
    let x_1107 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1107, 0.0f, 1.0f);
    let x_1109 : f32 = u_xlat36;
    let x_1110 : f32 = u_xlat36;
    u_xlat36 = (x_1109 * x_1110);
    let x_1112 : f32 = u_xlat36;
    let x_1114 : f32 = u_xlat28.x;
    u_xlat36 = ((x_1112 * x_1114) + 1.000010014f);
    let x_1117 : f32 = u_xlat39;
    let x_1118 : f32 = u_xlat39;
    u_xlat39 = (x_1117 * x_1118);
    let x_1120 : f32 = u_xlat36;
    let x_1121 : f32 = u_xlat36;
    u_xlat36 = (x_1120 * x_1121);
    let x_1123 : f32 = u_xlat39;
    u_xlat39 = max(x_1123, 0.100000001f);
    let x_1125 : f32 = u_xlat36;
    let x_1126 : f32 = u_xlat39;
    u_xlat36 = (x_1125 * x_1126);
    let x_1128 : f32 = u_xlat38;
    let x_1129 : f32 = u_xlat36;
    u_xlat36 = (x_1128 * x_1129);
    let x_1131 : f32 = u_xlat37;
    let x_1132 : f32 = u_xlat36;
    u_xlat36 = (x_1131 / x_1132);
    let x_1134 : vec4<f32> = u_xlat0;
    let x_1136 : f32 = u_xlat36;
    let x_1139 : vec3<f32> = u_xlat12;
    let x_1140 : vec3<f32> = ((vec3<f32>(x_1134.x, x_1134.y, x_1134.z) * vec3<f32>(x_1136, x_1136, x_1136)) + x_1139);
    let x_1141 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
    let x_1143 : vec4<f32> = u_xlat8;
    let x_1145 : vec3<f32> = u_xlat10;
    let x_1147 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1143.x, x_1143.y, x_1143.z) * x_1145) + x_1147);

    continuing {
      let x_1149 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1149 + bitcast<u32>(1i));
    }
  }
  let x_1151 : vec4<f32> = u_xlat5;
  let x_1153 : vec4<f32> = u_xlat6;
  let x_1156 : vec4<f32> = u_xlat4;
  let x_1158 : vec3<f32> = ((vec3<f32>(x_1151.x, x_1151.y, x_1151.z) * vec3<f32>(x_1153.x, x_1153.x, x_1153.x)) + vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1163 : vec3<f32> = u_xlat7;
  let x_1164 : vec4<f32> = u_xlat0;
  let x_1166 : vec3<f32> = (x_1163 + vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1167 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
  let x_1172 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1172 == 1.0f);
  let x_1174 : bool = u_xlatb0;
  if (x_1174) {
    let x_1179 : f32 = u_xlat1.x;
    x_1175 = x_1179;
  } else {
    x_1175 = 1.0f;
  }
  let x_1181 : f32 = x_1175;
  SV_Target0.w = x_1181;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

