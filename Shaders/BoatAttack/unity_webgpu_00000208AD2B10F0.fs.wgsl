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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_95 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_190 : MainLightShadows;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_997 : AdditionalLights;

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
  var u_xlat3 : vec4<f32>;
  var x_164 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
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
  var x_662 : f32;
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
  var x_1223 : f32;
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
    let x_169 : vec4<f32> = u_xlat3;
    x_164 = vec3<f32>(x_169.x, x_169.y, x_169.z);
  }
  let x_171 : vec3<f32> = x_164;
  u_xlat2 = x_171;
  let x_173 : vec3<f32> = vs_TEXCOORD2;
  let x_174 : vec3<f32> = vs_TEXCOORD2;
  u_xlat33 = dot(x_173, x_174);
  let x_176 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_176);
  let x_178 : f32 = u_xlat33;
  let x_180 : vec3<f32> = vs_TEXCOORD2;
  let x_181 : vec3<f32> = (vec3<f32>(x_178, x_178, x_178) * x_180);
  let x_182 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_185 : vec3<f32> = vs_TEXCOORD1;
  let x_192 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres0;
  let x_195 : vec3<f32> = (x_185 + -(vec3<f32>(x_192.x, x_192.y, x_192.z)));
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : vec3<f32> = vs_TEXCOORD1;
  let x_201 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres1;
  let x_204 : vec3<f32> = (x_199 + -(vec3<f32>(x_201.x, x_201.y, x_201.z)));
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_208 : vec3<f32> = vs_TEXCOORD1;
  let x_211 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres2;
  let x_214 : vec3<f32> = (x_208 + -(vec3<f32>(x_211.x, x_211.y, x_211.z)));
  let x_215 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
  let x_218 : vec3<f32> = vs_TEXCOORD1;
  let x_221 : vec4<f32> = x_190.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_218 + -(vec3<f32>(x_221.x, x_221.y, x_221.z)));
  let x_225 : vec4<f32> = u_xlat4;
  let x_227 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_231 : vec4<f32> = u_xlat5;
  let x_233 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_231.x, x_231.y, x_231.z), vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_237 : vec4<f32> = u_xlat6;
  let x_239 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_237.x, x_237.y, x_237.z), vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_243 : vec3<f32> = u_xlat7;
  let x_244 : vec3<f32> = u_xlat7;
  u_xlat4.w = dot(x_243, x_244);
  let x_250 : vec4<f32> = u_xlat4;
  let x_253 : vec4<f32> = x_190.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_250 < x_253);
  let x_256 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_256);
  let x_260 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_260);
  let x_264 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_264);
  let x_268 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_268);
  let x_272 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_272);
  let x_278 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_278);
  let x_282 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_282);
  let x_285 : vec4<f32> = u_xlat4;
  let x_287 : vec4<f32> = u_xlat5;
  let x_289 : vec3<f32> = (vec3<f32>(x_285.x, x_285.y, x_285.z) + vec3<f32>(x_287.y, x_287.z, x_287.w));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_289.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat4;
  let x_295 : vec3<f32> = max(vec3<f32>(x_292.x, x_292.y, x_292.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_296 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_296.x, x_295.x, x_295.y, x_295.z);
  let x_298 : vec4<f32> = u_xlat5;
  u_xlat33 = dot(x_298, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_304 : f32 = u_xlat33;
  u_xlat33 = (-(x_304) + 4.0f);
  let x_309 : f32 = u_xlat33;
  u_xlatu33 = u32(x_309);
  let x_313 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_313) << bitcast<u32>(2i));
  let x_316 : vec3<f32> = vs_TEXCOORD1;
  let x_318 : i32 = u_xlati33;
  let x_321 : i32 = u_xlati33;
  let x_325 : vec4<f32> = x_190.x_MainLightWorldToShadow[((x_318 + 1i) / 4i)][((x_321 + 1i) % 4i)];
  let x_327 : vec3<f32> = (vec3<f32>(x_316.y, x_316.y, x_316.y) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : i32 = u_xlati33;
  let x_332 : i32 = u_xlati33;
  let x_335 : vec4<f32> = x_190.x_MainLightWorldToShadow[(x_330 / 4i)][(x_332 % 4i)];
  let x_337 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : vec4<f32> = u_xlat4;
  let x_342 : vec3<f32> = ((vec3<f32>(x_335.x, x_335.y, x_335.z) * vec3<f32>(x_337.x, x_337.x, x_337.x)) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_345 : i32 = u_xlati33;
  let x_348 : i32 = u_xlati33;
  let x_352 : vec4<f32> = x_190.x_MainLightWorldToShadow[((x_345 + 2i) / 4i)][((x_348 + 2i) % 4i)];
  let x_354 : vec3<f32> = vs_TEXCOORD1;
  let x_357 : vec4<f32> = u_xlat4;
  let x_359 : vec3<f32> = ((vec3<f32>(x_352.x, x_352.y, x_352.z) * vec3<f32>(x_354.z, x_354.z, x_354.z)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec4<f32> = u_xlat4;
  let x_364 : i32 = u_xlati33;
  let x_367 : i32 = u_xlati33;
  let x_371 : vec4<f32> = x_190.x_MainLightWorldToShadow[((x_364 + 3i) / 4i)][((x_367 + 3i) % 4i)];
  let x_373 : vec3<f32> = (vec3<f32>(x_362.x, x_362.y, x_362.z) + vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_377 : f32 = vs_TEXCOORD1.y;
  let x_379 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_377 * x_379);
  let x_382 : f32 = x_44.unity_MatrixV[0i].z;
  let x_384 : f32 = vs_TEXCOORD1.x;
  let x_386 : f32 = u_xlat33;
  u_xlat33 = ((x_382 * x_384) + x_386);
  let x_389 : f32 = x_44.unity_MatrixV[2i].z;
  let x_391 : f32 = vs_TEXCOORD1.z;
  let x_393 : f32 = u_xlat33;
  u_xlat33 = ((x_389 * x_391) + x_393);
  let x_395 : f32 = u_xlat33;
  let x_397 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_395 + x_397);
  let x_399 : f32 = u_xlat33;
  let x_403 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_399) + -(x_403));
  let x_406 : f32 = u_xlat33;
  u_xlat33 = max(x_406, 0.0f);
  let x_408 : f32 = u_xlat33;
  let x_411 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_408 * x_411);
  u_xlat3.w = 1.0f;
  let x_416 : vec4<f32> = x_95.unity_SHAr;
  let x_417 : vec4<f32> = u_xlat3;
  u_xlat5.x = dot(x_416, x_417);
  let x_422 : vec4<f32> = x_95.unity_SHAg;
  let x_423 : vec4<f32> = u_xlat3;
  u_xlat5.y = dot(x_422, x_423);
  let x_428 : vec4<f32> = x_95.unity_SHAb;
  let x_429 : vec4<f32> = u_xlat3;
  u_xlat5.z = dot(x_428, x_429);
  let x_432 : vec4<f32> = u_xlat3;
  let x_434 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec4<f32>(x_432.y, x_432.z, x_432.z, x_432.x) * vec4<f32>(x_434.x, x_434.y, x_434.z, x_434.z));
  let x_439 : vec4<f32> = x_95.unity_SHBr;
  let x_440 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_439, x_440);
  let x_445 : vec4<f32> = x_95.unity_SHBg;
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_445, x_446);
  let x_451 : vec4<f32> = x_95.unity_SHBb;
  let x_452 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_451, x_452);
  let x_456 : f32 = u_xlat3.y;
  let x_458 : f32 = u_xlat3.y;
  u_xlat35 = (x_456 * x_458);
  let x_461 : f32 = u_xlat3.x;
  let x_463 : f32 = u_xlat3.x;
  let x_465 : f32 = u_xlat35;
  u_xlat35 = ((x_461 * x_463) + -(x_465));
  let x_470 : vec4<f32> = x_95.unity_SHC;
  let x_472 : f32 = u_xlat35;
  let x_475 : vec3<f32> = u_xlat7;
  let x_476 : vec3<f32> = ((vec3<f32>(x_470.x, x_470.y, x_470.z) * vec3<f32>(x_472, x_472, x_472)) + x_475);
  let x_477 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
  let x_479 : vec4<f32> = u_xlat5;
  let x_481 : vec4<f32> = u_xlat6;
  let x_483 : vec3<f32> = (vec3<f32>(x_479.x, x_479.y, x_479.z) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_486 : vec4<f32> = u_xlat5;
  let x_488 : vec3<f32> = max(vec3<f32>(x_486.x, x_486.y, x_486.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_489 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  let x_493 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_494 : vec2<f32> = vec2<f32>(x_493.x, x_493.y);
  let x_498 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_494.x, x_494.y));
  let x_499 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_498.x, x_498.y, x_499.z, x_499.w);
  let x_501 : vec4<f32> = u_xlat6;
  let x_503 : vec4<f32> = hlslcc_FragCoord;
  let x_505 : vec2<f32> = (vec2<f32>(x_501.x, x_501.y) * vec2<f32>(x_503.x, x_503.y));
  let x_506 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
  let x_509 : f32 = u_xlat6.y;
  let x_512 : f32 = x_44.x_ScaleBiasRt.x;
  let x_515 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat35 = ((x_509 * x_512) + x_515);
  let x_517 : f32 = u_xlat35;
  u_xlat6.z = (-(x_517) + 1.0f);
  let x_522 : f32 = x_57.x_Metallic;
  u_xlat35 = ((-(x_522) * 0.959999979f) + 0.959999979f);
  let x_528 : f32 = u_xlat35;
  u_xlat36 = (-(x_528) + 1.0f);
  let x_532 : vec4<f32> = u_xlat1;
  let x_534 : f32 = u_xlat35;
  u_xlat12 = (vec3<f32>(x_532.y, x_532.z, x_532.w) * vec3<f32>(x_534, x_534, x_534));
  let x_537 : vec4<f32> = u_xlat0;
  let x_540 : vec4<f32> = x_57.x_BaseColor;
  let x_545 : vec3<f32> = ((vec3<f32>(x_537.x, x_537.y, x_537.z) * vec3<f32>(x_540.x, x_540.y, x_540.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_546 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_549 : f32 = x_57.x_Metallic;
  let x_551 : f32 = x_57.x_Metallic;
  let x_553 : f32 = x_57.x_Metallic;
  let x_554 : vec3<f32> = vec3<f32>(x_549, x_551, x_553);
  let x_559 : vec4<f32> = u_xlat0;
  let x_564 : vec3<f32> = ((vec3<f32>(x_554.x, x_554.y, x_554.z) * vec3<f32>(x_559.x, x_559.y, x_559.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_565 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
  let x_568 : f32 = x_57.x_Smoothness;
  u_xlat35 = (-(x_568) + 1.0f);
  let x_572 : f32 = u_xlat35;
  let x_573 : f32 = u_xlat35;
  u_xlat37 = (x_572 * x_573);
  let x_575 : f32 = u_xlat37;
  u_xlat37 = max(x_575, 0.0078125f);
  let x_579 : f32 = u_xlat37;
  let x_580 : f32 = u_xlat37;
  u_xlat38 = (x_579 * x_580);
  let x_582 : f32 = u_xlat36;
  let x_584 : f32 = x_57.x_Smoothness;
  u_xlat36 = (x_582 + x_584);
  let x_586 : f32 = u_xlat36;
  u_xlat36 = clamp(x_586, 0.0f, 1.0f);
  let x_589 : f32 = u_xlat37;
  u_xlat17 = ((x_589 * 4.0f) + 2.0f);
  let x_597 : vec4<f32> = u_xlat6;
  let x_600 : f32 = x_44.x_GlobalMipBias.x;
  let x_601 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_597.x, x_597.z), x_600);
  u_xlat6.x = x_601.x;
  let x_606 : f32 = u_xlat6.x;
  u_xlat28 = (x_606 + -1.0f);
  let x_609 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_610 : f32 = u_xlat28;
  u_xlat28 = ((x_609 * x_610) + 1.0f);
  let x_614 : f32 = u_xlat6.x;
  u_xlat6.x = min(x_614, 1.0f);
  let x_618 : vec4<f32> = u_xlat4;
  let x_619 : vec2<f32> = vec2<f32>(x_618.x, x_618.y);
  let x_621 : f32 = u_xlat4.z;
  txVec0 = vec3<f32>(x_619.x, x_619.y, x_621);
  let x_633 : vec3<f32> = txVec0;
  let x_635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_633.xy, x_633.z);
  u_xlat4.x = x_635;
  let x_639 : f32 = x_190.x_MainLightShadowParams.x;
  u_xlat15 = (-(x_639) + 1.0f);
  let x_643 : f32 = u_xlat4.x;
  let x_645 : f32 = x_190.x_MainLightShadowParams.x;
  let x_647 : f32 = u_xlat15;
  u_xlat4.x = ((x_643 * x_645) + x_647);
  let x_652 : f32 = u_xlat4.z;
  u_xlatb15 = (0.0f >= x_652);
  let x_656 : f32 = u_xlat4.z;
  u_xlatb26 = (x_656 >= 1.0f);
  let x_658 : bool = u_xlatb26;
  let x_659 : bool = u_xlatb15;
  u_xlatb15 = (x_658 | x_659);
  let x_661 : bool = u_xlatb15;
  if (x_661) {
    x_662 = 1.0f;
  } else {
    let x_667 : f32 = u_xlat4.x;
    x_662 = x_667;
  }
  let x_668 : f32 = x_662;
  u_xlat4.x = x_668;
  let x_670 : vec3<f32> = vs_TEXCOORD1;
  let x_672 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat7 = (x_670 + -(x_672));
  let x_675 : vec3<f32> = u_xlat7;
  let x_676 : vec3<f32> = u_xlat7;
  u_xlat15 = dot(x_675, x_676);
  let x_678 : f32 = u_xlat15;
  let x_680 : f32 = x_190.x_MainLightShadowParams.z;
  let x_683 : f32 = x_190.x_MainLightShadowParams.w;
  u_xlat15 = ((x_678 * x_680) + x_683);
  let x_685 : f32 = u_xlat15;
  u_xlat15 = clamp(x_685, 0.0f, 1.0f);
  let x_690 : f32 = u_xlat4.x;
  u_xlat26.x = (-(x_690) + 1.0f);
  let x_694 : f32 = u_xlat15;
  let x_696 : f32 = u_xlat26.x;
  let x_699 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_694 * x_696) + x_699);
  let x_702 : f32 = u_xlat28;
  let x_705 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_702, x_702, x_702) * vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec3<f32> = u_xlat2;
  let x_710 : vec4<f32> = u_xlat3;
  u_xlat15 = dot(-(x_708), vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_713 : f32 = u_xlat15;
  let x_714 : f32 = u_xlat15;
  u_xlat15 = (x_713 + x_714);
  let x_717 : vec4<f32> = u_xlat3;
  let x_719 : f32 = u_xlat15;
  let x_723 : vec3<f32> = u_xlat2;
  let x_725 : vec3<f32> = ((vec3<f32>(x_717.x, x_717.y, x_717.z) * -(vec3<f32>(x_719, x_719, x_719))) + -(x_723));
  let x_726 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_728 : vec4<f32> = u_xlat3;
  let x_730 : vec3<f32> = u_xlat2;
  u_xlat15 = dot(vec3<f32>(x_728.x, x_728.y, x_728.z), x_730);
  let x_732 : f32 = u_xlat15;
  u_xlat15 = clamp(x_732, 0.0f, 1.0f);
  let x_734 : f32 = u_xlat15;
  u_xlat15 = (-(x_734) + 1.0f);
  let x_737 : f32 = u_xlat15;
  let x_738 : f32 = u_xlat15;
  u_xlat15 = (x_737 * x_738);
  let x_740 : f32 = u_xlat15;
  let x_741 : f32 = u_xlat15;
  u_xlat15 = (x_740 * x_741);
  let x_743 : f32 = u_xlat35;
  u_xlat26.x = ((-(x_743) * 0.699999988f) + 1.700000048f);
  let x_750 : f32 = u_xlat35;
  let x_752 : f32 = u_xlat26.x;
  u_xlat35 = (x_750 * x_752);
  let x_754 : f32 = u_xlat35;
  u_xlat35 = (x_754 * 6.0f);
  let x_765 : vec4<f32> = u_xlat8;
  let x_767 : f32 = u_xlat35;
  let x_768 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_765.x, x_765.y, x_765.z), x_767);
  u_xlat8 = x_768;
  let x_770 : f32 = u_xlat8.w;
  u_xlat35 = (x_770 + -1.0f);
  let x_773 : f32 = x_95.unity_SpecCube0_HDR.w;
  let x_774 : f32 = u_xlat35;
  u_xlat35 = ((x_773 * x_774) + 1.0f);
  let x_777 : f32 = u_xlat35;
  u_xlat35 = max(x_777, 0.0f);
  let x_779 : f32 = u_xlat35;
  u_xlat35 = log2(x_779);
  let x_781 : f32 = u_xlat35;
  let x_783 : f32 = x_95.unity_SpecCube0_HDR.y;
  u_xlat35 = (x_781 * x_783);
  let x_785 : f32 = u_xlat35;
  u_xlat35 = exp2(x_785);
  let x_787 : f32 = u_xlat35;
  let x_789 : f32 = x_95.unity_SpecCube0_HDR.x;
  u_xlat35 = (x_787 * x_789);
  let x_791 : vec4<f32> = u_xlat8;
  let x_793 : f32 = u_xlat35;
  let x_795 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_793, x_793, x_793));
  let x_796 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : f32 = u_xlat37;
  let x_800 : f32 = u_xlat37;
  u_xlat26 = ((vec2<f32>(x_798, x_798) * vec2<f32>(x_800, x_800)) + vec2<f32>(-1.0f, 1.0f));
  let x_806 : f32 = u_xlat26.y;
  u_xlat35 = (1.0f / x_806);
  let x_809 : vec4<f32> = u_xlat0;
  let x_812 : f32 = u_xlat36;
  u_xlat9 = (-(vec3<f32>(x_809.x, x_809.y, x_809.z)) + vec3<f32>(x_812, x_812, x_812));
  let x_815 : f32 = u_xlat15;
  let x_817 : vec3<f32> = u_xlat9;
  let x_819 : vec4<f32> = u_xlat0;
  u_xlat9 = ((vec3<f32>(x_815, x_815, x_815) * x_817) + vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : f32 = u_xlat35;
  let x_824 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_822, x_822, x_822) * x_824);
  let x_826 : vec4<f32> = u_xlat8;
  let x_828 : vec3<f32> = u_xlat9;
  let x_829 : vec3<f32> = (vec3<f32>(x_826.x, x_826.y, x_826.z) * x_828);
  let x_830 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat5;
  let x_834 : vec3<f32> = u_xlat12;
  let x_836 : vec4<f32> = u_xlat8;
  let x_838 : vec3<f32> = ((vec3<f32>(x_832.x, x_832.y, x_832.z) * x_834) + vec3<f32>(x_836.x, x_836.y, x_836.z));
  let x_839 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_842 : f32 = u_xlat4.x;
  let x_844 : f32 = x_95.unity_LightData.z;
  u_xlat35 = (x_842 * x_844);
  let x_846 : vec4<f32> = u_xlat3;
  let x_849 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat36 = dot(vec3<f32>(x_846.x, x_846.y, x_846.z), vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : f32 = u_xlat36;
  u_xlat36 = clamp(x_852, 0.0f, 1.0f);
  let x_854 : f32 = u_xlat35;
  let x_855 : f32 = u_xlat36;
  u_xlat35 = (x_854 * x_855);
  let x_857 : f32 = u_xlat35;
  let x_859 : vec3<f32> = u_xlat7;
  let x_860 : vec3<f32> = (vec3<f32>(x_857, x_857, x_857) * x_859);
  let x_861 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_860.x, x_860.y, x_861.z, x_860.z);
  let x_863 : vec3<f32> = u_xlat2;
  let x_865 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_863 + vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec3<f32> = u_xlat7;
  let x_869 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(x_868, x_869);
  let x_871 : f32 = u_xlat35;
  u_xlat35 = max(x_871, 1.17549435e-37f);
  let x_874 : f32 = u_xlat35;
  u_xlat35 = inverseSqrt(x_874);
  let x_876 : f32 = u_xlat35;
  let x_878 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_876, x_876, x_876) * x_878);
  let x_880 : vec4<f32> = u_xlat3;
  let x_882 : vec3<f32> = u_xlat7;
  u_xlat35 = dot(vec3<f32>(x_880.x, x_880.y, x_880.z), x_882);
  let x_884 : f32 = u_xlat35;
  u_xlat35 = clamp(x_884, 0.0f, 1.0f);
  let x_887 : vec4<f32> = x_44.x_MainLightPosition;
  let x_889 : vec3<f32> = u_xlat7;
  u_xlat36 = dot(vec3<f32>(x_887.x, x_887.y, x_887.z), x_889);
  let x_891 : f32 = u_xlat36;
  u_xlat36 = clamp(x_891, 0.0f, 1.0f);
  let x_893 : f32 = u_xlat35;
  let x_894 : f32 = u_xlat35;
  u_xlat35 = (x_893 * x_894);
  let x_896 : f32 = u_xlat35;
  let x_898 : f32 = u_xlat26.x;
  u_xlat35 = ((x_896 * x_898) + 1.000010014f);
  let x_902 : f32 = u_xlat36;
  let x_903 : f32 = u_xlat36;
  u_xlat36 = (x_902 * x_903);
  let x_905 : f32 = u_xlat35;
  let x_906 : f32 = u_xlat35;
  u_xlat35 = (x_905 * x_906);
  let x_908 : f32 = u_xlat36;
  u_xlat36 = max(x_908, 0.100000001f);
  let x_911 : f32 = u_xlat35;
  let x_912 : f32 = u_xlat36;
  u_xlat35 = (x_911 * x_912);
  let x_914 : f32 = u_xlat17;
  let x_915 : f32 = u_xlat35;
  u_xlat35 = (x_914 * x_915);
  let x_917 : f32 = u_xlat38;
  let x_918 : f32 = u_xlat35;
  u_xlat35 = (x_917 / x_918);
  let x_920 : vec4<f32> = u_xlat0;
  let x_922 : f32 = u_xlat35;
  let x_925 : vec3<f32> = u_xlat12;
  u_xlat7 = ((vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(x_922, x_922, x_922)) + x_925);
  let x_927 : vec4<f32> = u_xlat4;
  let x_929 : vec3<f32> = u_xlat7;
  let x_930 : vec3<f32> = (vec3<f32>(x_927.x, x_927.y, x_927.w) * x_929);
  let x_931 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_930.z);
  let x_934 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_936 : f32 = x_95.unity_LightData.y;
  u_xlat35 = min(x_934, x_936);
  let x_939 : f32 = u_xlat35;
  u_xlatu35 = bitcast<u32>(i32(x_939));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_951 : u32 = u_xlatu_loop_1;
    let x_952 : u32 = u_xlatu35;
    if ((x_951 < x_952)) {
    } else {
      break;
    }
    let x_955 : u32 = u_xlatu_loop_1;
    u_xlatu39 = (x_955 >> 2u);
    let x_958 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_958 & 3u));
    let x_962 : u32 = u_xlatu39;
    let x_965 : vec4<f32> = x_95.unity_LightIndices[bitcast<i32>(x_962)];
    let x_975 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_980 : vec4<u32> = indexable[x_975];
    u_xlat39 = dot(x_965, bitcast<vec4<f32>>(x_980));
    let x_984 : f32 = u_xlat39;
    u_xlati39 = i32(x_984);
    let x_986 : vec3<f32> = vs_TEXCOORD1;
    let x_998 : i32 = u_xlati39;
    let x_1000 : vec4<f32> = x_997.x_AdditionalLightsPosition[x_998];
    let x_1003 : i32 = u_xlati39;
    let x_1005 : vec4<f32> = x_997.x_AdditionalLightsPosition[x_1003];
    let x_1007 : vec3<f32> = ((-(x_986) * vec3<f32>(x_1000.w, x_1000.w, x_1000.w)) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
    let x_1008 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
    let x_1011 : vec4<f32> = u_xlat8;
    let x_1013 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1011.x, x_1011.y, x_1011.z), vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
    let x_1016 : f32 = u_xlat40;
    u_xlat40 = max(x_1016, 6.10351562e-05f);
    let x_1020 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1020);
    let x_1022 : f32 = u_xlat41;
    let x_1024 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1022, x_1022, x_1022) * vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
    let x_1028 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1028);
    let x_1030 : f32 = u_xlat40;
    let x_1031 : i32 = u_xlati39;
    let x_1033 : f32 = x_997.x_AdditionalLightsAttenuation[x_1031].x;
    u_xlat40 = (x_1030 * x_1033);
    let x_1035 : f32 = u_xlat40;
    let x_1037 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1035) * x_1037) + 1.0f);
    let x_1040 : f32 = u_xlat40;
    u_xlat40 = max(x_1040, 0.0f);
    let x_1042 : f32 = u_xlat40;
    let x_1043 : f32 = u_xlat40;
    u_xlat40 = (x_1042 * x_1043);
    let x_1045 : f32 = u_xlat40;
    let x_1046 : f32 = u_xlat42;
    u_xlat40 = (x_1045 * x_1046);
    let x_1048 : i32 = u_xlati39;
    let x_1050 : vec4<f32> = x_997.x_AdditionalLightsSpotDir[x_1048];
    let x_1052 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1050.x, x_1050.y, x_1050.z), x_1052);
    let x_1054 : f32 = u_xlat42;
    let x_1055 : i32 = u_xlati39;
    let x_1057 : f32 = x_997.x_AdditionalLightsAttenuation[x_1055].z;
    let x_1059 : i32 = u_xlati39;
    let x_1061 : f32 = x_997.x_AdditionalLightsAttenuation[x_1059].w;
    u_xlat42 = ((x_1054 * x_1057) + x_1061);
    let x_1063 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1063, 0.0f, 1.0f);
    let x_1065 : f32 = u_xlat42;
    let x_1066 : f32 = u_xlat42;
    u_xlat42 = (x_1065 * x_1066);
    let x_1068 : f32 = u_xlat40;
    let x_1069 : f32 = u_xlat42;
    u_xlat40 = (x_1068 * x_1069);
    let x_1072 : f32 = u_xlat28;
    let x_1074 : i32 = u_xlati39;
    let x_1076 : vec4<f32> = x_997.x_AdditionalLightsColor[x_1074];
    u_xlat10 = (vec3<f32>(x_1072, x_1072, x_1072) * vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
    let x_1079 : vec4<f32> = u_xlat3;
    let x_1081 : vec3<f32> = u_xlat9;
    u_xlat39 = dot(vec3<f32>(x_1079.x, x_1079.y, x_1079.z), x_1081);
    let x_1083 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1083, 0.0f, 1.0f);
    let x_1085 : f32 = u_xlat39;
    let x_1086 : f32 = u_xlat40;
    u_xlat39 = (x_1085 * x_1086);
    let x_1088 : f32 = u_xlat39;
    let x_1090 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1088, x_1088, x_1088) * x_1090);
    let x_1092 : vec4<f32> = u_xlat8;
    let x_1094 : f32 = u_xlat41;
    let x_1097 : vec3<f32> = u_xlat2;
    let x_1098 : vec3<f32> = ((vec3<f32>(x_1092.x, x_1092.y, x_1092.z) * vec3<f32>(x_1094, x_1094, x_1094)) + x_1097);
    let x_1099 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
    let x_1101 : vec4<f32> = u_xlat8;
    let x_1103 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1101.x, x_1101.y, x_1101.z), vec3<f32>(x_1103.x, x_1103.y, x_1103.z));
    let x_1106 : f32 = u_xlat39;
    u_xlat39 = max(x_1106, 1.17549435e-37f);
    let x_1108 : f32 = u_xlat39;
    u_xlat39 = inverseSqrt(x_1108);
    let x_1110 : f32 = u_xlat39;
    let x_1112 : vec4<f32> = u_xlat8;
    let x_1114 : vec3<f32> = (vec3<f32>(x_1110, x_1110, x_1110) * vec3<f32>(x_1112.x, x_1112.y, x_1112.z));
    let x_1115 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
    let x_1117 : vec4<f32> = u_xlat3;
    let x_1119 : vec4<f32> = u_xlat8;
    u_xlat39 = dot(vec3<f32>(x_1117.x, x_1117.y, x_1117.z), vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
    let x_1122 : f32 = u_xlat39;
    u_xlat39 = clamp(x_1122, 0.0f, 1.0f);
    let x_1124 : vec3<f32> = u_xlat9;
    let x_1125 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1124, vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
    let x_1128 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1128, 0.0f, 1.0f);
    let x_1130 : f32 = u_xlat39;
    let x_1131 : f32 = u_xlat39;
    u_xlat39 = (x_1130 * x_1131);
    let x_1133 : f32 = u_xlat39;
    let x_1135 : f32 = u_xlat26.x;
    u_xlat39 = ((x_1133 * x_1135) + 1.000010014f);
    let x_1138 : f32 = u_xlat40;
    let x_1139 : f32 = u_xlat40;
    u_xlat40 = (x_1138 * x_1139);
    let x_1141 : f32 = u_xlat39;
    let x_1142 : f32 = u_xlat39;
    u_xlat39 = (x_1141 * x_1142);
    let x_1144 : f32 = u_xlat40;
    u_xlat40 = max(x_1144, 0.100000001f);
    let x_1146 : f32 = u_xlat39;
    let x_1147 : f32 = u_xlat40;
    u_xlat39 = (x_1146 * x_1147);
    let x_1149 : f32 = u_xlat17;
    let x_1150 : f32 = u_xlat39;
    u_xlat39 = (x_1149 * x_1150);
    let x_1152 : f32 = u_xlat38;
    let x_1153 : f32 = u_xlat39;
    u_xlat39 = (x_1152 / x_1153);
    let x_1155 : vec4<f32> = u_xlat0;
    let x_1157 : f32 = u_xlat39;
    let x_1160 : vec3<f32> = u_xlat12;
    let x_1161 : vec3<f32> = ((vec3<f32>(x_1155.x, x_1155.y, x_1155.z) * vec3<f32>(x_1157, x_1157, x_1157)) + x_1160);
    let x_1162 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
    let x_1164 : vec4<f32> = u_xlat8;
    let x_1166 : vec3<f32> = u_xlat10;
    let x_1168 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1164.x, x_1164.y, x_1164.z) * x_1166) + x_1168);

    continuing {
      let x_1170 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1170 + bitcast<u32>(1i));
    }
  }
  let x_1172 : vec4<f32> = u_xlat5;
  let x_1174 : vec4<f32> = u_xlat6;
  let x_1177 : vec4<f32> = u_xlat4;
  let x_1179 : vec3<f32> = ((vec3<f32>(x_1172.x, x_1172.y, x_1172.z) * vec3<f32>(x_1174.x, x_1174.x, x_1174.x)) + vec3<f32>(x_1177.x, x_1177.y, x_1177.w));
  let x_1180 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
  let x_1182 : vec3<f32> = u_xlat7;
  let x_1183 : vec4<f32> = u_xlat0;
  let x_1185 : vec3<f32> = (x_1182 + vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : f32 = u_xlat33;
  let x_1189 : f32 = u_xlat33;
  u_xlat33 = (x_1188 * -(x_1189));
  let x_1192 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1192);
  let x_1194 : vec4<f32> = u_xlat0;
  let x_1198 : vec4<f32> = x_44.unity_FogColor;
  let x_1201 : vec3<f32> = (vec3<f32>(x_1194.x, x_1194.y, x_1194.z) + -(vec3<f32>(x_1198.x, x_1198.y, x_1198.z)));
  let x_1202 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
  let x_1206 : f32 = u_xlat33;
  let x_1208 : vec4<f32> = u_xlat0;
  let x_1212 : vec4<f32> = x_44.unity_FogColor;
  let x_1214 : vec3<f32> = ((vec3<f32>(x_1206, x_1206, x_1206) * vec3<f32>(x_1208.x, x_1208.y, x_1208.z)) + vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
  let x_1215 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
  let x_1220 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_1220 == 1.0f);
  let x_1222 : bool = u_xlatb0;
  if (x_1222) {
    let x_1227 : f32 = u_xlat1.x;
    x_1223 = x_1227;
  } else {
    x_1223 = 1.0f;
  }
  let x_1229 : f32 = x_1223;
  SV_Target0.w = x_1229;
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

