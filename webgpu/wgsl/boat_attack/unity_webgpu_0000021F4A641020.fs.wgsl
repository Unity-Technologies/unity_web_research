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

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(3) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_BumpMap : sampler;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(12) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(18) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_505 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_574 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_768 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1069 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1172 : AdditionalLightsCookies;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat42 : f32;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlat5 : vec4<f32>;
  var x_198 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat46 : f32;
  var u_xlat47 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat20 : vec3<f32>;
  var u_xlatb20 : vec2<bool>;
  var u_xlatb34 : bool;
  var u_xlat34 : f32;
  var u_xlat7 : vec4<f32>;
  var x_659 : f32;
  var x_670 : vec3<f32>;
  var u_xlat49 : f32;
  var u_xlat8 : vec4<f32>;
  var u_xlatu15 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu47 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat50 : f32;
  var u_xlatu50 : u32;
  var u_xlati51 : i32;
  var u_xlati50 : i32;
  var u_xlati52 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlatb50 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb39 : vec2<bool>;
  var x_1466 : f32;
  var x_1479 : f32;
  var x_1531 : f32;
  var x_1542 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1711 : f32;
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
  u_xlat1 = vec2<f32>(x_62.x, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = x_69.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_65.w, x_65.x, x_65.y, x_65.z) * vec4<f32>(x_73.w, x_73.x, x_73.y, x_73.z));
  let x_83 : vec2<f32> = vs_TEXCOORD0;
  let x_85 : f32 = x_44.x_GlobalMipBias.x;
  let x_86 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_83, x_85);
  u_xlat3 = vec3<f32>(x_86.x, x_86.y, x_86.w);
  let x_90 : f32 = u_xlat3.x;
  let x_93 : f32 = u_xlat3.z;
  u_xlat3.x = (x_90 * x_93);
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat29 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat29;
  let x_107 : vec2<f32> = u_xlat29;
  u_xlat42 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat42;
  u_xlat42 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat42;
  u_xlat42 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_114);
  let x_116 : f32 = u_xlat42;
  u_xlat42 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat29;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat29 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat17.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_162 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb17 = (x_162 == 0.0f);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_168) + x_173);
  let x_176 : vec3<f32> = u_xlat4;
  let x_177 : vec3<f32> = u_xlat4;
  u_xlat31 = dot(x_176, x_177);
  let x_179 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_179);
  let x_181 : f32 = u_xlat31;
  let x_183 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_181, x_181, x_181) * x_183);
  let x_189 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_189;
  let x_192 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_192;
  let x_195 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_195;
  let x_197 : bool = u_xlatb17;
  if (x_197) {
    let x_201 : vec3<f32> = u_xlat4;
    x_198 = x_201;
  } else {
    let x_203 : vec4<f32> = u_xlat5;
    x_198 = vec3<f32>(x_203.x, x_203.y, x_203.z);
  }
  let x_205 : vec3<f32> = x_198;
  u_xlat17 = x_205;
  let x_207 : vec3<f32> = vs_TEXCOORD2;
  let x_210 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (vec3<f32>(x_207.z, x_207.x, x_207.y) * vec3<f32>(x_210.y, x_210.z, x_210.x));
  let x_213 : vec3<f32> = vs_TEXCOORD2;
  let x_215 : vec4<f32> = vs_TEXCOORD3;
  let x_218 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_213.y, x_213.z, x_213.x) * vec3<f32>(x_215.z, x_215.x, x_215.y)) + -(x_218));
  let x_221 : vec3<f32> = u_xlat4;
  let x_222 : vec4<f32> = vs_TEXCOORD3;
  u_xlat4 = (x_221 * vec3<f32>(x_222.w, x_222.w, x_222.w));
  let x_225 : vec2<f32> = u_xlat29;
  let x_227 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_225.y, x_225.y, x_225.y) * x_227);
  let x_229 : vec2<f32> = u_xlat29;
  let x_231 : vec4<f32> = vs_TEXCOORD3;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_229.x, x_229.x, x_229.x) * vec3<f32>(x_231.x, x_231.y, x_231.z)) + x_234);
  let x_236 : f32 = u_xlat42;
  let x_238 : vec3<f32> = vs_TEXCOORD2;
  let x_240 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_236, x_236, x_236) * x_238) + x_240);
  let x_242 : vec3<f32> = u_xlat4;
  let x_243 : vec3<f32> = u_xlat4;
  u_xlat42 = dot(x_242, x_243);
  let x_245 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_245);
  let x_247 : f32 = u_xlat42;
  let x_249 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_247, x_247, x_247) * x_249);
  let x_252 : f32 = vs_TEXCOORD1.y;
  let x_254 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat42 = (x_252 * x_254);
  let x_257 : f32 = x_44.unity_MatrixV[0i].z;
  let x_259 : f32 = vs_TEXCOORD1.x;
  let x_261 : f32 = u_xlat42;
  u_xlat42 = ((x_257 * x_259) + x_261);
  let x_264 : f32 = x_44.unity_MatrixV[2i].z;
  let x_266 : f32 = vs_TEXCOORD1.z;
  let x_268 : f32 = u_xlat42;
  u_xlat42 = ((x_264 * x_266) + x_268);
  let x_270 : f32 = u_xlat42;
  let x_273 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat42 = (x_270 + x_273);
  let x_275 : f32 = u_xlat42;
  let x_279 : f32 = x_44.x_ProjectionParams.y;
  u_xlat42 = (-(x_275) + -(x_279));
  let x_282 : f32 = u_xlat42;
  u_xlat42 = max(x_282, 0.0f);
  let x_284 : f32 = u_xlat42;
  let x_286 : f32 = x_44.unity_FogParams.x;
  u_xlat42 = (x_284 * x_286);
  let x_294 : vec2<f32> = vs_TEXCOORD8;
  let x_296 : f32 = x_44.x_GlobalMipBias.x;
  let x_297 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_294, x_296);
  u_xlat5 = x_297;
  let x_303 : vec2<f32> = vs_TEXCOORD8;
  let x_305 : f32 = x_44.x_GlobalMipBias.x;
  let x_306 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_303, x_305);
  u_xlat6 = vec3<f32>(x_306.x, x_306.y, x_306.z);
  let x_308 : vec4<f32> = u_xlat5;
  let x_312 : vec3<f32> = (vec3<f32>(x_308.x, x_308.y, x_308.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_313 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : vec3<f32> = u_xlat4;
  let x_316 : vec4<f32> = u_xlat5;
  u_xlat29.x = dot(x_315, vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_321 : f32 = u_xlat29.x;
  u_xlat29.x = (x_321 + 0.5f);
  let x_325 : vec2<f32> = u_xlat29;
  let x_327 : vec3<f32> = u_xlat6;
  let x_328 : vec3<f32> = (vec3<f32>(x_325.x, x_325.x, x_325.x) * x_327);
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_332 : f32 = u_xlat5.w;
  u_xlat29.x = max(x_332, 0.0001f);
  let x_336 : vec4<f32> = u_xlat5;
  let x_338 : vec2<f32> = u_xlat29;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) / vec3<f32>(x_338.x, x_338.x, x_338.x));
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_345 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_346 : vec2<f32> = vec2<f32>(x_345.x, x_345.y);
  u_xlat29 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_346.x, x_346.y));
  let x_351 : vec2<f32> = u_xlat29;
  let x_352 : vec4<f32> = hlslcc_FragCoord;
  let x_354 : vec2<f32> = (x_351 * vec2<f32>(x_352.x, x_352.y));
  let x_355 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_354.x, x_354.y, x_355.z);
  let x_358 : f32 = u_xlat6.y;
  let x_361 : f32 = x_44.x_ScaleBiasRt.x;
  let x_364 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29.x = ((x_358 * x_361) + x_364);
  let x_368 : f32 = u_xlat29.x;
  u_xlat6.z = (-(x_368) + 1.0f);
  let x_373 : f32 = u_xlat1.x;
  u_xlat29.x = ((-(x_373) * 0.959999979f) + 0.959999979f);
  let x_381 : f32 = u_xlat1.y;
  let x_383 : f32 = x_69.x_Smoothness;
  let x_386 : f32 = u_xlat29.x;
  u_xlat43 = ((x_381 * x_383) + -(x_386));
  let x_390 : vec2<f32> = u_xlat29;
  let x_392 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.y, x_392.z, x_392.w));
  let x_395 : vec4<f32> = u_xlat0;
  let x_398 : vec4<f32> = x_69.x_BaseColor;
  let x_403 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_398.x, x_398.y, x_398.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_404 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec2<f32> = u_xlat1;
  let x_408 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = ((vec3<f32>(x_406.x, x_406.x, x_406.x) * vec3<f32>(x_408.x, x_408.y, x_408.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_414 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_413.x, x_413.y, x_413.z, x_414.w);
  let x_417 : f32 = u_xlat1.y;
  let x_420 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_417) * x_420) + 1.0f);
  let x_426 : f32 = u_xlat1.x;
  let x_428 : f32 = u_xlat1.x;
  u_xlat15.x = (x_426 * x_428);
  let x_432 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_432, 0.0078125f);
  let x_437 : f32 = u_xlat15.x;
  let x_439 : f32 = u_xlat15.x;
  u_xlat29.x = (x_437 * x_439);
  let x_442 : f32 = u_xlat43;
  u_xlat43 = (x_442 + 1.0f);
  let x_444 : f32 = u_xlat43;
  u_xlat43 = clamp(x_444, 0.0f, 1.0f);
  let x_448 : f32 = u_xlat15.x;
  u_xlat46 = ((x_448 * 4.0f) + 2.0f);
  let x_458 : vec3<f32> = u_xlat6;
  let x_461 : f32 = x_44.x_GlobalMipBias.x;
  let x_462 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_458.x, x_458.z), x_461);
  u_xlat47 = x_462.x;
  let x_464 : f32 = u_xlat47;
  u_xlat6.x = (x_464 + -1.0f);
  let x_469 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_471 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_469 * x_471) + 1.0f);
  let x_476 : f32 = u_xlat3.x;
  let x_477 : f32 = u_xlat47;
  u_xlat3.x = min(x_476, x_477);
  let x_482 : vec4<f32> = vs_TEXCOORD6;
  let x_483 : vec2<f32> = vec2<f32>(x_482.x, x_482.y);
  let x_485 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_483.x, x_483.y, x_485);
  let x_497 : vec3<f32> = txVec0;
  let x_499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_497.xy, x_497.z);
  u_xlat47 = x_499;
  let x_507 : f32 = x_505.x_MainLightShadowParams.x;
  u_xlat20.x = (-(x_507) + 1.0f);
  let x_511 : f32 = u_xlat47;
  let x_513 : f32 = x_505.x_MainLightShadowParams.x;
  let x_516 : f32 = u_xlat20.x;
  u_xlat47 = ((x_511 * x_513) + x_516);
  let x_522 : f32 = vs_TEXCOORD6.z;
  u_xlatb20.x = (0.0f >= x_522);
  let x_527 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (x_527 >= 1.0f);
  let x_529 : bool = u_xlatb34;
  let x_531 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_529 | x_531);
  let x_535 : bool = u_xlatb20.x;
  let x_536 : f32 = u_xlat47;
  u_xlat47 = select(x_536, 1.0f, x_535);
  let x_538 : vec3<f32> = vs_TEXCOORD1;
  let x_540 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (x_538 + -(x_540));
  let x_543 : vec3<f32> = u_xlat20;
  let x_544 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_543, x_544);
  let x_548 : f32 = u_xlat20.x;
  let x_550 : f32 = x_505.x_MainLightShadowParams.z;
  let x_553 : f32 = x_505.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_548 * x_550) + x_553);
  let x_557 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_557, 0.0f, 1.0f);
  let x_561 : f32 = u_xlat47;
  u_xlat34 = (-(x_561) + 1.0f);
  let x_565 : f32 = u_xlat20.x;
  let x_566 : f32 = u_xlat34;
  let x_568 : f32 = u_xlat47;
  u_xlat47 = ((x_565 * x_566) + x_568);
  let x_576 : f32 = x_574.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_576 == -1.0f));
  let x_580 : bool = u_xlatb20.x;
  if (x_580) {
    let x_583 : vec3<f32> = vs_TEXCOORD1;
    let x_586 : vec4<f32> = x_574.x_MainLightWorldToLight[1i];
    let x_588 : vec2<f32> = (vec2<f32>(x_583.y, x_583.y) * vec2<f32>(x_586.x, x_586.y));
    let x_589 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_588.x, x_588.y, x_589.z);
    let x_592 : vec4<f32> = x_574.x_MainLightWorldToLight[0i];
    let x_594 : vec3<f32> = vs_TEXCOORD1;
    let x_597 : vec3<f32> = u_xlat20;
    let x_599 : vec2<f32> = ((vec2<f32>(x_592.x, x_592.y) * vec2<f32>(x_594.x, x_594.x)) + vec2<f32>(x_597.x, x_597.y));
    let x_600 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_599.x, x_599.y, x_600.z);
    let x_603 : vec4<f32> = x_574.x_MainLightWorldToLight[2i];
    let x_605 : vec3<f32> = vs_TEXCOORD1;
    let x_608 : vec3<f32> = u_xlat20;
    let x_610 : vec2<f32> = ((vec2<f32>(x_603.x, x_603.y) * vec2<f32>(x_605.z, x_605.z)) + vec2<f32>(x_608.x, x_608.y));
    let x_611 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_610.x, x_610.y, x_611.z);
    let x_613 : vec3<f32> = u_xlat20;
    let x_616 : vec4<f32> = x_574.x_MainLightWorldToLight[3i];
    let x_618 : vec2<f32> = (vec2<f32>(x_613.x, x_613.y) + vec2<f32>(x_616.x, x_616.y));
    let x_619 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_618.x, x_618.y, x_619.z);
    let x_621 : vec3<f32> = u_xlat20;
    let x_625 : vec2<f32> = ((vec2<f32>(x_621.x, x_621.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_626 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_625.x, x_625.y, x_626.z);
    let x_634 : vec3<f32> = u_xlat20;
    let x_637 : f32 = x_44.x_GlobalMipBias.x;
    let x_638 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_634.x, x_634.y), x_637);
    u_xlat7 = x_638;
    let x_640 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_642 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_644 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_646 : f32 = x_574.x_MainLightCookieTextureFormat;
    let x_647 : vec4<f32> = vec4<f32>(x_640, x_642, x_644, x_646);
    let x_655 : vec4<bool> = (vec4<f32>(x_647.x, x_647.y, x_647.z, x_647.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_655.x, x_655.y);
    let x_658 : bool = u_xlatb20.y;
    if (x_658) {
      let x_663 : f32 = u_xlat7.w;
      x_659 = x_663;
    } else {
      let x_666 : f32 = u_xlat7.x;
      x_659 = x_666;
    }
    let x_667 : f32 = x_659;
    u_xlat34 = x_667;
    let x_669 : bool = u_xlatb20.x;
    if (x_669) {
      let x_673 : vec4<f32> = u_xlat7;
      x_670 = vec3<f32>(x_673.x, x_673.y, x_673.z);
    } else {
      let x_676 : f32 = u_xlat34;
      x_670 = vec3<f32>(x_676, x_676, x_676);
    }
    let x_678 : vec3<f32> = x_670;
    u_xlat20 = x_678;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_683 : vec3<f32> = u_xlat20;
  let x_685 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat20 = (x_683 * vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : vec3<f32> = u_xlat6;
  let x_690 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_688.x, x_688.x, x_688.x) * x_690);
  let x_692 : vec3<f32> = u_xlat17;
  let x_694 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_692), x_694);
  let x_698 : f32 = u_xlat7.x;
  let x_700 : f32 = u_xlat7.x;
  u_xlat7.x = (x_698 + x_700);
  let x_703 : vec3<f32> = u_xlat4;
  let x_704 : vec4<f32> = u_xlat7;
  let x_708 : vec3<f32> = u_xlat17;
  let x_710 : vec3<f32> = ((x_703 * -(vec3<f32>(x_704.x, x_704.x, x_704.x))) + -(x_708));
  let x_711 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_714 : vec3<f32> = u_xlat4;
  let x_715 : vec3<f32> = u_xlat17;
  u_xlat49 = dot(x_714, x_715);
  let x_717 : f32 = u_xlat49;
  u_xlat49 = clamp(x_717, 0.0f, 1.0f);
  let x_719 : f32 = u_xlat49;
  u_xlat49 = (-(x_719) + 1.0f);
  let x_722 : f32 = u_xlat49;
  let x_723 : f32 = u_xlat49;
  u_xlat49 = (x_722 * x_723);
  let x_725 : f32 = u_xlat49;
  let x_726 : f32 = u_xlat49;
  u_xlat49 = (x_725 * x_726);
  let x_730 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_730) * 0.699999988f) + 1.700000048f);
  let x_738 : f32 = u_xlat1.x;
  let x_740 : f32 = u_xlat8.x;
  u_xlat1.x = (x_738 * x_740);
  let x_744 : f32 = u_xlat1.x;
  u_xlat1.x = (x_744 * 6.0f);
  let x_756 : vec4<f32> = u_xlat7;
  let x_759 : f32 = u_xlat1.x;
  let x_760 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_756.x, x_756.y, x_756.z), x_759);
  u_xlat8 = x_760;
  let x_762 : f32 = u_xlat8.w;
  u_xlat1.x = (x_762 + -1.0f);
  let x_770 : f32 = x_768.unity_SpecCube0_HDR.w;
  let x_772 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_770 * x_772) + 1.0f);
  let x_777 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_777, 0.0f);
  let x_781 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_781);
  let x_785 : f32 = u_xlat1.x;
  let x_787 : f32 = x_768.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_785 * x_787);
  let x_791 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_791);
  let x_795 : f32 = u_xlat1.x;
  let x_797 : f32 = x_768.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_795 * x_797);
  let x_800 : vec4<f32> = u_xlat8;
  let x_802 : vec2<f32> = u_xlat1;
  let x_804 : vec3<f32> = (vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_802.x, x_802.x, x_802.x));
  let x_805 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec3<f32> = u_xlat15;
  let x_809 : vec3<f32> = u_xlat15;
  u_xlat1 = ((vec2<f32>(x_807.x, x_807.x) * vec2<f32>(x_809.x, x_809.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_815 : f32 = u_xlat1.y;
  u_xlat15.x = (1.0f / x_815);
  let x_818 : vec4<f32> = u_xlat0;
  let x_821 : f32 = u_xlat43;
  let x_823 : vec3<f32> = (-(vec3<f32>(x_818.x, x_818.y, x_818.z)) + vec3<f32>(x_821, x_821, x_821));
  let x_824 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : f32 = u_xlat49;
  let x_828 : vec4<f32> = u_xlat8;
  let x_831 : vec4<f32> = u_xlat0;
  let x_833 : vec3<f32> = ((vec3<f32>(x_826, x_826, x_826) * vec3<f32>(x_828.x, x_828.y, x_828.z)) + vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec3<f32> = u_xlat15;
  let x_838 : vec4<f32> = u_xlat8;
  let x_840 : vec3<f32> = (vec3<f32>(x_836.x, x_836.x, x_836.x) * vec3<f32>(x_838.x, x_838.y, x_838.z));
  let x_841 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat7;
  let x_845 : vec4<f32> = u_xlat8;
  let x_847 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) * vec3<f32>(x_845.x, x_845.y, x_845.z));
  let x_848 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat5;
  let x_852 : vec3<f32> = u_xlat16;
  let x_854 : vec4<f32> = u_xlat7;
  let x_856 : vec3<f32> = ((vec3<f32>(x_850.x, x_850.y, x_850.z) * x_852) + vec3<f32>(x_854.x, x_854.y, x_854.z));
  let x_857 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : f32 = u_xlat47;
  let x_862 : f32 = x_768.unity_LightData.z;
  u_xlat15.x = (x_859 * x_862);
  let x_865 : vec3<f32> = u_xlat4;
  let x_867 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat43 = dot(x_865, vec3<f32>(x_867.x, x_867.y, x_867.z));
  let x_870 : f32 = u_xlat43;
  u_xlat43 = clamp(x_870, 0.0f, 1.0f);
  let x_872 : f32 = u_xlat43;
  let x_874 : f32 = u_xlat15.x;
  u_xlat15.x = (x_872 * x_874);
  let x_877 : vec3<f32> = u_xlat15;
  let x_879 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_877.x, x_877.x, x_877.x) * x_879);
  let x_881 : vec3<f32> = u_xlat17;
  let x_883 : vec4<f32> = x_44.x_MainLightPosition;
  let x_885 : vec3<f32> = (x_881 + vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_886 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : vec4<f32> = u_xlat7;
  let x_890 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_888.x, x_888.y, x_888.z), vec3<f32>(x_890.x, x_890.y, x_890.z));
  let x_895 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_895, 1.17549435e-37f);
  let x_900 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_900);
  let x_903 : vec3<f32> = u_xlat15;
  let x_905 : vec4<f32> = u_xlat7;
  let x_907 : vec3<f32> = (vec3<f32>(x_903.x, x_903.x, x_903.x) * vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec3<f32> = u_xlat4;
  let x_911 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(x_910, vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_916 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_916, 0.0f, 1.0f);
  let x_920 : vec4<f32> = x_44.x_MainLightPosition;
  let x_922 : vec4<f32> = u_xlat7;
  u_xlat15.z = dot(vec3<f32>(x_920.x, x_920.y, x_920.z), vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_927 : f32 = u_xlat15.z;
  u_xlat15.z = clamp(x_927, 0.0f, 1.0f);
  let x_930 : vec3<f32> = u_xlat15;
  let x_932 : vec3<f32> = u_xlat15;
  let x_934 : vec2<f32> = (vec2<f32>(x_930.x, x_930.z) * vec2<f32>(x_932.x, x_932.z));
  let x_935 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_934.x, x_935.y, x_934.y);
  let x_938 : f32 = u_xlat15.x;
  let x_940 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_938 * x_940) + 1.000010014f);
  let x_946 : f32 = u_xlat15.x;
  let x_948 : f32 = u_xlat15.x;
  u_xlat15.x = (x_946 * x_948);
  let x_952 : f32 = u_xlat15.z;
  u_xlat43 = max(x_952, 0.100000001f);
  let x_955 : f32 = u_xlat43;
  let x_957 : f32 = u_xlat15.x;
  u_xlat15.x = (x_955 * x_957);
  let x_960 : f32 = u_xlat46;
  let x_962 : f32 = u_xlat15.x;
  u_xlat15.x = (x_960 * x_962);
  let x_966 : f32 = u_xlat29.x;
  let x_968 : f32 = u_xlat15.x;
  u_xlat15.x = (x_966 / x_968);
  let x_971 : vec4<f32> = u_xlat0;
  let x_973 : vec3<f32> = u_xlat15;
  let x_976 : vec3<f32> = u_xlat16;
  let x_977 : vec3<f32> = ((vec3<f32>(x_971.x, x_971.y, x_971.z) * vec3<f32>(x_973.x, x_973.x, x_973.x)) + x_976);
  let x_978 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
  let x_980 : vec3<f32> = u_xlat20;
  let x_981 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_980 * vec3<f32>(x_981.x, x_981.y, x_981.z));
  let x_985 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_987 : f32 = x_768.unity_LightData.y;
  u_xlat15.x = min(x_985, x_987);
  let x_993 : f32 = u_xlat15.x;
  u_xlatu15 = bitcast<u32>(i32(x_993));
  let x_998 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1000 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1002 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1004 : f32 = x_574.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1005 : vec4<f32> = vec4<f32>(x_998, x_1000, x_1002, x_1004);
  let x_1011 : vec4<bool> = (vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1005.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1011.x, x_1011.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1022 : u32 = u_xlatu_loop_1;
    let x_1023 : u32 = u_xlatu15;
    if ((x_1022 < x_1023)) {
    } else {
      break;
    }
    let x_1026 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1026 >> 2u);
    let x_1030 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1030 & 3u));
    let x_1033 : u32 = u_xlatu47;
    let x_1036 : vec4<f32> = x_768.unity_LightIndices[bitcast<i32>(x_1033)];
    let x_1046 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1051 : vec4<u32> = indexable[x_1046];
    u_xlat47 = dot(x_1036, bitcast<vec4<f32>>(x_1051));
    let x_1054 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1054));
    let x_1058 : vec3<f32> = vs_TEXCOORD1;
    let x_1070 : u32 = u_xlatu47;
    let x_1073 : vec4<f32> = x_1069.x_AdditionalLightsPosition[bitcast<i32>(x_1070)];
    let x_1076 : u32 = u_xlatu47;
    let x_1079 : vec4<f32> = x_1069.x_AdditionalLightsPosition[bitcast<i32>(x_1076)];
    u_xlat9 = ((-(x_1058) * vec3<f32>(x_1073.w, x_1073.w, x_1073.w)) + vec3<f32>(x_1079.x, x_1079.y, x_1079.z));
    let x_1083 : vec3<f32> = u_xlat9;
    let x_1084 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1083, x_1084);
    let x_1086 : f32 = u_xlat35;
    u_xlat35 = max(x_1086, 6.10351562e-05f);
    let x_1089 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1089);
    let x_1092 : f32 = u_xlat49;
    let x_1094 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1092, x_1092, x_1092) * x_1094);
    let x_1097 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1097);
    let x_1099 : f32 = u_xlat35;
    let x_1100 : u32 = u_xlatu47;
    let x_1103 : f32 = x_1069.x_AdditionalLightsAttenuation[bitcast<i32>(x_1100)].x;
    u_xlat35 = (x_1099 * x_1103);
    let x_1105 : f32 = u_xlat35;
    let x_1107 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1105) * x_1107) + 1.0f);
    let x_1110 : f32 = u_xlat35;
    u_xlat35 = max(x_1110, 0.0f);
    let x_1112 : f32 = u_xlat35;
    let x_1113 : f32 = u_xlat35;
    u_xlat35 = (x_1112 * x_1113);
    let x_1115 : f32 = u_xlat35;
    let x_1116 : f32 = u_xlat50;
    u_xlat35 = (x_1115 * x_1116);
    let x_1118 : u32 = u_xlatu47;
    let x_1121 : vec4<f32> = x_1069.x_AdditionalLightsSpotDir[bitcast<i32>(x_1118)];
    let x_1123 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1121.x, x_1121.y, x_1121.z), x_1123);
    let x_1125 : f32 = u_xlat50;
    let x_1126 : u32 = u_xlatu47;
    let x_1129 : f32 = x_1069.x_AdditionalLightsAttenuation[bitcast<i32>(x_1126)].z;
    let x_1131 : u32 = u_xlatu47;
    let x_1134 : f32 = x_1069.x_AdditionalLightsAttenuation[bitcast<i32>(x_1131)].w;
    u_xlat50 = ((x_1125 * x_1129) + x_1134);
    let x_1136 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1136, 0.0f, 1.0f);
    let x_1138 : f32 = u_xlat50;
    let x_1139 : f32 = u_xlat50;
    u_xlat50 = (x_1138 * x_1139);
    let x_1141 : f32 = u_xlat35;
    let x_1142 : f32 = u_xlat50;
    u_xlat35 = (x_1141 * x_1142);
    let x_1145 : u32 = u_xlatu47;
    u_xlatu50 = (x_1145 >> 5u);
    let x_1148 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1148) & 31i)));
    let x_1154 : i32 = u_xlati51;
    let x_1156 : u32 = u_xlatu50;
    let x_1159 : f32 = x_574.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1156)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1154) & bitcast<u32>(x_1159)));
    let x_1163 : i32 = u_xlati50;
    if ((x_1163 != 0i)) {
      let x_1173 : u32 = u_xlatu47;
      let x_1176 : f32 = x_1172.x_AdditionalLightsLightTypes[bitcast<i32>(x_1173)].el;
      u_xlati50 = i32(x_1176);
      let x_1178 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1178 != 0i));
      let x_1182 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1182) << bitcast<u32>(2i));
      let x_1185 : i32 = u_xlati51;
      if ((x_1185 != 0i)) {
        let x_1190 : vec3<f32> = vs_TEXCOORD1;
        let x_1192 : i32 = u_xlati52;
        let x_1195 : i32 = u_xlati52;
        let x_1199 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[((x_1192 + 1i) / 4i)][((x_1195 + 1i) % 4i)];
        let x_1201 : vec3<f32> = (vec3<f32>(x_1190.y, x_1190.y, x_1190.y) * vec3<f32>(x_1199.x, x_1199.y, x_1199.w));
        let x_1202 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
        let x_1204 : i32 = u_xlati52;
        let x_1206 : i32 = u_xlati52;
        let x_1209 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[(x_1204 / 4i)][(x_1206 % 4i)];
        let x_1211 : vec3<f32> = vs_TEXCOORD1;
        let x_1214 : vec4<f32> = u_xlat11;
        let x_1216 : vec3<f32> = ((vec3<f32>(x_1209.x, x_1209.y, x_1209.w) * vec3<f32>(x_1211.x, x_1211.x, x_1211.x)) + vec3<f32>(x_1214.x, x_1214.y, x_1214.z));
        let x_1217 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1216.x, x_1216.y, x_1216.z, x_1217.w);
        let x_1219 : i32 = u_xlati52;
        let x_1222 : i32 = u_xlati52;
        let x_1226 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[((x_1219 + 2i) / 4i)][((x_1222 + 2i) % 4i)];
        let x_1228 : vec3<f32> = vs_TEXCOORD1;
        let x_1231 : vec4<f32> = u_xlat11;
        let x_1233 : vec3<f32> = ((vec3<f32>(x_1226.x, x_1226.y, x_1226.w) * vec3<f32>(x_1228.z, x_1228.z, x_1228.z)) + vec3<f32>(x_1231.x, x_1231.y, x_1231.z));
        let x_1234 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1233.x, x_1233.y, x_1233.z, x_1234.w);
        let x_1236 : vec4<f32> = u_xlat11;
        let x_1238 : i32 = u_xlati52;
        let x_1241 : i32 = u_xlati52;
        let x_1245 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[((x_1238 + 3i) / 4i)][((x_1241 + 3i) % 4i)];
        let x_1247 : vec3<f32> = (vec3<f32>(x_1236.x, x_1236.y, x_1236.z) + vec3<f32>(x_1245.x, x_1245.y, x_1245.w));
        let x_1248 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
        let x_1250 : vec4<f32> = u_xlat11;
        let x_1252 : vec4<f32> = u_xlat11;
        let x_1254 : vec2<f32> = (vec2<f32>(x_1250.x, x_1250.y) / vec2<f32>(x_1252.z, x_1252.z));
        let x_1255 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1254.x, x_1254.y, x_1255.z, x_1255.w);
        let x_1257 : vec4<f32> = u_xlat11;
        let x_1260 : vec2<f32> = ((vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1261 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1260.x, x_1260.y, x_1261.z, x_1261.w);
        let x_1263 : vec4<f32> = u_xlat11;
        let x_1267 : vec2<f32> = clamp(vec2<f32>(x_1263.x, x_1263.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1268 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1267.x, x_1267.y, x_1268.z, x_1268.w);
        let x_1270 : u32 = u_xlatu47;
        let x_1273 : vec4<f32> = x_1172.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1270)];
        let x_1275 : vec4<f32> = u_xlat11;
        let x_1278 : u32 = u_xlatu47;
        let x_1281 : vec4<f32> = x_1172.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1278)];
        let x_1283 : vec2<f32> = ((vec2<f32>(x_1273.x, x_1273.y) * vec2<f32>(x_1275.x, x_1275.y)) + vec2<f32>(x_1281.z, x_1281.w));
        let x_1284 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1283.x, x_1283.y, x_1284.z, x_1284.w);
      } else {
        let x_1288 : i32 = u_xlati50;
        u_xlatb50 = (x_1288 == 1i);
        let x_1290 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1290);
        let x_1292 : i32 = u_xlati50;
        if ((x_1292 != 0i)) {
          let x_1297 : vec3<f32> = vs_TEXCOORD1;
          let x_1299 : i32 = u_xlati52;
          let x_1302 : i32 = u_xlati52;
          let x_1306 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[((x_1299 + 1i) / 4i)][((x_1302 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1297.y, x_1297.y) * vec2<f32>(x_1306.x, x_1306.y));
          let x_1309 : i32 = u_xlati52;
          let x_1311 : i32 = u_xlati52;
          let x_1314 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[(x_1309 / 4i)][(x_1311 % 4i)];
          let x_1316 : vec3<f32> = vs_TEXCOORD1;
          let x_1319 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1314.x, x_1314.y) * vec2<f32>(x_1316.x, x_1316.x)) + x_1319);
          let x_1321 : i32 = u_xlati52;
          let x_1324 : i32 = u_xlati52;
          let x_1328 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[((x_1321 + 2i) / 4i)][((x_1324 + 2i) % 4i)];
          let x_1330 : vec3<f32> = vs_TEXCOORD1;
          let x_1333 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1328.x, x_1328.y) * vec2<f32>(x_1330.z, x_1330.z)) + x_1333);
          let x_1335 : vec2<f32> = u_xlat39;
          let x_1336 : i32 = u_xlati52;
          let x_1339 : i32 = u_xlati52;
          let x_1343 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[((x_1336 + 3i) / 4i)][((x_1339 + 3i) % 4i)];
          u_xlat39 = (x_1335 + vec2<f32>(x_1343.x, x_1343.y));
          let x_1346 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1346 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1349 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1349);
          let x_1351 : u32 = u_xlatu47;
          let x_1354 : vec4<f32> = x_1172.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1351)];
          let x_1356 : vec2<f32> = u_xlat39;
          let x_1358 : u32 = u_xlatu47;
          let x_1361 : vec4<f32> = x_1172.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1358)];
          let x_1363 : vec2<f32> = ((vec2<f32>(x_1354.x, x_1354.y) * x_1356) + vec2<f32>(x_1361.z, x_1361.w));
          let x_1364 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1363.x, x_1363.y, x_1364.z, x_1364.w);
        } else {
          let x_1368 : vec3<f32> = vs_TEXCOORD1;
          let x_1370 : i32 = u_xlati52;
          let x_1373 : i32 = u_xlati52;
          let x_1377 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[((x_1370 + 1i) / 4i)][((x_1373 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1368.y, x_1368.y, x_1368.y, x_1368.y) * x_1377);
          let x_1379 : i32 = u_xlati52;
          let x_1381 : i32 = u_xlati52;
          let x_1384 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[(x_1379 / 4i)][(x_1381 % 4i)];
          let x_1385 : vec3<f32> = vs_TEXCOORD1;
          let x_1388 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1384 * vec4<f32>(x_1385.x, x_1385.x, x_1385.x, x_1385.x)) + x_1388);
          let x_1390 : i32 = u_xlati52;
          let x_1393 : i32 = u_xlati52;
          let x_1397 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[((x_1390 + 2i) / 4i)][((x_1393 + 2i) % 4i)];
          let x_1398 : vec3<f32> = vs_TEXCOORD1;
          let x_1401 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1397 * vec4<f32>(x_1398.z, x_1398.z, x_1398.z, x_1398.z)) + x_1401);
          let x_1403 : vec4<f32> = u_xlat12;
          let x_1404 : i32 = u_xlati52;
          let x_1407 : i32 = u_xlati52;
          let x_1411 : vec4<f32> = x_1172.x_AdditionalLightsWorldToLights[((x_1404 + 3i) / 4i)][((x_1407 + 3i) % 4i)];
          u_xlat12 = (x_1403 + x_1411);
          let x_1413 : vec4<f32> = u_xlat12;
          let x_1415 : vec4<f32> = u_xlat12;
          let x_1417 : vec3<f32> = (vec3<f32>(x_1413.x, x_1413.y, x_1413.z) / vec3<f32>(x_1415.w, x_1415.w, x_1415.w));
          let x_1418 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
          let x_1420 : vec4<f32> = u_xlat12;
          let x_1422 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1420.x, x_1420.y, x_1420.z), vec3<f32>(x_1422.x, x_1422.y, x_1422.z));
          let x_1425 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1425);
          let x_1427 : f32 = u_xlat50;
          let x_1429 : vec4<f32> = u_xlat12;
          let x_1431 : vec3<f32> = (vec3<f32>(x_1427, x_1427, x_1427) * vec3<f32>(x_1429.x, x_1429.y, x_1429.z));
          let x_1432 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1432.w);
          let x_1434 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1434.x, x_1434.y, x_1434.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1439 : f32 = u_xlat50;
          u_xlat50 = max(x_1439, 0.000001f);
          let x_1442 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1442);
          let x_1445 : f32 = u_xlat50;
          let x_1447 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1445, x_1445, x_1445) * vec3<f32>(x_1447.z, x_1447.x, x_1447.y));
          let x_1451 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1451);
          let x_1455 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1455, 0.0f, 1.0f);
          let x_1459 : vec3<f32> = u_xlat13;
          let x_1462 : vec4<bool> = (vec4<f32>(x_1459.y, x_1459.z, x_1459.y, x_1459.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1462.x, x_1462.y);
          let x_1465 : bool = u_xlatb39.x;
          if (x_1465) {
            let x_1470 : f32 = u_xlat13.x;
            x_1466 = x_1470;
          } else {
            let x_1473 : f32 = u_xlat13.x;
            x_1466 = -(x_1473);
          }
          let x_1475 : f32 = x_1466;
          u_xlat39.x = x_1475;
          let x_1478 : bool = u_xlatb39.y;
          if (x_1478) {
            let x_1483 : f32 = u_xlat13.x;
            x_1479 = x_1483;
          } else {
            let x_1486 : f32 = u_xlat13.x;
            x_1479 = -(x_1486);
          }
          let x_1488 : f32 = x_1479;
          u_xlat39.y = x_1488;
          let x_1490 : vec4<f32> = u_xlat12;
          let x_1492 : f32 = u_xlat50;
          let x_1495 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1490.x, x_1490.y) * vec2<f32>(x_1492, x_1492)) + x_1495);
          let x_1497 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1497 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1500 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1500, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1504 : u32 = u_xlatu47;
          let x_1507 : vec4<f32> = x_1172.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1504)];
          let x_1509 : vec2<f32> = u_xlat39;
          let x_1511 : u32 = u_xlatu47;
          let x_1514 : vec4<f32> = x_1172.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1511)];
          let x_1516 : vec2<f32> = ((vec2<f32>(x_1507.x, x_1507.y) * x_1509) + vec2<f32>(x_1514.z, x_1514.w));
          let x_1517 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1516.x, x_1516.y, x_1517.z, x_1517.w);
        }
      }
      let x_1524 : vec4<f32> = u_xlat11;
      let x_1527 : f32 = x_44.x_GlobalMipBias.x;
      let x_1528 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1524.x, x_1524.y), x_1527);
      u_xlat11 = x_1528;
      let x_1530 : bool = u_xlatb7.y;
      if (x_1530) {
        let x_1535 : f32 = u_xlat11.w;
        x_1531 = x_1535;
      } else {
        let x_1538 : f32 = u_xlat11.x;
        x_1531 = x_1538;
      }
      let x_1539 : f32 = x_1531;
      u_xlat50 = x_1539;
      let x_1541 : bool = u_xlatb7.x;
      if (x_1541) {
        let x_1545 : vec4<f32> = u_xlat11;
        x_1542 = vec3<f32>(x_1545.x, x_1545.y, x_1545.z);
      } else {
        let x_1548 : f32 = u_xlat50;
        x_1542 = vec3<f32>(x_1548, x_1548, x_1548);
      }
      let x_1550 : vec3<f32> = x_1542;
      let x_1551 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1550.x, x_1550.y, x_1550.z, x_1551.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1557 : vec4<f32> = u_xlat11;
    let x_1559 : u32 = u_xlatu47;
    let x_1562 : vec4<f32> = x_1069.x_AdditionalLightsColor[bitcast<i32>(x_1559)];
    let x_1564 : vec3<f32> = (vec3<f32>(x_1557.x, x_1557.y, x_1557.z) * vec3<f32>(x_1562.x, x_1562.y, x_1562.z));
    let x_1565 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1564.x, x_1564.y, x_1564.z, x_1565.w);
    let x_1567 : vec3<f32> = u_xlat6;
    let x_1569 : vec4<f32> = u_xlat11;
    let x_1571 : vec3<f32> = (vec3<f32>(x_1567.x, x_1567.x, x_1567.x) * vec3<f32>(x_1569.x, x_1569.y, x_1569.z));
    let x_1572 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1571.x, x_1571.y, x_1571.z, x_1572.w);
    let x_1574 : vec3<f32> = u_xlat4;
    let x_1575 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(x_1574, x_1575);
    let x_1577 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1577, 0.0f, 1.0f);
    let x_1579 : f32 = u_xlat47;
    let x_1580 : f32 = u_xlat35;
    u_xlat47 = (x_1579 * x_1580);
    let x_1582 : f32 = u_xlat47;
    let x_1584 : vec4<f32> = u_xlat11;
    let x_1586 : vec3<f32> = (vec3<f32>(x_1582, x_1582, x_1582) * vec3<f32>(x_1584.x, x_1584.y, x_1584.z));
    let x_1587 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1586.x, x_1586.y, x_1586.z, x_1587.w);
    let x_1589 : vec3<f32> = u_xlat9;
    let x_1590 : f32 = u_xlat49;
    let x_1593 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1589 * vec3<f32>(x_1590, x_1590, x_1590)) + x_1593);
    let x_1595 : vec3<f32> = u_xlat9;
    let x_1596 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1595, x_1596);
    let x_1598 : f32 = u_xlat47;
    u_xlat47 = max(x_1598, 1.17549435e-37f);
    let x_1600 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1600);
    let x_1602 : f32 = u_xlat47;
    let x_1604 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1602, x_1602, x_1602) * x_1604);
    let x_1606 : vec3<f32> = u_xlat4;
    let x_1607 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1606, x_1607);
    let x_1609 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1609, 0.0f, 1.0f);
    let x_1611 : vec3<f32> = u_xlat10;
    let x_1612 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1611, x_1612);
    let x_1614 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1614, 0.0f, 1.0f);
    let x_1616 : f32 = u_xlat47;
    let x_1617 : f32 = u_xlat47;
    u_xlat47 = (x_1616 * x_1617);
    let x_1619 : f32 = u_xlat47;
    let x_1621 : f32 = u_xlat1.x;
    u_xlat47 = ((x_1619 * x_1621) + 1.000010014f);
    let x_1624 : f32 = u_xlat35;
    let x_1625 : f32 = u_xlat35;
    u_xlat35 = (x_1624 * x_1625);
    let x_1627 : f32 = u_xlat47;
    let x_1628 : f32 = u_xlat47;
    u_xlat47 = (x_1627 * x_1628);
    let x_1630 : f32 = u_xlat35;
    u_xlat35 = max(x_1630, 0.100000001f);
    let x_1632 : f32 = u_xlat47;
    let x_1633 : f32 = u_xlat35;
    u_xlat47 = (x_1632 * x_1633);
    let x_1635 : f32 = u_xlat46;
    let x_1636 : f32 = u_xlat47;
    u_xlat47 = (x_1635 * x_1636);
    let x_1639 : f32 = u_xlat29.x;
    let x_1640 : f32 = u_xlat47;
    u_xlat47 = (x_1639 / x_1640);
    let x_1642 : vec4<f32> = u_xlat0;
    let x_1644 : f32 = u_xlat47;
    let x_1647 : vec3<f32> = u_xlat16;
    u_xlat9 = ((vec3<f32>(x_1642.x, x_1642.y, x_1642.z) * vec3<f32>(x_1644, x_1644, x_1644)) + x_1647);
    let x_1649 : vec3<f32> = u_xlat9;
    let x_1650 : vec4<f32> = u_xlat11;
    let x_1653 : vec4<f32> = u_xlat8;
    let x_1655 : vec3<f32> = ((x_1649 * vec3<f32>(x_1650.x, x_1650.y, x_1650.z)) + vec3<f32>(x_1653.x, x_1653.y, x_1653.z));
    let x_1656 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1655.x, x_1655.y, x_1655.z, x_1656.w);

    continuing {
      let x_1658 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1658 + bitcast<u32>(1i));
    }
  }
  let x_1660 : vec4<f32> = u_xlat5;
  let x_1662 : vec3<f32> = u_xlat3;
  let x_1665 : vec3<f32> = u_xlat20;
  let x_1666 : vec3<f32> = ((vec3<f32>(x_1660.x, x_1660.y, x_1660.z) * vec3<f32>(x_1662.x, x_1662.x, x_1662.x)) + x_1665);
  let x_1667 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1666.x, x_1666.y, x_1666.z, x_1667.w);
  let x_1669 : vec4<f32> = u_xlat8;
  let x_1671 : vec4<f32> = u_xlat0;
  let x_1673 : vec3<f32> = (vec3<f32>(x_1669.x, x_1669.y, x_1669.z) + vec3<f32>(x_1671.x, x_1671.y, x_1671.z));
  let x_1674 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1673.x, x_1673.y, x_1673.z, x_1674.w);
  let x_1676 : f32 = u_xlat42;
  let x_1677 : f32 = u_xlat42;
  u_xlat42 = (x_1676 * -(x_1677));
  let x_1680 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1680);
  let x_1682 : vec4<f32> = u_xlat0;
  let x_1686 : vec4<f32> = x_44.unity_FogColor;
  let x_1689 : vec3<f32> = (vec3<f32>(x_1682.x, x_1682.y, x_1682.z) + -(vec3<f32>(x_1686.x, x_1686.y, x_1686.z)));
  let x_1690 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
  let x_1694 : f32 = u_xlat42;
  let x_1696 : vec4<f32> = u_xlat0;
  let x_1700 : vec4<f32> = x_44.unity_FogColor;
  let x_1702 : vec3<f32> = ((vec3<f32>(x_1694, x_1694, x_1694) * vec3<f32>(x_1696.x, x_1696.y, x_1696.z)) + vec3<f32>(x_1700.x, x_1700.y, x_1700.z));
  let x_1703 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1702.x, x_1702.y, x_1702.z, x_1703.w);
  let x_1708 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1708 == 1.0f);
  let x_1710 : bool = u_xlatb0;
  if (x_1710) {
    let x_1715 : f32 = u_xlat2.x;
    x_1711 = x_1715;
  } else {
    x_1711 = 1.0f;
  }
  let x_1717 : f32 = x_1711;
  SV_Target0.w = x_1717;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD8_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

