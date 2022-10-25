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
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_154 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_551 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_802 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_904 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb11 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlat31 : f32;
  var u_xlatu31 : u32;
  var u_xlati31 : i32;
  var u_xlat32 : f32;
  var u_xlat33 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb12 : vec2<bool>;
  var u_xlatb22 : bool;
  var x_498 : f32;
  var u_xlat22 : f32;
  var x_635 : f32;
  var x_646 : vec3<f32>;
  var u_xlatu2 : u32;
  var u_xlatb4 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu34 : u32;
  var u_xlati35 : i32;
  var u_xlat34 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat6 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatu36 : u32;
  var u_xlati7 : i32;
  var u_xlati36 : i32;
  var u_xlati17 : i32;
  var u_xlat7 : vec4<f32>;
  var u_xlatb36 : bool;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlatb17 : vec3<bool>;
  var u_xlat17 : vec3<f32>;
  var x_1220 : f32;
  var x_1233 : f32;
  var x_1295 : f32;
  var x_1306 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var x_1407 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb11 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb11;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_156 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres0;
  let x_159 : vec3<f32> = (x_149 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec3<f32> = vs_TEXCOORD1;
  let x_165 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres1;
  let x_168 : vec3<f32> = (x_163 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec3<f32> = vs_TEXCOORD1;
  let x_175 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres2;
  let x_178 : vec3<f32> = (x_172 + -(vec3<f32>(x_175.x, x_175.y, x_175.z)));
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_182 : vec3<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_182 + -(vec3<f32>(x_185.x, x_185.y, x_185.z)));
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_189.x, x_189.y, x_189.z), vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_202 : vec4<f32> = u_xlat4;
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_208 : vec3<f32> = u_xlat5;
  let x_209 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_208, x_209);
  let x_215 : vec4<f32> = u_xlat2;
  let x_218 : vec4<f32> = x_154.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_215 < x_218);
  let x_221 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_229);
  let x_233 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_233);
  let x_237 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_237);
  let x_243 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_243);
  let x_247 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_247);
  let x_250 : vec4<f32> = u_xlat2;
  let x_252 : vec4<f32> = u_xlat3;
  let x_254 : vec3<f32> = (vec3<f32>(x_250.x, x_250.y, x_250.z) + vec3<f32>(x_252.y, x_252.z, x_252.w));
  let x_255 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat2;
  let x_260 : vec3<f32> = max(vec3<f32>(x_257.x, x_257.y, x_257.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_261.x, x_260.x, x_260.y, x_260.z);
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat31 = dot(x_264, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_270 : f32 = u_xlat31;
  u_xlat31 = (-(x_270) + 4.0f);
  let x_275 : f32 = u_xlat31;
  u_xlatu31 = u32(x_275);
  let x_279 : u32 = u_xlatu31;
  u_xlati31 = (bitcast<i32>(x_279) << bitcast<u32>(2i));
  let x_282 : vec3<f32> = vs_TEXCOORD1;
  let x_284 : i32 = u_xlati31;
  let x_287 : i32 = u_xlati31;
  let x_291 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_284 + 1i) / 4i)][((x_287 + 1i) % 4i)];
  let x_293 : vec3<f32> = (vec3<f32>(x_282.y, x_282.y, x_282.y) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : i32 = u_xlati31;
  let x_298 : i32 = u_xlati31;
  let x_301 : vec4<f32> = x_154.x_MainLightWorldToShadow[(x_296 / 4i)][(x_298 % 4i)];
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec4<f32> = u_xlat2;
  let x_308 : vec3<f32> = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.x, x_303.x)) + vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : i32 = u_xlati31;
  let x_314 : i32 = u_xlati31;
  let x_318 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_311 + 2i) / 4i)][((x_314 + 2i) % 4i)];
  let x_320 : vec3<f32> = vs_TEXCOORD1;
  let x_323 : vec4<f32> = u_xlat2;
  let x_325 : vec3<f32> = ((vec3<f32>(x_318.x, x_318.y, x_318.z) * vec3<f32>(x_320.z, x_320.z, x_320.z)) + vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_328 : vec4<f32> = u_xlat2;
  let x_330 : i32 = u_xlati31;
  let x_333 : i32 = u_xlati31;
  let x_337 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_330 + 3i) / 4i)][((x_333 + 3i) % 4i)];
  let x_339 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) + vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_339.x, x_339.y, x_339.z, x_340.w);
  let x_343 : f32 = vs_TEXCOORD1.y;
  let x_346 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat31 = (x_343 * x_346);
  let x_349 : f32 = x_44.unity_MatrixV[0i].z;
  let x_351 : f32 = vs_TEXCOORD1.x;
  let x_353 : f32 = u_xlat31;
  u_xlat31 = ((x_349 * x_351) + x_353);
  let x_356 : f32 = x_44.unity_MatrixV[2i].z;
  let x_358 : f32 = vs_TEXCOORD1.z;
  let x_360 : f32 = u_xlat31;
  u_xlat31 = ((x_356 * x_358) + x_360);
  let x_362 : f32 = u_xlat31;
  let x_364 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat31 = (x_362 + x_364);
  let x_366 : f32 = u_xlat31;
  let x_370 : f32 = x_44.x_ProjectionParams.y;
  u_xlat31 = (-(x_366) + -(x_370));
  let x_373 : f32 = u_xlat31;
  u_xlat31 = max(x_373, 0.0f);
  let x_375 : f32 = u_xlat31;
  let x_378 : f32 = x_44.unity_FogParams.x;
  u_xlat31 = (x_375 * x_378);
  let x_386 : vec2<f32> = vs_TEXCOORD7;
  let x_388 : f32 = x_44.x_GlobalMipBias.x;
  let x_389 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_386, x_388);
  let x_390 : vec3<f32> = vec3<f32>(x_389.x, x_389.y, x_389.z);
  let x_391 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_395 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_396 : vec2<f32> = vec2<f32>(x_395.x, x_395.y);
  let x_400 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_396.x, x_396.y));
  let x_401 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
  let x_403 : vec4<f32> = u_xlat4;
  let x_405 : vec4<f32> = hlslcc_FragCoord;
  let x_407 : vec2<f32> = (vec2<f32>(x_403.x, x_403.y) * vec2<f32>(x_405.x, x_405.y));
  let x_408 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
  let x_412 : f32 = u_xlat4.y;
  let x_415 : f32 = x_44.x_ScaleBiasRt.x;
  let x_418 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat32 = ((x_412 * x_415) + x_418);
  let x_420 : f32 = u_xlat32;
  u_xlat4.z = (-(x_420) + 1.0f);
  let x_429 : vec4<f32> = u_xlat4;
  let x_432 : f32 = x_44.x_GlobalMipBias.x;
  let x_433 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_429.x, x_429.z), x_432);
  u_xlat32 = x_433.x;
  let x_436 : f32 = u_xlat32;
  u_xlat33 = (x_436 + -1.0f);
  let x_439 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_440 : f32 = u_xlat33;
  u_xlat33 = ((x_439 * x_440) + 1.0f);
  let x_443 : f32 = u_xlat32;
  u_xlat32 = min(x_443, 1.0f);
  let x_446 : vec4<f32> = u_xlat2;
  let x_447 : vec2<f32> = vec2<f32>(x_446.x, x_446.y);
  let x_449 : f32 = u_xlat2.z;
  txVec0 = vec3<f32>(x_447.x, x_447.y, x_449);
  let x_461 : vec3<f32> = txVec0;
  let x_463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_461.xy, x_461.z);
  u_xlat2.x = x_463;
  let x_467 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat12.x = (-(x_467) + 1.0f);
  let x_472 : f32 = u_xlat2.x;
  let x_474 : f32 = x_154.x_MainLightShadowParams.x;
  let x_477 : f32 = u_xlat12.x;
  u_xlat2.x = ((x_472 * x_474) + x_477);
  let x_484 : f32 = u_xlat2.z;
  u_xlatb12.x = (0.0f >= x_484);
  let x_489 : f32 = u_xlat2.z;
  u_xlatb22 = (x_489 >= 1.0f);
  let x_491 : bool = u_xlatb22;
  let x_493 : bool = u_xlatb12.x;
  u_xlatb12.x = (x_491 | x_493);
  let x_497 : bool = u_xlatb12.x;
  if (x_497) {
    x_498 = 1.0f;
  } else {
    let x_503 : f32 = u_xlat2.x;
    x_498 = x_503;
  }
  let x_504 : f32 = x_498;
  u_xlat2.x = x_504;
  let x_506 : vec3<f32> = vs_TEXCOORD1;
  let x_510 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_512 : vec3<f32> = (x_506 + -(x_510));
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat4;
  let x_517 : vec4<f32> = u_xlat4;
  u_xlat12.x = dot(vec3<f32>(x_515.x, x_515.y, x_515.z), vec3<f32>(x_517.x, x_517.y, x_517.z));
  let x_522 : f32 = u_xlat12.x;
  let x_524 : f32 = x_154.x_MainLightShadowParams.z;
  let x_527 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_522 * x_524) + x_527);
  let x_531 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_531, 0.0f, 1.0f);
  let x_536 : f32 = u_xlat2.x;
  u_xlat22 = (-(x_536) + 1.0f);
  let x_540 : f32 = u_xlat12.x;
  let x_541 : f32 = u_xlat22;
  let x_544 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_540 * x_541) + x_544);
  let x_553 : f32 = x_551.x_MainLightCookieTextureFormat;
  u_xlatb12.x = !((x_553 == -1.0f));
  let x_557 : bool = u_xlatb12.x;
  if (x_557) {
    let x_560 : vec3<f32> = vs_TEXCOORD1;
    let x_563 : vec4<f32> = x_551.x_MainLightWorldToLight[1i];
    let x_565 : vec2<f32> = (vec2<f32>(x_560.y, x_560.y) * vec2<f32>(x_563.x, x_563.y));
    let x_566 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_565.x, x_565.y, x_566.z);
    let x_569 : vec4<f32> = x_551.x_MainLightWorldToLight[0i];
    let x_571 : vec3<f32> = vs_TEXCOORD1;
    let x_574 : vec3<f32> = u_xlat12;
    let x_576 : vec2<f32> = ((vec2<f32>(x_569.x, x_569.y) * vec2<f32>(x_571.x, x_571.x)) + vec2<f32>(x_574.x, x_574.y));
    let x_577 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_576.x, x_576.y, x_577.z);
    let x_580 : vec4<f32> = x_551.x_MainLightWorldToLight[2i];
    let x_582 : vec3<f32> = vs_TEXCOORD1;
    let x_585 : vec3<f32> = u_xlat12;
    let x_587 : vec2<f32> = ((vec2<f32>(x_580.x, x_580.y) * vec2<f32>(x_582.z, x_582.z)) + vec2<f32>(x_585.x, x_585.y));
    let x_588 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_587.x, x_587.y, x_588.z);
    let x_590 : vec3<f32> = u_xlat12;
    let x_593 : vec4<f32> = x_551.x_MainLightWorldToLight[3i];
    let x_595 : vec2<f32> = (vec2<f32>(x_590.x, x_590.y) + vec2<f32>(x_593.x, x_593.y));
    let x_596 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_595.x, x_595.y, x_596.z);
    let x_598 : vec3<f32> = u_xlat12;
    let x_603 : vec2<f32> = ((vec2<f32>(x_598.x, x_598.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_604 : vec3<f32> = u_xlat12;
    u_xlat12 = vec3<f32>(x_603.x, x_603.y, x_604.z);
    let x_611 : vec3<f32> = u_xlat12;
    let x_614 : f32 = x_44.x_GlobalMipBias.x;
    let x_615 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_611.x, x_611.y), x_614);
    u_xlat4 = x_615;
    let x_617 : f32 = x_551.x_MainLightCookieTextureFormat;
    let x_619 : f32 = x_551.x_MainLightCookieTextureFormat;
    let x_621 : f32 = x_551.x_MainLightCookieTextureFormat;
    let x_623 : f32 = x_551.x_MainLightCookieTextureFormat;
    let x_624 : vec4<f32> = vec4<f32>(x_617, x_619, x_621, x_623);
    let x_631 : vec4<bool> = (vec4<f32>(x_624.x, x_624.y, x_624.z, x_624.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb12 = vec2<bool>(x_631.x, x_631.y);
    let x_634 : bool = u_xlatb12.y;
    if (x_634) {
      let x_639 : f32 = u_xlat4.w;
      x_635 = x_639;
    } else {
      let x_642 : f32 = u_xlat4.x;
      x_635 = x_642;
    }
    let x_643 : f32 = x_635;
    u_xlat22 = x_643;
    let x_645 : bool = u_xlatb12.x;
    if (x_645) {
      let x_649 : vec4<f32> = u_xlat4;
      x_646 = vec3<f32>(x_649.x, x_649.y, x_649.z);
    } else {
      let x_652 : f32 = u_xlat22;
      x_646 = vec3<f32>(x_652, x_652, x_652);
    }
    let x_654 : vec3<f32> = x_646;
    let x_655 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_661 : vec4<f32> = u_xlat4;
  let x_664 : vec4<f32> = x_44.x_MainLightColor;
  let x_666 : vec3<f32> = (vec3<f32>(x_661.x, x_661.y, x_661.z) * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : f32 = u_xlat33;
  let x_671 : vec4<f32> = u_xlat4;
  let x_673 : vec3<f32> = (vec3<f32>(x_669, x_669, x_669) * vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : f32 = u_xlat32;
  let x_678 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec3<f32>(x_676, x_676, x_676) * vec3<f32>(x_678.x, x_678.y, x_678.z));
  let x_682 : f32 = u_xlat2.x;
  let x_684 : f32 = x_93.unity_LightData.z;
  u_xlat2.x = (x_682 * x_684);
  let x_687 : vec4<f32> = u_xlat2;
  let x_689 : vec4<f32> = u_xlat4;
  let x_691 : vec3<f32> = (vec3<f32>(x_687.x, x_687.x, x_687.x) * vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  let x_694 : vec3<f32> = u_xlat1;
  let x_696 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat2.x = dot(x_694, vec3<f32>(x_696.x, x_696.y, x_696.z));
  let x_701 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_701, 0.0f, 1.0f);
  let x_704 : vec4<f32> = u_xlat2;
  let x_706 : vec4<f32> = u_xlat3;
  let x_708 : vec3<f32> = (vec3<f32>(x_704.x, x_704.x, x_704.x) * vec3<f32>(x_706.x, x_706.y, x_706.z));
  let x_709 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat0;
  let x_713 : vec4<f32> = u_xlat3;
  let x_715 : vec3<f32> = (vec3<f32>(x_711.y, x_711.z, x_711.w) * vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_719 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_721 : f32 = x_93.unity_LightData.y;
  u_xlat2.x = min(x_719, x_721);
  let x_726 : f32 = u_xlat2.x;
  u_xlatu2 = bitcast<u32>(i32(x_726));
  let x_731 : f32 = x_551.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_733 : f32 = x_551.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_735 : f32 = x_551.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_737 : f32 = x_551.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_738 : vec4<f32> = vec4<f32>(x_731, x_733, x_735, x_737);
  let x_744 : vec4<bool> = (vec4<f32>(x_738.x, x_738.y, x_738.z, x_738.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_744.x, x_744.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_755 : u32 = u_xlatu_loop_1;
    let x_756 : u32 = u_xlatu2;
    if ((x_755 < x_756)) {
    } else {
      break;
    }
    let x_759 : u32 = u_xlatu_loop_1;
    u_xlatu34 = (x_759 >> 2u);
    let x_762 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_762 & 3u));
    let x_766 : u32 = u_xlatu34;
    let x_769 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_766)];
    let x_779 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_784 : vec4<u32> = indexable[x_779];
    u_xlat34 = dot(x_769, bitcast<vec4<f32>>(x_784));
    let x_787 : f32 = u_xlat34;
    u_xlatu34 = bitcast<u32>(i32(x_787));
    let x_791 : vec3<f32> = vs_TEXCOORD1;
    let x_803 : u32 = u_xlatu34;
    let x_806 : vec4<f32> = x_802.x_AdditionalLightsPosition[bitcast<i32>(x_803)];
    let x_809 : u32 = u_xlatu34;
    let x_812 : vec4<f32> = x_802.x_AdditionalLightsPosition[bitcast<i32>(x_809)];
    u_xlat6 = ((-(x_791) * vec3<f32>(x_806.w, x_806.w, x_806.w)) + vec3<f32>(x_812.x, x_812.y, x_812.z));
    let x_816 : vec3<f32> = u_xlat6;
    let x_817 : vec3<f32> = u_xlat6;
    u_xlat35 = dot(x_816, x_817);
    let x_819 : f32 = u_xlat35;
    u_xlat35 = max(x_819, 6.10351562e-05f);
    let x_823 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_823);
    let x_825 : f32 = u_xlat36;
    let x_827 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_825, x_825, x_825) * x_827);
    let x_829 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_829);
    let x_831 : f32 = u_xlat35;
    let x_832 : u32 = u_xlatu34;
    let x_835 : f32 = x_802.x_AdditionalLightsAttenuation[bitcast<i32>(x_832)].x;
    u_xlat35 = (x_831 * x_835);
    let x_837 : f32 = u_xlat35;
    let x_839 : f32 = u_xlat35;
    u_xlat35 = ((-(x_837) * x_839) + 1.0f);
    let x_842 : f32 = u_xlat35;
    u_xlat35 = max(x_842, 0.0f);
    let x_844 : f32 = u_xlat35;
    let x_845 : f32 = u_xlat35;
    u_xlat35 = (x_844 * x_845);
    let x_847 : f32 = u_xlat35;
    let x_848 : f32 = u_xlat36;
    u_xlat35 = (x_847 * x_848);
    let x_850 : u32 = u_xlatu34;
    let x_853 : vec4<f32> = x_802.x_AdditionalLightsSpotDir[bitcast<i32>(x_850)];
    let x_855 : vec3<f32> = u_xlat6;
    u_xlat36 = dot(vec3<f32>(x_853.x, x_853.y, x_853.z), x_855);
    let x_857 : f32 = u_xlat36;
    let x_858 : u32 = u_xlatu34;
    let x_861 : f32 = x_802.x_AdditionalLightsAttenuation[bitcast<i32>(x_858)].z;
    let x_863 : u32 = u_xlatu34;
    let x_866 : f32 = x_802.x_AdditionalLightsAttenuation[bitcast<i32>(x_863)].w;
    u_xlat36 = ((x_857 * x_861) + x_866);
    let x_868 : f32 = u_xlat36;
    u_xlat36 = clamp(x_868, 0.0f, 1.0f);
    let x_870 : f32 = u_xlat36;
    let x_871 : f32 = u_xlat36;
    u_xlat36 = (x_870 * x_871);
    let x_873 : f32 = u_xlat35;
    let x_874 : f32 = u_xlat36;
    u_xlat35 = (x_873 * x_874);
    let x_877 : u32 = u_xlatu34;
    u_xlatu36 = (x_877 >> 5u);
    let x_880 : u32 = u_xlatu34;
    u_xlati7 = (1i << bitcast<u32>((bitcast<i32>(x_880) & 31i)));
    let x_886 : i32 = u_xlati7;
    let x_888 : u32 = u_xlatu36;
    let x_891 : f32 = x_551.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_888)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_886) & bitcast<u32>(x_891)));
    let x_895 : i32 = u_xlati36;
    if ((x_895 != 0i)) {
      let x_905 : u32 = u_xlatu34;
      let x_908 : f32 = x_904.x_AdditionalLightsLightTypes[bitcast<i32>(x_905)].el;
      u_xlati36 = i32(x_908);
      let x_910 : i32 = u_xlati36;
      u_xlati7 = select(1i, 0i, (x_910 != 0i));
      let x_914 : u32 = u_xlatu34;
      u_xlati17 = (bitcast<i32>(x_914) << bitcast<u32>(2i));
      let x_917 : i32 = u_xlati7;
      if ((x_917 != 0i)) {
        let x_922 : vec3<f32> = vs_TEXCOORD1;
        let x_924 : i32 = u_xlati17;
        let x_927 : i32 = u_xlati17;
        let x_931 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[((x_924 + 1i) / 4i)][((x_927 + 1i) % 4i)];
        let x_933 : vec3<f32> = (vec3<f32>(x_922.y, x_922.y, x_922.y) * vec3<f32>(x_931.x, x_931.y, x_931.w));
        let x_934 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_933.x, x_934.y, x_933.y, x_933.z);
        let x_936 : i32 = u_xlati17;
        let x_938 : i32 = u_xlati17;
        let x_941 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[(x_936 / 4i)][(x_938 % 4i)];
        let x_943 : vec3<f32> = vs_TEXCOORD1;
        let x_946 : vec4<f32> = u_xlat7;
        let x_948 : vec3<f32> = ((vec3<f32>(x_941.x, x_941.y, x_941.w) * vec3<f32>(x_943.x, x_943.x, x_943.x)) + vec3<f32>(x_946.x, x_946.z, x_946.w));
        let x_949 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_948.x, x_949.y, x_948.y, x_948.z);
        let x_951 : i32 = u_xlati17;
        let x_954 : i32 = u_xlati17;
        let x_958 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[((x_951 + 2i) / 4i)][((x_954 + 2i) % 4i)];
        let x_960 : vec3<f32> = vs_TEXCOORD1;
        let x_963 : vec4<f32> = u_xlat7;
        let x_965 : vec3<f32> = ((vec3<f32>(x_958.x, x_958.y, x_958.w) * vec3<f32>(x_960.z, x_960.z, x_960.z)) + vec3<f32>(x_963.x, x_963.z, x_963.w));
        let x_966 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_965.x, x_966.y, x_965.y, x_965.z);
        let x_968 : vec4<f32> = u_xlat7;
        let x_970 : i32 = u_xlati17;
        let x_973 : i32 = u_xlati17;
        let x_977 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[((x_970 + 3i) / 4i)][((x_973 + 3i) % 4i)];
        let x_979 : vec3<f32> = (vec3<f32>(x_968.x, x_968.z, x_968.w) + vec3<f32>(x_977.x, x_977.y, x_977.w));
        let x_980 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_979.x, x_980.y, x_979.y, x_979.z);
        let x_982 : vec4<f32> = u_xlat7;
        let x_984 : vec4<f32> = u_xlat7;
        let x_986 : vec2<f32> = (vec2<f32>(x_982.x, x_982.z) / vec2<f32>(x_984.w, x_984.w));
        let x_987 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_986.x, x_987.y, x_986.y, x_987.w);
        let x_989 : vec4<f32> = u_xlat7;
        let x_992 : vec2<f32> = ((vec2<f32>(x_989.x, x_989.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_993 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_992.x, x_993.y, x_992.y, x_993.w);
        let x_995 : vec4<f32> = u_xlat7;
        let x_999 : vec2<f32> = clamp(vec2<f32>(x_995.x, x_995.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1000 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_999.x, x_1000.y, x_999.y, x_1000.w);
        let x_1002 : u32 = u_xlatu34;
        let x_1005 : vec4<f32> = x_904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1002)];
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1010 : u32 = u_xlatu34;
        let x_1013 : vec4<f32> = x_904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1010)];
        let x_1015 : vec2<f32> = ((vec2<f32>(x_1005.x, x_1005.y) * vec2<f32>(x_1007.x, x_1007.z)) + vec2<f32>(x_1013.z, x_1013.w));
        let x_1016 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1015.x, x_1016.y, x_1015.y, x_1016.w);
      } else {
        let x_1020 : i32 = u_xlati36;
        u_xlatb36 = (x_1020 == 1i);
        let x_1022 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_1022);
        let x_1024 : i32 = u_xlati36;
        if ((x_1024 != 0i)) {
          let x_1029 : vec3<f32> = vs_TEXCOORD1;
          let x_1031 : i32 = u_xlati17;
          let x_1034 : i32 = u_xlati17;
          let x_1038 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[((x_1031 + 1i) / 4i)][((x_1034 + 1i) % 4i)];
          let x_1040 : vec2<f32> = (vec2<f32>(x_1029.y, x_1029.y) * vec2<f32>(x_1038.x, x_1038.y));
          let x_1041 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
          let x_1043 : i32 = u_xlati17;
          let x_1045 : i32 = u_xlati17;
          let x_1048 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[(x_1043 / 4i)][(x_1045 % 4i)];
          let x_1050 : vec3<f32> = vs_TEXCOORD1;
          let x_1053 : vec4<f32> = u_xlat8;
          let x_1055 : vec2<f32> = ((vec2<f32>(x_1048.x, x_1048.y) * vec2<f32>(x_1050.x, x_1050.x)) + vec2<f32>(x_1053.x, x_1053.y));
          let x_1056 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
          let x_1058 : i32 = u_xlati17;
          let x_1061 : i32 = u_xlati17;
          let x_1065 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[((x_1058 + 2i) / 4i)][((x_1061 + 2i) % 4i)];
          let x_1067 : vec3<f32> = vs_TEXCOORD1;
          let x_1070 : vec4<f32> = u_xlat8;
          let x_1072 : vec2<f32> = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1067.z, x_1067.z)) + vec2<f32>(x_1070.x, x_1070.y));
          let x_1073 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
          let x_1075 : vec4<f32> = u_xlat8;
          let x_1077 : i32 = u_xlati17;
          let x_1080 : i32 = u_xlati17;
          let x_1084 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[((x_1077 + 3i) / 4i)][((x_1080 + 3i) % 4i)];
          let x_1086 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.y) + vec2<f32>(x_1084.x, x_1084.y));
          let x_1087 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
          let x_1089 : vec4<f32> = u_xlat8;
          let x_1092 : vec2<f32> = ((vec2<f32>(x_1089.x, x_1089.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1093 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1092.x, x_1092.y, x_1093.z, x_1093.w);
          let x_1095 : vec4<f32> = u_xlat8;
          let x_1097 : vec2<f32> = fract(vec2<f32>(x_1095.x, x_1095.y));
          let x_1098 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1097.x, x_1097.y, x_1098.z, x_1098.w);
          let x_1100 : u32 = u_xlatu34;
          let x_1103 : vec4<f32> = x_904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1100)];
          let x_1105 : vec4<f32> = u_xlat8;
          let x_1108 : u32 = u_xlatu34;
          let x_1111 : vec4<f32> = x_904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1108)];
          let x_1113 : vec2<f32> = ((vec2<f32>(x_1103.x, x_1103.y) * vec2<f32>(x_1105.x, x_1105.y)) + vec2<f32>(x_1111.z, x_1111.w));
          let x_1114 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1113.x, x_1114.y, x_1113.y, x_1114.w);
        } else {
          let x_1117 : vec3<f32> = vs_TEXCOORD1;
          let x_1119 : i32 = u_xlati17;
          let x_1122 : i32 = u_xlati17;
          let x_1126 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[((x_1119 + 1i) / 4i)][((x_1122 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_1117.y, x_1117.y, x_1117.y, x_1117.y) * x_1126);
          let x_1128 : i32 = u_xlati17;
          let x_1130 : i32 = u_xlati17;
          let x_1133 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[(x_1128 / 4i)][(x_1130 % 4i)];
          let x_1134 : vec3<f32> = vs_TEXCOORD1;
          let x_1137 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1133 * vec4<f32>(x_1134.x, x_1134.x, x_1134.x, x_1134.x)) + x_1137);
          let x_1139 : i32 = u_xlati17;
          let x_1142 : i32 = u_xlati17;
          let x_1146 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[((x_1139 + 2i) / 4i)][((x_1142 + 2i) % 4i)];
          let x_1147 : vec3<f32> = vs_TEXCOORD1;
          let x_1150 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_1146 * vec4<f32>(x_1147.z, x_1147.z, x_1147.z, x_1147.z)) + x_1150);
          let x_1152 : vec4<f32> = u_xlat8;
          let x_1153 : i32 = u_xlati17;
          let x_1156 : i32 = u_xlati17;
          let x_1160 : vec4<f32> = x_904.x_AdditionalLightsWorldToLights[((x_1153 + 3i) / 4i)][((x_1156 + 3i) % 4i)];
          u_xlat8 = (x_1152 + x_1160);
          let x_1162 : vec4<f32> = u_xlat8;
          let x_1164 : vec4<f32> = u_xlat8;
          let x_1166 : vec3<f32> = (vec3<f32>(x_1162.x, x_1162.y, x_1162.z) / vec3<f32>(x_1164.w, x_1164.w, x_1164.w));
          let x_1167 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
          let x_1169 : vec4<f32> = u_xlat8;
          let x_1171 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(vec3<f32>(x_1169.x, x_1169.y, x_1169.z), vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
          let x_1174 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_1174);
          let x_1176 : f32 = u_xlat36;
          let x_1178 : vec4<f32> = u_xlat8;
          let x_1180 : vec3<f32> = (vec3<f32>(x_1176, x_1176, x_1176) * vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
          let x_1181 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1181.w);
          let x_1183 : vec4<f32> = u_xlat8;
          u_xlat36 = dot(abs(vec3<f32>(x_1183.x, x_1183.y, x_1183.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1188 : f32 = u_xlat36;
          u_xlat36 = max(x_1188, 0.000001f);
          let x_1191 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_1191);
          let x_1194 : f32 = u_xlat36;
          let x_1196 : vec4<f32> = u_xlat8;
          u_xlat9 = (vec3<f32>(x_1194, x_1194, x_1194) * vec3<f32>(x_1196.z, x_1196.x, x_1196.y));
          let x_1200 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_1200);
          let x_1204 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_1204, 0.0f, 1.0f);
          let x_1210 : vec3<f32> = u_xlat9;
          let x_1213 : vec4<bool> = (vec4<f32>(x_1210.y, x_1210.y, x_1210.z, x_1210.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_1214 : vec2<bool> = vec2<bool>(x_1213.x, x_1213.z);
          let x_1215 : vec3<bool> = u_xlatb17;
          u_xlatb17 = vec3<bool>(x_1214.x, x_1215.y, x_1214.y);
          let x_1219 : bool = u_xlatb17.x;
          if (x_1219) {
            let x_1224 : f32 = u_xlat9.x;
            x_1220 = x_1224;
          } else {
            let x_1227 : f32 = u_xlat9.x;
            x_1220 = -(x_1227);
          }
          let x_1229 : f32 = x_1220;
          u_xlat17.x = x_1229;
          let x_1232 : bool = u_xlatb17.z;
          if (x_1232) {
            let x_1237 : f32 = u_xlat9.x;
            x_1233 = x_1237;
          } else {
            let x_1240 : f32 = u_xlat9.x;
            x_1233 = -(x_1240);
          }
          let x_1242 : f32 = x_1233;
          u_xlat17.z = x_1242;
          let x_1244 : vec4<f32> = u_xlat8;
          let x_1246 : f32 = u_xlat36;
          let x_1249 : vec3<f32> = u_xlat17;
          let x_1251 : vec2<f32> = ((vec2<f32>(x_1244.x, x_1244.y) * vec2<f32>(x_1246, x_1246)) + vec2<f32>(x_1249.x, x_1249.z));
          let x_1252 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1251.x, x_1252.y, x_1251.y);
          let x_1254 : vec3<f32> = u_xlat17;
          let x_1257 : vec2<f32> = ((vec2<f32>(x_1254.x, x_1254.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1258 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1257.x, x_1258.y, x_1257.y);
          let x_1260 : vec3<f32> = u_xlat17;
          let x_1264 : vec2<f32> = clamp(vec2<f32>(x_1260.x, x_1260.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1265 : vec3<f32> = u_xlat17;
          u_xlat17 = vec3<f32>(x_1264.x, x_1265.y, x_1264.y);
          let x_1267 : u32 = u_xlatu34;
          let x_1270 : vec4<f32> = x_904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1267)];
          let x_1272 : vec3<f32> = u_xlat17;
          let x_1275 : u32 = u_xlatu34;
          let x_1278 : vec4<f32> = x_904.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1275)];
          let x_1280 : vec2<f32> = ((vec2<f32>(x_1270.x, x_1270.y) * vec2<f32>(x_1272.x, x_1272.z)) + vec2<f32>(x_1278.z, x_1278.w));
          let x_1281 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_1280.x, x_1281.y, x_1280.y, x_1281.w);
        }
      }
      let x_1288 : vec4<f32> = u_xlat7;
      let x_1291 : f32 = x_44.x_GlobalMipBias.x;
      let x_1292 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1288.x, x_1288.z), x_1291);
      u_xlat7 = x_1292;
      let x_1294 : bool = u_xlatb4.y;
      if (x_1294) {
        let x_1299 : f32 = u_xlat7.w;
        x_1295 = x_1299;
      } else {
        let x_1302 : f32 = u_xlat7.x;
        x_1295 = x_1302;
      }
      let x_1303 : f32 = x_1295;
      u_xlat36 = x_1303;
      let x_1305 : bool = u_xlatb4.x;
      if (x_1305) {
        let x_1309 : vec4<f32> = u_xlat7;
        x_1306 = vec3<f32>(x_1309.x, x_1309.y, x_1309.z);
      } else {
        let x_1312 : f32 = u_xlat36;
        x_1306 = vec3<f32>(x_1312, x_1312, x_1312);
      }
      let x_1314 : vec3<f32> = x_1306;
      let x_1315 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_1314.x, x_1314.y, x_1314.z, x_1315.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_1321 : vec4<f32> = u_xlat7;
    let x_1323 : u32 = u_xlatu34;
    let x_1326 : vec4<f32> = x_802.x_AdditionalLightsColor[bitcast<i32>(x_1323)];
    let x_1328 : vec3<f32> = (vec3<f32>(x_1321.x, x_1321.y, x_1321.z) * vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
    let x_1329 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
    let x_1331 : f32 = u_xlat33;
    let x_1333 : vec4<f32> = u_xlat7;
    let x_1335 : vec3<f32> = (vec3<f32>(x_1331, x_1331, x_1331) * vec3<f32>(x_1333.x, x_1333.y, x_1333.z));
    let x_1336 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
    let x_1338 : f32 = u_xlat35;
    let x_1340 : vec4<f32> = u_xlat7;
    let x_1342 : vec3<f32> = (vec3<f32>(x_1338, x_1338, x_1338) * vec3<f32>(x_1340.x, x_1340.y, x_1340.z));
    let x_1343 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1342.x, x_1342.y, x_1342.z, x_1343.w);
    let x_1345 : vec3<f32> = u_xlat1;
    let x_1346 : vec3<f32> = u_xlat6;
    u_xlat34 = dot(x_1345, x_1346);
    let x_1348 : f32 = u_xlat34;
    u_xlat34 = clamp(x_1348, 0.0f, 1.0f);
    let x_1350 : f32 = u_xlat34;
    let x_1352 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_1350, x_1350, x_1350) * vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
    let x_1355 : vec3<f32> = u_xlat6;
    let x_1356 : vec4<f32> = u_xlat0;
    let x_1359 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_1355 * vec3<f32>(x_1356.y, x_1356.z, x_1356.w)) + x_1359);

    continuing {
      let x_1361 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1361 + bitcast<u32>(1i));
    }
  }
  let x_1364 : vec3<f32> = u_xlat12;
  let x_1365 : vec4<f32> = u_xlat0;
  let x_1368 : vec4<f32> = u_xlat3;
  u_xlat10 = ((x_1364 * vec3<f32>(x_1365.y, x_1365.z, x_1365.w)) + vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
  let x_1371 : vec3<f32> = u_xlat5;
  let x_1372 : vec3<f32> = u_xlat10;
  u_xlat10 = (x_1371 + x_1372);
  let x_1374 : f32 = u_xlat31;
  let x_1375 : f32 = u_xlat31;
  u_xlat1.x = (x_1374 * -(x_1375));
  let x_1380 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1380);
  let x_1383 : vec3<f32> = u_xlat10;
  let x_1386 : vec4<f32> = x_44.unity_FogColor;
  u_xlat10 = (x_1383 + -(vec3<f32>(x_1386.x, x_1386.y, x_1386.z)));
  let x_1392 : vec3<f32> = u_xlat1;
  let x_1394 : vec3<f32> = u_xlat10;
  let x_1397 : vec4<f32> = x_44.unity_FogColor;
  let x_1399 : vec3<f32> = ((vec3<f32>(x_1392.x, x_1392.x, x_1392.x) * x_1394) + vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1404 : f32 = x_56.x_Surface;
  u_xlatb10 = (x_1404 == 1.0f);
  let x_1406 : bool = u_xlatb10;
  if (x_1406) {
    let x_1411 : f32 = u_xlat0.x;
    x_1407 = x_1411;
  } else {
    x_1407 = 1.0f;
  }
  let x_1413 : f32 = x_1407;
  SV_Target0.w = x_1413;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

