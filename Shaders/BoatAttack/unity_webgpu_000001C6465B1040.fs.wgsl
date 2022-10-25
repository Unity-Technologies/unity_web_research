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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_187 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_957 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlatb2 : bool;
  var x_101 : f32;
  var u_xlatb33 : bool;
  var u_xlat35 : f32;
  var u_xlat3 : vec3<f32>;
  var x_164 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat36 : f32;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat17 : f32;
  var u_xlat28 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlatb15 : bool;
  var u_xlatb26 : bool;
  var x_627 : f32;
  var u_xlat26 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatu35 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu39 : u32;
  var u_xlati40 : i32;
  var u_xlat39 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati39 : i32;
  var u_xlat40 : f32;
  var u_xlat41 : f32;
  var u_xlat42 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1181 : f32;
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
  let x_66 : vec4<f32> = hlslcc_FragCoord;
  let x_70 : f32 = x_44.x_DitheringTextureInvSize;
  let x_72 : vec2<f32> = (vec2<f32>(x_66.x, x_66.y) * vec2<f32>(x_70, x_70));
  let x_73 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_72.x, x_72.y, x_73.z);
  let x_82 : vec3<f32> = u_xlat2;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_82.x, x_82.y), x_85);
  u_xlat33 = x_86.w;
  let x_97 : f32 = x_95.unity_LODFade.x;
  u_xlatb2 = (x_97 >= 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_104 : f32 = u_xlat33;
    x_101 = abs(x_104);
  } else {
    let x_107 : f32 = u_xlat33;
    x_101 = -(abs(x_107));
  }
  let x_110 : f32 = x_101;
  u_xlat33 = x_110;
  let x_111 : f32 = u_xlat33;
  let x_114 : f32 = x_95.unity_LODFade.x;
  u_xlat33 = (-(x_111) + x_114);
  let x_117 : f32 = u_xlat33;
  u_xlatb33 = (x_117 < 0.0f);
  let x_119 : bool = u_xlatb33;
  if (((select(0i, 1i, x_119) * -1i) != 0i)) {
    discard;
  }
  let x_130 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb33 = (x_130 == 0.0f);
  let x_134 : vec3<f32> = vs_TEXCOORD1;
  let x_139 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_134) + x_139);
  let x_142 : vec3<f32> = u_xlat2;
  let x_143 : vec3<f32> = u_xlat2;
  u_xlat35 = dot(x_142, x_143);
  let x_145 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_145);
  let x_147 : f32 = u_xlat35;
  let x_149 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_147, x_147, x_147) * x_149);
  let x_154 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_154;
  let x_157 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_157;
  let x_161 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_161;
  let x_163 : bool = u_xlatb33;
  if (x_163) {
    let x_167 : vec3<f32> = u_xlat2;
    x_164 = x_167;
  } else {
    let x_169 : vec3<f32> = u_xlat3;
    x_164 = x_169;
  }
  let x_170 : vec3<f32> = x_164;
  u_xlat2 = x_170;
  let x_172 : vec3<f32> = vs_TEXCOORD2;
  let x_173 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_172, x_173);
  let x_175 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_175);
  let x_177 : f32 = u_xlat33;
  let x_179 : vec3<f32> = vs_TEXCOORD2;
  u_xlat3 = (vec3<f32>(x_177, x_177, x_177) * x_179);
  let x_182 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres0;
  let x_192 : vec3<f32> = (x_182 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_196 : vec3<f32> = vs_TEXCOORD1;
  let x_198 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres1;
  let x_201 : vec3<f32> = (x_196 + -(vec3<f32>(x_198.x, x_198.y, x_198.z)));
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
  let x_205 : vec3<f32> = vs_TEXCOORD1;
  let x_208 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres2;
  u_xlat6 = (x_205 + -(vec3<f32>(x_208.x, x_208.y, x_208.z)));
  let x_213 : vec3<f32> = vs_TEXCOORD1;
  let x_216 : vec4<f32> = x_187.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_213 + -(vec3<f32>(x_216.x, x_216.y, x_216.z)));
  let x_220 : vec4<f32> = u_xlat4;
  let x_222 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_220.x, x_220.y, x_220.z), vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_226 : vec4<f32> = u_xlat5;
  let x_228 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_226.x, x_226.y, x_226.z), vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_232 : vec3<f32> = u_xlat6;
  let x_233 : vec3<f32> = u_xlat6;
  u_xlat4.z = dot(x_232, x_233);
  let x_236 : vec3<f32> = u_xlat7;
  let x_237 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_236, x_237);
  let x_243 : vec4<f32> = u_xlat4;
  let x_246 : vec4<f32> = x_187.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_243 < x_246);
  let x_249 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_249);
  let x_253 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_253);
  let x_257 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_257);
  let x_261 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_261);
  let x_265 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_265);
  let x_271 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_271);
  let x_275 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_275);
  let x_278 : vec4<f32> = u_xlat4;
  let x_280 : vec4<f32> = u_xlat5;
  let x_282 : vec3<f32> = (vec3<f32>(x_278.x, x_278.y, x_278.z) + vec3<f32>(x_280.y, x_280.z, x_280.w));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_285 : vec4<f32> = u_xlat4;
  let x_288 : vec3<f32> = max(vec3<f32>(x_285.x, x_285.y, x_285.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_289 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_289.x, x_288.x, x_288.y, x_288.z);
  let x_291 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_291, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_297 : f32 = u_xlat33;
  u_xlat33 = (-(x_297) + 4.0f);
  let x_302 : f32 = u_xlat33;
  u_xlatu33 = u32(x_302);
  let x_306 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_306) << bitcast<u32>(2i));
  let x_309 : vec3<f32> = vs_TEXCOORD1;
  let x_311 : i32 = u_xlati33;
  let x_314 : i32 = u_xlati33;
  let x_318 : vec4<f32> = x_187.x_MainLightWorldToShadow[((x_311 + 1i) / 4i)][((x_314 + 1i) % 4i)];
  let x_320 : vec3<f32> = (vec3<f32>(x_309.y, x_309.y, x_309.y) * vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : i32 = u_xlati33;
  let x_325 : i32 = u_xlati33;
  let x_328 : vec4<f32> = x_187.x_MainLightWorldToShadow[(x_323 / 4i)][(x_325 % 4i)];
  let x_330 : vec3<f32> = vs_TEXCOORD1;
  let x_333 : vec4<f32> = u_xlat4;
  let x_335 : vec3<f32> = ((vec3<f32>(x_328.x, x_328.y, x_328.z) * vec3<f32>(x_330.x, x_330.x, x_330.x)) + vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : i32 = u_xlati33;
  let x_341 : i32 = u_xlati33;
  let x_345 : vec4<f32> = x_187.x_MainLightWorldToShadow[((x_338 + 2i) / 4i)][((x_341 + 2i) % 4i)];
  let x_347 : vec3<f32> = vs_TEXCOORD1;
  let x_350 : vec4<f32> = u_xlat4;
  let x_352 : vec3<f32> = ((vec3<f32>(x_345.x, x_345.y, x_345.z) * vec3<f32>(x_347.z, x_347.z, x_347.z)) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_352.x, x_352.y, x_352.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat4;
  let x_357 : i32 = u_xlati33;
  let x_360 : i32 = u_xlati33;
  let x_364 : vec4<f32> = x_187.x_MainLightWorldToShadow[((x_357 + 3i) / 4i)][((x_360 + 3i) % 4i)];
  let x_366 : vec3<f32> = (vec3<f32>(x_355.x, x_355.y, x_355.z) + vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_367 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
  let x_370 : f32 = vs_TEXCOORD1.y;
  let x_372 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_370 * x_372);
  let x_375 : f32 = x_44.unity_MatrixV[0i].z;
  let x_377 : f32 = vs_TEXCOORD1.x;
  let x_379 : f32 = u_xlat33;
  u_xlat33 = ((x_375 * x_377) + x_379);
  let x_382 : f32 = x_44.unity_MatrixV[2i].z;
  let x_384 : f32 = vs_TEXCOORD1.z;
  let x_386 : f32 = u_xlat33;
  u_xlat33 = ((x_382 * x_384) + x_386);
  let x_388 : f32 = u_xlat33;
  let x_390 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_388 + x_390);
  let x_392 : f32 = u_xlat33;
  let x_396 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_392) + -(x_396));
  let x_399 : f32 = u_xlat33;
  u_xlat33 = max(x_399, 0.0f);
  let x_401 : f32 = u_xlat33;
  let x_404 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_401 * x_404);
  let x_412 : vec2<f32> = vs_TEXCOORD8;
  let x_414 : f32 = x_44.x_GlobalMipBias.x;
  let x_415 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_412, x_414);
  u_xlat5 = x_415;
  let x_420 : vec2<f32> = vs_TEXCOORD8;
  let x_422 : f32 = x_44.x_GlobalMipBias.x;
  let x_423 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_420, x_422);
  u_xlat6 = vec3<f32>(x_423.x, x_423.y, x_423.z);
  let x_425 : vec4<f32> = u_xlat5;
  let x_429 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec3<f32> = u_xlat3;
  let x_433 : vec4<f32> = u_xlat5;
  u_xlat35 = dot(x_432, vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : f32 = u_xlat35;
  u_xlat35 = (x_436 + 0.5f);
  let x_439 : f32 = u_xlat35;
  let x_441 : vec3<f32> = u_xlat6;
  let x_442 : vec3<f32> = (vec3<f32>(x_439, x_439, x_439) * x_441);
  let x_443 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_446 : f32 = u_xlat5.w;
  u_xlat35 = max(x_446, 0.0001f);
  let x_449 : vec4<f32> = u_xlat5;
  let x_451 : f32 = u_xlat35;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.y, x_449.z) / vec3<f32>(x_451, x_451, x_451));
  let x_454 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_458 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_459 : vec2<f32> = vec2<f32>(x_458.x, x_458.y);
  let x_463 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_459.x, x_459.y));
  let x_464 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_463.x, x_463.y, x_464.z);
  let x_466 : vec3<f32> = u_xlat6;
  let x_468 : vec4<f32> = hlslcc_FragCoord;
  let x_470 : vec2<f32> = (vec2<f32>(x_466.x, x_466.y) * vec2<f32>(x_468.x, x_468.y));
  let x_471 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_470.x, x_470.y, x_471.z);
  let x_474 : f32 = u_xlat6.y;
  let x_477 : f32 = x_44.x_ScaleBiasRt.x;
  let x_480 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_474 * x_477) + x_480);
  let x_482 : f32 = u_xlat35;
  u_xlat6.z = (-(x_482) + 1.0f);
  let x_487 : f32 = x_57.x_Metallic;
  u_xlat35 = ((-(x_487) * 0.959999979f) + 0.959999979f);
  let x_493 : f32 = u_xlat35;
  let x_496 : f32 = x_57.x_Smoothness;
  u_xlat36 = (-(x_493) + x_496);
  let x_499 : vec4<f32> = u_xlat1;
  let x_501 : f32 = u_xlat35;
  u_xlat12 = (vec3<f32>(x_499.y, x_499.z, x_499.w) * vec3<f32>(x_501, x_501, x_501));
  let x_504 : vec4<f32> = u_xlat0;
  let x_507 : vec4<f32> = x_57.x_BaseColor;
  let x_512 : vec3<f32> = ((vec3<f32>(x_504.x, x_504.y, x_504.z) * vec3<f32>(x_507.x, x_507.y, x_507.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_513 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_516 : f32 = x_57.x_Metallic;
  let x_518 : f32 = x_57.x_Metallic;
  let x_520 : f32 = x_57.x_Metallic;
  let x_521 : vec3<f32> = vec3<f32>(x_516, x_518, x_520);
  let x_526 : vec4<f32> = u_xlat0;
  let x_531 : vec3<f32> = ((vec3<f32>(x_521.x, x_521.y, x_521.z) * vec3<f32>(x_526.x, x_526.y, x_526.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_532 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_535 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_535) + 1.0f);
  let x_539 : f32 = u_xlat35;
  let x_540 : f32 = u_xlat35;
  u_xlat37 = (x_539 * x_540);
  let x_542 : f32 = u_xlat37;
  u_xlat37 = max(x_542, 0.0078125f);
  let x_546 : f32 = u_xlat37;
  let x_547 : f32 = u_xlat37;
  u_xlat38 = (x_546 * x_547);
  let x_549 : f32 = u_xlat36;
  u_xlat36 = (x_549 + 1.0f);
  let x_551 : f32 = u_xlat36;
  u_xlat36 = clamp(x_551, 0.0f, 1.0f);
  let x_554 : f32 = u_xlat37;
  u_xlat17 = ((x_554 * 4.0f) + 2.0f);
  let x_562 : vec3<f32> = u_xlat6;
  let x_565 : f32 = x_44.x_GlobalMipBias.x;
  let x_566 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_562.x, x_562.z), x_565);
  u_xlat6.x = x_566.x;
  let x_571 : f32 = u_xlat6.x;
  u_xlat28 = (x_571 + -1.0f);
  let x_574 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_575 : f32 = u_xlat28;
  u_xlat28 = ((x_574 * x_575) + 1.0f);
  let x_579 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_579, 1.0f);
  let x_583 : vec4<f32> = u_xlat4;
  let x_584 : vec2<f32> = vec2<f32>(x_583.x, x_583.y);
  let x_586 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_584.x, x_584.y, x_586);
  let x_598 : vec3<f32> = txVec0;
  let x_600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_598.xy, x_598.z);
  u_xlat4.x = x_600;
  let x_604 : f32 = x_187.x_MainLightShadowParams.x;
  u_xlat15 = (-(x_604) + 1.0f);
  let x_608 : f32 = u_xlat4.x;
  let x_610 : f32 = x_187.x_MainLightShadowParams.x;
  let x_612 : f32 = u_xlat15;
  u_xlat4.x = ((x_608 * x_610) + x_612);
  let x_617 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_617);
  let x_621 : f32 = u_xlat4.z;
  u_xlatb26 = (x_621 >= 1.0f);
  let x_623 : bool = u_xlatb26;
  let x_624 : bool = u_xlatb15;
  u_xlatb15 = (x_623 | x_624);
  let x_626 : bool = u_xlatb15;
  if (x_626) {
    x_627 = 1.0f;
  } else {
    let x_632 : f32 = u_xlat4.x;
    x_627 = x_632;
  }
  let x_633 : f32 = x_627;
  u_xlat4.x = x_633;
  let x_635 : vec3<f32> = vs_TEXCOORD1;
  let x_637 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_635 + -(x_637));
  let x_640 : vec3<f32> = u_xlat7;
  let x_641 : vec3<f32> = u_xlat7;
  u_xlat15 = dot(x_640, x_641);
  let x_643 : f32 = u_xlat15;
  let x_645 : f32 = x_187.x_MainLightShadowParams.z;
  let x_648 : f32 = x_187.x_MainLightShadowParams.w;
  u_xlat15 = ((x_643 * x_645) + x_648);
  let x_650 : f32 = u_xlat15;
  u_xlat15 = clamp(x_650, 0.0f, 1.0f);
  let x_655 : f32 = u_xlat4.x;
  u_xlat26.x = (-(x_655) + 1.0f);
  let x_659 : f32 = u_xlat15;
  let x_661 : f32 = u_xlat26.x;
  let x_664 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_659 * x_661) + x_664);
  let x_667 : f32 = u_xlat28;
  let x_670 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_667, x_667, x_667) * vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec3<f32> = u_xlat2;
  let x_675 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(-(x_673), x_675);
  let x_677 : f32 = u_xlat15;
  let x_678 : f32 = u_xlat15;
  u_xlat15 = (x_677 + x_678);
  let x_681 : vec3<f32> = u_xlat3;
  let x_682 : f32 = u_xlat15;
  let x_686 : vec3<f32> = u_xlat2;
  let x_688 : vec3<f32> = ((x_681 * -(vec3<f32>(x_682, x_682, x_682))) + -(x_686));
  let x_689 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec3<f32> = u_xlat3;
  let x_692 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(x_691, x_692);
  let x_694 : f32 = u_xlat15;
  u_xlat15 = clamp(x_694, 0.0f, 1.0f);
  let x_696 : f32 = u_xlat15;
  u_xlat15 = (-(x_696) + 1.0f);
  let x_699 : f32 = u_xlat15;
  let x_700 : f32 = u_xlat15;
  u_xlat15 = (x_699 * x_700);
  let x_702 : f32 = u_xlat15;
  let x_703 : f32 = u_xlat15;
  u_xlat15 = (x_702 * x_703);
  let x_705 : f32 = u_xlat35;
  u_xlat26.x = ((-(x_705) * 0.699999988f) + 1.700000048f);
  let x_712 : f32 = u_xlat35;
  let x_714 : f32 = u_xlat26.x;
  u_xlat35 = (x_712 * x_714);
  let x_716 : f32 = u_xlat35;
  u_xlat35 = (x_716 * 6.0f);
  let x_727 : vec4<f32> = u_xlat8;
  let x_729 : f32 = u_xlat35;
  let x_730 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_727.x, x_727.y, x_727.z), x_729);
  u_xlat8 = x_730;
  let x_732 : f32 = u_xlat8.w;
  u_xlat35 = (x_732 + -1.0f);
  let x_735 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_736 : f32 = u_xlat35;
  u_xlat35 = ((x_735 * x_736) + 1.0f);
  let x_739 : f32 = u_xlat35;
  u_xlat35 = max(x_739, 0.0f);
  let x_741 : f32 = u_xlat35;
  u_xlat35 = log2(x_741);
  let x_743 : f32 = u_xlat35;
  let x_745 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat35 = (x_743 * x_745);
  let x_747 : f32 = u_xlat35;
  u_xlat35 = exp2(x_747);
  let x_749 : f32 = u_xlat35;
  let x_751 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat35 = (x_749 * x_751);
  let x_753 : vec4<f32> = u_xlat8;
  let x_755 : f32 = u_xlat35;
  let x_757 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_755, x_755, x_755));
  let x_758 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : f32 = u_xlat37;
  let x_762 : f32 = u_xlat37;
  u_xlat26 = ((vec2<f32>(x_760, x_760) * vec2<f32>(x_762, x_762)) + vec2<f32>(-1.0f, 1.0f));
  let x_768 : f32 = u_xlat26.y;
  u_xlat35 = (1.0f / x_768);
  let x_771 : vec4<f32> = u_xlat0;
  let x_774 : f32 = u_xlat36;
  u_xlat9 = (-(vec3<f32>(x_771.x, x_771.y, x_771.z)) + vec3<f32>(x_774, x_774, x_774));
  let x_777 : f32 = u_xlat15;
  let x_779 : vec3<f32> = u_xlat9;
  let x_781 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_777, x_777, x_777) * x_779) + vec3<f32>(x_781.x, x_781.y, x_781.z));
  let x_784 : f32 = u_xlat35;
  let x_786 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_784, x_784, x_784) * x_786);
  let x_788 : vec4<f32> = u_xlat8;
  let x_790 : vec3<f32> = u_xlat9;
  let x_791 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) * x_790);
  let x_792 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec4<f32> = u_xlat5;
  let x_796 : vec3<f32> = u_xlat12;
  let x_798 : vec4<f32> = u_xlat8;
  let x_800 : vec3<f32> = ((vec3<f32>(x_794.x, x_794.y, x_794.z) * x_796) + vec3<f32>(x_798.x, x_798.y, x_798.z));
  let x_801 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_804 : f32 = u_xlat4.x;
  let x_806 : f32 = x_95.unity_LightData.z;
  u_xlat35 = (x_804 * x_806);
  let x_808 : vec3<f32> = u_xlat3;
  let x_810 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat36 = dot(x_808, vec3<f32>(x_810.x, x_810.y, x_810.z));
  let x_813 : f32 = u_xlat36;
  u_xlat36 = clamp(x_813, 0.0f, 1.0f);
  let x_815 : f32 = u_xlat35;
  let x_816 : f32 = u_xlat36;
  u_xlat35 = (x_815 * x_816);
  let x_818 : f32 = u_xlat35;
  let x_820 : vec3<f32> = u_xlat7;
  let x_821 : vec3<f32> = (vec3<f32>(x_818, x_818, x_818) * x_820);
  let x_822 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_821.z);
  let x_824 : vec3<f32> = u_xlat2;
  let x_826 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_824 + vec3<f32>(x_826.x, x_826.y, x_826.z));
  let x_829 : vec3<f32> = u_xlat7;
  let x_830 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_829, x_830);
  let x_832 : f32 = u_xlat35;
  u_xlat35 = max(x_832, 1.17549435e-37f);
  let x_835 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_835);
  let x_837 : f32 = u_xlat35;
  let x_839 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_837, x_837, x_837) * x_839);
  let x_841 : vec3<f32> = u_xlat3;
  let x_842 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_841, x_842);
  let x_844 : f32 = u_xlat35;
  u_xlat35 = clamp(x_844, 0.0f, 1.0f);
  let x_847 : vec4<f32> = x_44.x_MainLightPosition;
  let x_849 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_847.x, x_847.y, x_847.z), x_849);
  let x_851 : f32 = u_xlat36;
  u_xlat36 = clamp(x_851, 0.0f, 1.0f);
  let x_853 : f32 = u_xlat35;
  let x_854 : f32 = u_xlat35;
  u_xlat35 = (x_853 * x_854);
  let x_856 : f32 = u_xlat35;
  let x_858 : f32 = u_xlat26.x;
  u_xlat35 = ((x_856 * x_858) + 1.000010014f);
  let x_862 : f32 = u_xlat36;
  let x_863 : f32 = u_xlat36;
  u_xlat36 = (x_862 * x_863);
  let x_865 : f32 = u_xlat35;
  let x_866 : f32 = u_xlat35;
  u_xlat35 = (x_865 * x_866);
  let x_868 : f32 = u_xlat36;
  u_xlat36 = max(x_868, 0.100000001f);
  let x_871 : f32 = u_xlat35;
  let x_872 : f32 = u_xlat36;
  u_xlat35 = (x_871 * x_872);
  let x_874 : f32 = u_xlat17;
  let x_875 : f32 = u_xlat35;
  u_xlat35 = (x_874 * x_875);
  let x_877 : f32 = u_xlat38;
  let x_878 : f32 = u_xlat35;
  u_xlat35 = (x_877 / x_878);
  let x_880 : vec4<f32> = u_xlat0;
  let x_882 : f32 = u_xlat35;
  let x_885 : vec3<f32> = u_xlat12;
  u_xlat7 = ((vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(x_882, x_882, x_882)) + x_885);
  let x_887 : vec4<f32> = u_xlat4;
  let x_889 : vec3<f32> = u_xlat7;
  let x_890 : vec3<f32> = (vec3<f32>(x_887.x, x_887.y, x_887.w) * x_889);
  let x_891 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_890.x, x_890.y, x_891.z, x_890.z);
  let x_894 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_896 : f32 = x_95.unity_LightData.y;
  u_xlat35 = min(x_894, x_896);
  let x_899 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_899));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_911 : u32 = u_xlatu_loop_1;
    let x_912 : u32 = u_xlatu35;
    if ((x_911 < x_912)) {
    } else {
      break;
    }
    let x_915 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_915 >> 2u);
    let x_918 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_918 & 3u));
    let x_922 : u32 = u_xlatu39;
    let x_925 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_922)];
    let x_935 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_940 : vec4<u32> = indexable[x_935];
    u_xlat39 = dot(x_925, bitcast<vec4<f32>>(x_940));
    let x_944 : f32 = u_xlat39;
    u_xlati39 = i32(x_944);
    let x_946 : vec3<f32> = vs_TEXCOORD1;
    let x_958 : i32 = u_xlati39;
    let x_960 : vec4<f32> = x_957.x_AdditionalLightsPosition[x_958];
    let x_963 : i32 = u_xlati39;
    let x_965 : vec4<f32> = x_957.x_AdditionalLightsPosition[x_963];
    let x_967 : vec3<f32> = ((-(x_946) * vec3<f32>(x_960.w, x_960.w, x_960.w)) + vec3<f32>(x_965.x, x_965.y, x_965.z));
    let x_968 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
    let x_971 : vec4<f32> = u_xlat8;
    let x_973 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_971.x, x_971.y, x_971.z), vec3<f32>(x_973.x, x_973.y, x_973.z));
    let x_976 : f32 = u_xlat40;
    u_xlat40 = max(x_976, 6.10351562e-05f);
    let x_980 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_980);
    let x_982 : f32 = u_xlat41;
    let x_984 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_982, x_982, x_982) * vec3<f32>(x_984.x, x_984.y, x_984.z));
    let x_988 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_988);
    let x_990 : f32 = u_xlat40;
    let x_991 : i32 = u_xlati39;
    let x_993 : f32 = x_957.x_AdditionalLightsAttenuation[x_991].x;
    u_xlat40 = (x_990 * x_993);
    let x_995 : f32 = u_xlat40;
    let x_997 : f32 = u_xlat40;
    u_xlat40 = ((-(x_995) * x_997) + 1.0f);
    let x_1000 : f32 = u_xlat40;
    u_xlat40 = max(x_1000, 0.0f);
    let x_1002 : f32 = u_xlat40;
    let x_1003 : f32 = u_xlat40;
    u_xlat40 = (x_1002 * x_1003);
    let x_1005 : f32 = u_xlat40;
    let x_1006 : f32 = u_xlat42;
    u_xlat40 = (x_1005 * x_1006);
    let x_1008 : i32 = u_xlati39;
    let x_1010 : vec4<f32> = x_957.x_AdditionalLightsSpotDir[x_1008];
    let x_1012 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1010.x, x_1010.y, x_1010.z), x_1012);
    let x_1014 : f32 = u_xlat42;
    let x_1015 : i32 = u_xlati39;
    let x_1017 : f32 = x_957.x_AdditionalLightsAttenuation[x_1015].z;
    let x_1019 : i32 = u_xlati39;
    let x_1021 : f32 = x_957.x_AdditionalLightsAttenuation[x_1019].w;
    u_xlat42 = ((x_1014 * x_1017) + x_1021);
    let x_1023 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1023, 0.0f, 1.0f);
    let x_1025 : f32 = u_xlat42;
    let x_1026 : f32 = u_xlat42;
    u_xlat42 = (x_1025 * x_1026);
    let x_1028 : f32 = u_xlat40;
    let x_1029 : f32 = u_xlat42;
    u_xlat40 = (x_1028 * x_1029);
    let x_1032 : f32 = u_xlat28;
    let x_1034 : i32 = u_xlati39;
    let x_1036 : vec4<f32> = x_957.x_AdditionalLightsColor[x_1034];
    u_xlat10 = (vec3<f32>(x_1032, x_1032, x_1032) * vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
    let x_1039 : vec3<f32> = u_xlat3;
    let x_1040 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(x_1039, x_1040);
    let x_1042 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1042, 0.0f, 1.0f);
    let x_1044 : f32 = u_xlat39;
    let x_1045 : f32 = u_xlat40;
    u_xlat39 = (x_1044 * x_1045);
    let x_1047 : f32 = u_xlat39;
    let x_1049 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1047, x_1047, x_1047) * x_1049);
    let x_1051 : vec4<f32> = u_xlat8;
    let x_1053 : f32 = u_xlat41;
    let x_1056 : vec3<f32> = u_xlat2;
    let x_1057 : vec3<f32> = ((vec3<f32>(x_1051.x, x_1051.y, x_1051.z) * vec3<f32>(x_1053, x_1053, x_1053)) + x_1056);
    let x_1058 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
    let x_1060 : vec4<f32> = u_xlat8;
    let x_1062 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1060.x, x_1060.y, x_1060.z), vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
    let x_1065 : f32 = u_xlat39;
    u_xlat39 = max(x_1065, 1.17549435e-37f);
    let x_1067 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1067);
    let x_1069 : f32 = u_xlat39;
    let x_1071 : vec4<f32> = u_xlat8;
    let x_1073 : vec3<f32> = (vec3<f32>(x_1069, x_1069, x_1069) * vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
    let x_1074 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
    let x_1076 : vec3<f32> = u_xlat3;
    let x_1077 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(x_1076, vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
    let x_1080 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1080, 0.0f, 1.0f);
    let x_1082 : vec3<f32> = u_xlat9;
    let x_1083 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1082, vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
    let x_1086 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1086, 0.0f, 1.0f);
    let x_1088 : f32 = u_xlat39;
    let x_1089 : f32 = u_xlat39;
    u_xlat39 = (x_1088 * x_1089);
    let x_1091 : f32 = u_xlat39;
    let x_1093 : f32 = u_xlat26.x;
    u_xlat39 = ((x_1091 * x_1093) + 1.000010014f);
    let x_1096 : f32 = u_xlat40;
    let x_1097 : f32 = u_xlat40;
    u_xlat40 = (x_1096 * x_1097);
    let x_1099 : f32 = u_xlat39;
    let x_1100 : f32 = u_xlat39;
    u_xlat39 = (x_1099 * x_1100);
    let x_1102 : f32 = u_xlat40;
    u_xlat40 = max(x_1102, 0.100000001f);
    let x_1104 : f32 = u_xlat39;
    let x_1105 : f32 = u_xlat40;
    u_xlat39 = (x_1104 * x_1105);
    let x_1107 : f32 = u_xlat17;
    let x_1108 : f32 = u_xlat39;
    u_xlat39 = (x_1107 * x_1108);
    let x_1110 : f32 = u_xlat38;
    let x_1111 : f32 = u_xlat39;
    u_xlat39 = (x_1110 / x_1111);
    let x_1113 : vec4<f32> = u_xlat0;
    let x_1115 : f32 = u_xlat39;
    let x_1118 : vec3<f32> = u_xlat12;
    let x_1119 : vec3<f32> = ((vec3<f32>(x_1113.x, x_1113.y, x_1113.z) * vec3<f32>(x_1115, x_1115, x_1115)) + x_1118);
    let x_1120 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
    let x_1122 : vec4<f32> = u_xlat8;
    let x_1124 : vec3<f32> = u_xlat10;
    let x_1126 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * x_1124) + x_1126);

    continuing {
      let x_1128 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1128 + bitcast<u32>(1i));
    }
  }
  let x_1130 : vec4<f32> = u_xlat5;
  let x_1132 : vec3<f32> = u_xlat6;
  let x_1135 : vec4<f32> = u_xlat4;
  let x_1137 : vec3<f32> = ((vec3<f32>(x_1130.x, x_1130.y, x_1130.z) * vec3<f32>(x_1132.x, x_1132.x, x_1132.x)) + vec3<f32>(x_1135.x, x_1135.y, x_1135.w));
  let x_1138 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
  let x_1140 : vec3<f32> = u_xlat7;
  let x_1141 : vec4<f32> = u_xlat0;
  let x_1143 : vec3<f32> = (x_1140 + vec3<f32>(x_1141.x, x_1141.y, x_1141.z));
  let x_1144 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1146 : f32 = u_xlat33;
  let x_1147 : f32 = u_xlat33;
  u_xlat33 = (x_1146 * -(x_1147));
  let x_1150 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1150);
  let x_1152 : vec4<f32> = u_xlat0;
  let x_1156 : vec4<f32> = x_44.unity_FogColor;
  let x_1159 : vec3<f32> = (vec3<f32>(x_1152.x, x_1152.y, x_1152.z) + -(vec3<f32>(x_1156.x, x_1156.y, x_1156.z)));
  let x_1160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
  let x_1164 : f32 = u_xlat33;
  let x_1166 : vec4<f32> = u_xlat0;
  let x_1170 : vec4<f32> = x_44.unity_FogColor;
  let x_1172 : vec3<f32> = ((vec3<f32>(x_1164, x_1164, x_1164) * vec3<f32>(x_1166.x, x_1166.y, x_1166.z)) + vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1173 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
  let x_1178 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1178 == 1.0f);
  let x_1180 : bool = u_xlatb0;
  if (x_1180) {
    let x_1185 : f32 = u_xlat1.x;
    x_1181 = x_1185;
  } else {
    x_1181 = 1.0f;
  }
  let x_1187 : f32 = x_1181;
  SV_Target0.w = x_1187;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

