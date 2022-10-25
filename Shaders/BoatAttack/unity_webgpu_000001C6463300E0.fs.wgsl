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

@group(1) @binding(4) var<uniform> x_482 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_549 : LightCookies;

@group(0) @binding(9) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(19) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(11) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_740 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1014 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1128 : AdditionalLightsCookies;

@group(0) @binding(10) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(20) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat39 : f32;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat29 : f32;
  var u_xlat5 : vec3<f32>;
  var x_195 : f32;
  var x_208 : f32;
  var x_219 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat40 : f32;
  var u_xlat43 : f32;
  var u_xlat44 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb19 : bool;
  var u_xlat19 : f32;
  var u_xlatb7 : vec2<bool>;
  var u_xlat45 : f32;
  var x_636 : f32;
  var x_647 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlat8 : vec2<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatu39 : u32;
  var u_xlatb1 : vec3<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu45 : u32;
  var u_xlati46 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat9 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlatu10 : u32;
  var u_xlati23 : i32;
  var u_xlati10 : i32;
  var u_xlati36 : i32;
  var u_xlat11 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlatb37 : vec2<bool>;
  var u_xlat37 : vec2<f32>;
  var x_1448 : f32;
  var x_1461 : f32;
  var u_xlat49 : f32;
  var x_1523 : f32;
  var x_1534 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1676 : f32;
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
  u_xlat27 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat27;
  let x_107 : vec2<f32> = u_xlat27;
  u_xlat39 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat39;
  u_xlat39 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat39;
  u_xlat39 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat39;
  u_xlat39 = sqrt(x_114);
  let x_116 : f32 = u_xlat39;
  u_xlat39 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat27;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat27 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat16.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat16.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_163 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb16 = (x_163 == 0.0f);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_174 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_175 : vec3<f32> = (-(x_169) + x_174);
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = u_xlat4;
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_184);
  let x_186 : f32 = u_xlat29;
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = (vec3<f32>(x_186, x_186, x_186) * vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : bool = u_xlatb16;
  if (x_194) {
    let x_199 : f32 = u_xlat4.x;
    x_195 = x_199;
  } else {
    let x_204 : f32 = x_44.unity_MatrixV[0i].z;
    x_195 = x_204;
  }
  let x_205 : f32 = x_195;
  u_xlat5.x = x_205;
  let x_207 : bool = u_xlatb16;
  if (x_207) {
    let x_212 : f32 = u_xlat4.y;
    x_208 = x_212;
  } else {
    let x_215 : f32 = x_44.unity_MatrixV[1i].z;
    x_208 = x_215;
  }
  let x_216 : f32 = x_208;
  u_xlat5.y = x_216;
  let x_218 : bool = u_xlatb16;
  if (x_218) {
    let x_223 : f32 = u_xlat4.z;
    x_219 = x_223;
  } else {
    let x_226 : f32 = x_44.unity_MatrixV[2i].z;
    x_219 = x_226;
  }
  let x_227 : f32 = x_219;
  u_xlat5.z = x_227;
  let x_230 : vec3<f32> = vs_TEXCOORD2;
  let x_233 : vec4<f32> = vs_TEXCOORD3;
  u_xlat16 = (vec3<f32>(x_230.z, x_230.x, x_230.y) * vec3<f32>(x_233.y, x_233.z, x_233.x));
  let x_236 : vec3<f32> = vs_TEXCOORD2;
  let x_238 : vec4<f32> = vs_TEXCOORD3;
  let x_241 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_236.y, x_236.z, x_236.x) * vec3<f32>(x_238.z, x_238.x, x_238.y)) + -(x_241));
  let x_244 : vec3<f32> = u_xlat16;
  let x_245 : vec4<f32> = vs_TEXCOORD3;
  u_xlat16 = (x_244 * vec3<f32>(x_245.w, x_245.w, x_245.w));
  let x_248 : vec2<f32> = u_xlat27;
  let x_250 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_248.y, x_248.y, x_248.y) * x_250);
  let x_252 : vec2<f32> = u_xlat27;
  let x_254 : vec4<f32> = vs_TEXCOORD3;
  let x_257 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_252.x, x_252.x, x_252.x) * vec3<f32>(x_254.x, x_254.y, x_254.z)) + x_257);
  let x_259 : f32 = u_xlat39;
  let x_261 : vec3<f32> = vs_TEXCOORD2;
  let x_263 : vec3<f32> = u_xlat16;
  u_xlat16 = ((vec3<f32>(x_259, x_259, x_259) * x_261) + x_263);
  let x_265 : vec3<f32> = u_xlat16;
  let x_266 : vec3<f32> = u_xlat16;
  u_xlat39 = dot(x_265, x_266);
  let x_268 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_268);
  let x_270 : f32 = u_xlat39;
  let x_272 : vec3<f32> = u_xlat16;
  u_xlat16 = (vec3<f32>(x_270, x_270, x_270) * x_272);
  let x_280 : vec2<f32> = vs_TEXCOORD8;
  let x_282 : f32 = x_44.x_GlobalMipBias.x;
  let x_283 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_280, x_282);
  u_xlat4 = x_283;
  let x_289 : vec2<f32> = vs_TEXCOORD8;
  let x_291 : f32 = x_44.x_GlobalMipBias.x;
  let x_292 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_289, x_291);
  let x_293 : vec3<f32> = vec3<f32>(x_292.x, x_292.y, x_292.z);
  let x_294 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_296 : vec4<f32> = u_xlat4;
  let x_300 : vec3<f32> = (vec3<f32>(x_296.x, x_296.y, x_296.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_303 : vec3<f32> = u_xlat16;
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat39 = dot(x_303, vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : f32 = u_xlat39;
  u_xlat39 = (x_307 + 0.5f);
  let x_310 : f32 = u_xlat39;
  let x_312 : vec4<f32> = u_xlat6;
  let x_314 : vec3<f32> = (vec3<f32>(x_310, x_310, x_310) * vec3<f32>(x_312.x, x_312.y, x_312.z));
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_318 : f32 = u_xlat4.w;
  u_xlat39 = max(x_318, 0.0001f);
  let x_321 : vec4<f32> = u_xlat4;
  let x_323 : f32 = u_xlat39;
  let x_325 : vec3<f32> = (vec3<f32>(x_321.x, x_321.y, x_321.z) / vec3<f32>(x_323, x_323, x_323));
  let x_326 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
  let x_330 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_331 : vec2<f32> = vec2<f32>(x_330.x, x_330.y);
  u_xlat27 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_331.x, x_331.y));
  let x_336 : vec2<f32> = u_xlat27;
  let x_337 : vec4<f32> = hlslcc_FragCoord;
  let x_339 : vec2<f32> = (x_336 * vec2<f32>(x_337.x, x_337.y));
  let x_340 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_339.x, x_339.y, x_340.z, x_340.w);
  let x_343 : f32 = u_xlat6.y;
  let x_345 : f32 = x_44.x_ScaleBiasRt.x;
  let x_348 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat39 = ((x_343 * x_345) + x_348);
  let x_350 : f32 = u_xlat39;
  u_xlat6.z = (-(x_350) + 1.0f);
  let x_355 : f32 = u_xlat1.x;
  u_xlat39 = ((-(x_355) * 0.959999979f) + 0.959999979f);
  let x_361 : f32 = u_xlat1.y;
  let x_363 : f32 = x_69.x_Smoothness;
  let x_365 : f32 = u_xlat39;
  u_xlat27.x = ((x_361 * x_363) + -(x_365));
  let x_370 : f32 = u_xlat39;
  let x_372 : vec4<f32> = u_xlat2;
  u_xlat15 = (vec3<f32>(x_370, x_370, x_370) * vec3<f32>(x_372.y, x_372.z, x_372.w));
  let x_375 : vec4<f32> = u_xlat0;
  let x_378 : vec4<f32> = x_69.x_BaseColor;
  let x_383 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_378.x, x_378.y, x_378.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec2<f32> = u_xlat1;
  let x_388 : vec4<f32> = u_xlat0;
  let x_393 : vec3<f32> = ((vec3<f32>(x_386.x, x_386.x, x_386.x) * vec3<f32>(x_388.x, x_388.y, x_388.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_394 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_397 : f32 = u_xlat1.y;
  let x_400 : f32 = x_69.x_Smoothness;
  u_xlat39 = ((-(x_397) * x_400) + 1.0f);
  let x_403 : f32 = u_xlat39;
  let x_404 : f32 = u_xlat39;
  u_xlat1.x = (x_403 * x_404);
  let x_408 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_408, 0.0078125f);
  let x_414 : f32 = u_xlat1.x;
  let x_416 : f32 = u_xlat1.x;
  u_xlat14 = (x_414 * x_416);
  let x_419 : f32 = u_xlat27.x;
  u_xlat27.x = (x_419 + 1.0f);
  let x_423 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_423, 0.0f, 1.0f);
  let x_428 : f32 = u_xlat1.x;
  u_xlat40 = ((x_428 * 4.0f) + 2.0f);
  let x_438 : vec4<f32> = u_xlat6;
  let x_441 : f32 = x_44.x_GlobalMipBias.x;
  let x_442 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_438.x, x_438.z), x_441);
  u_xlat43 = x_442.x;
  let x_445 : f32 = u_xlat43;
  u_xlat44 = (x_445 + -1.0f);
  let x_449 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_450 : f32 = u_xlat44;
  u_xlat44 = ((x_449 * x_450) + 1.0f);
  let x_454 : f32 = u_xlat3.x;
  let x_455 : f32 = u_xlat43;
  u_xlat3.x = min(x_454, x_455);
  let x_460 : vec4<f32> = vs_TEXCOORD6;
  let x_461 : vec2<f32> = vec2<f32>(x_460.x, x_460.y);
  let x_463 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_461.x, x_461.y, x_463);
  let x_475 : vec3<f32> = txVec0;
  let x_477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_475.xy, x_475.z);
  u_xlat43 = x_477;
  let x_484 : f32 = x_482.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_484) + 1.0f);
  let x_488 : f32 = u_xlat43;
  let x_490 : f32 = x_482.x_MainLightShadowParams.x;
  let x_493 : f32 = u_xlat6.x;
  u_xlat43 = ((x_488 * x_490) + x_493);
  let x_497 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_497);
  let x_501 : f32 = vs_TEXCOORD6.z;
  u_xlatb19 = (x_501 >= 1.0f);
  let x_503 : bool = u_xlatb19;
  let x_504 : bool = u_xlatb6;
  u_xlatb6 = (x_503 | x_504);
  let x_506 : bool = u_xlatb6;
  let x_507 : f32 = u_xlat43;
  u_xlat43 = select(x_507, 1.0f, x_506);
  let x_509 : vec3<f32> = vs_TEXCOORD1;
  let x_511 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_513 : vec3<f32> = (x_509 + -(x_511));
  let x_514 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_513.x, x_513.y, x_513.z, x_514.w);
  let x_516 : vec4<f32> = u_xlat6;
  let x_518 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_516.x, x_516.y, x_516.z), vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_523 : f32 = u_xlat6.x;
  let x_525 : f32 = x_482.x_MainLightShadowParams.z;
  let x_528 : f32 = x_482.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_523 * x_525) + x_528);
  let x_532 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_532, 0.0f, 1.0f);
  let x_536 : f32 = u_xlat43;
  u_xlat19 = (-(x_536) + 1.0f);
  let x_540 : f32 = u_xlat6.x;
  let x_541 : f32 = u_xlat19;
  let x_543 : f32 = u_xlat43;
  u_xlat43 = ((x_540 * x_541) + x_543);
  let x_551 : f32 = x_549.x_MainLightCookieTextureFormat;
  u_xlatb6 = !((x_551 == -1.0f));
  let x_553 : bool = u_xlatb6;
  if (x_553) {
    let x_556 : vec3<f32> = vs_TEXCOORD1;
    let x_559 : vec4<f32> = x_549.x_MainLightWorldToLight[1i];
    let x_561 : vec2<f32> = (vec2<f32>(x_556.y, x_556.y) * vec2<f32>(x_559.x, x_559.y));
    let x_562 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
    let x_565 : vec4<f32> = x_549.x_MainLightWorldToLight[0i];
    let x_567 : vec3<f32> = vs_TEXCOORD1;
    let x_570 : vec4<f32> = u_xlat6;
    let x_572 : vec2<f32> = ((vec2<f32>(x_565.x, x_565.y) * vec2<f32>(x_567.x, x_567.x)) + vec2<f32>(x_570.x, x_570.y));
    let x_573 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_572.x, x_572.y, x_573.z, x_573.w);
    let x_576 : vec4<f32> = x_549.x_MainLightWorldToLight[2i];
    let x_578 : vec3<f32> = vs_TEXCOORD1;
    let x_581 : vec4<f32> = u_xlat6;
    let x_583 : vec2<f32> = ((vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_578.z, x_578.z)) + vec2<f32>(x_581.x, x_581.y));
    let x_584 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
    let x_586 : vec4<f32> = u_xlat6;
    let x_590 : vec4<f32> = x_549.x_MainLightWorldToLight[3i];
    let x_592 : vec2<f32> = (vec2<f32>(x_586.x, x_586.y) + vec2<f32>(x_590.x, x_590.y));
    let x_593 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
    let x_595 : vec4<f32> = u_xlat6;
    let x_599 : vec2<f32> = ((vec2<f32>(x_595.x, x_595.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_600 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
    let x_607 : vec4<f32> = u_xlat6;
    let x_610 : f32 = x_44.x_GlobalMipBias.x;
    let x_611 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_607.x, x_607.y), x_610);
    u_xlat6 = x_611;
    let x_616 : f32 = x_549.x_MainLightCookieTextureFormat;
    let x_618 : f32 = x_549.x_MainLightCookieTextureFormat;
    let x_620 : f32 = x_549.x_MainLightCookieTextureFormat;
    let x_622 : f32 = x_549.x_MainLightCookieTextureFormat;
    let x_623 : vec4<f32> = vec4<f32>(x_616, x_618, x_620, x_622);
    let x_631 : vec4<bool> = (vec4<f32>(x_623.x, x_623.y, x_623.z, x_623.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_631.x, x_631.y);
    let x_635 : bool = u_xlatb7.y;
    if (x_635) {
      let x_640 : f32 = u_xlat6.w;
      x_636 = x_640;
    } else {
      let x_643 : f32 = u_xlat6.x;
      x_636 = x_643;
    }
    let x_644 : f32 = x_636;
    u_xlat45 = x_644;
    let x_646 : bool = u_xlatb7.x;
    if (x_646) {
      let x_650 : vec4<f32> = u_xlat6;
      x_647 = vec3<f32>(x_650.x, x_650.y, x_650.z);
    } else {
      let x_653 : f32 = u_xlat45;
      x_647 = vec3<f32>(x_653, x_653, x_653);
    }
    let x_655 : vec3<f32> = x_647;
    let x_656 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_662 : vec4<f32> = u_xlat6;
  let x_665 : vec4<f32> = x_44.x_MainLightColor;
  let x_667 : vec3<f32> = (vec3<f32>(x_662.x, x_662.y, x_662.z) * vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : f32 = u_xlat44;
  let x_672 : vec4<f32> = u_xlat6;
  let x_674 : vec3<f32> = (vec3<f32>(x_670, x_670, x_670) * vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_677 : vec3<f32> = u_xlat5;
  let x_679 : vec3<f32> = u_xlat16;
  u_xlat45 = dot(-(x_677), x_679);
  let x_681 : f32 = u_xlat45;
  let x_682 : f32 = u_xlat45;
  u_xlat45 = (x_681 + x_682);
  let x_685 : vec3<f32> = u_xlat16;
  let x_686 : f32 = u_xlat45;
  let x_690 : vec3<f32> = u_xlat5;
  let x_692 : vec3<f32> = ((x_685 * -(vec3<f32>(x_686, x_686, x_686))) + -(x_690));
  let x_693 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_695 : vec3<f32> = u_xlat16;
  let x_696 : vec3<f32> = u_xlat5;
  u_xlat45 = dot(x_695, x_696);
  let x_698 : f32 = u_xlat45;
  u_xlat45 = clamp(x_698, 0.0f, 1.0f);
  let x_700 : f32 = u_xlat45;
  u_xlat45 = (-(x_700) + 1.0f);
  let x_703 : f32 = u_xlat45;
  let x_704 : f32 = u_xlat45;
  u_xlat45 = (x_703 * x_704);
  let x_706 : f32 = u_xlat45;
  let x_707 : f32 = u_xlat45;
  u_xlat45 = (x_706 * x_707);
  let x_710 : f32 = u_xlat39;
  u_xlat46 = ((-(x_710) * 0.699999988f) + 1.700000048f);
  let x_716 : f32 = u_xlat39;
  let x_717 : f32 = u_xlat46;
  u_xlat39 = (x_716 * x_717);
  let x_719 : f32 = u_xlat39;
  u_xlat39 = (x_719 * 6.0f);
  let x_730 : vec4<f32> = u_xlat7;
  let x_732 : f32 = u_xlat39;
  let x_733 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_730.x, x_730.y, x_730.z), x_732);
  u_xlat7 = x_733;
  let x_735 : f32 = u_xlat7.w;
  u_xlat39 = (x_735 + -1.0f);
  let x_742 : f32 = x_740.unity_SpecCube0_HDR.w;
  let x_743 : f32 = u_xlat39;
  u_xlat39 = ((x_742 * x_743) + 1.0f);
  let x_746 : f32 = u_xlat39;
  u_xlat39 = max(x_746, 0.0f);
  let x_748 : f32 = u_xlat39;
  u_xlat39 = log2(x_748);
  let x_750 : f32 = u_xlat39;
  let x_752 : f32 = x_740.unity_SpecCube0_HDR.y;
  u_xlat39 = (x_750 * x_752);
  let x_754 : f32 = u_xlat39;
  u_xlat39 = exp2(x_754);
  let x_756 : f32 = u_xlat39;
  let x_758 : f32 = x_740.unity_SpecCube0_HDR.x;
  u_xlat39 = (x_756 * x_758);
  let x_760 : vec4<f32> = u_xlat7;
  let x_762 : f32 = u_xlat39;
  let x_764 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_762, x_762, x_762));
  let x_765 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_768 : vec2<f32> = u_xlat1;
  let x_770 : vec2<f32> = u_xlat1;
  u_xlat8 = ((vec2<f32>(x_768.x, x_768.x) * vec2<f32>(x_770.x, x_770.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_776 : f32 = u_xlat8.y;
  u_xlat39 = (1.0f / x_776);
  let x_779 : vec4<f32> = u_xlat0;
  let x_782 : vec2<f32> = u_xlat27;
  u_xlat21 = (-(vec3<f32>(x_779.x, x_779.y, x_779.z)) + vec3<f32>(x_782.x, x_782.x, x_782.x));
  let x_785 : f32 = u_xlat45;
  let x_787 : vec3<f32> = u_xlat21;
  let x_789 : vec4<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_785, x_785, x_785) * x_787) + vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : f32 = u_xlat39;
  let x_794 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_792, x_792, x_792) * x_794);
  let x_796 : vec4<f32> = u_xlat7;
  let x_798 : vec3<f32> = u_xlat21;
  let x_799 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) * x_798);
  let x_800 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_799.x, x_799.y, x_799.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat4;
  let x_804 : vec3<f32> = u_xlat15;
  let x_806 : vec4<f32> = u_xlat7;
  let x_808 : vec3<f32> = ((vec3<f32>(x_802.x, x_802.y, x_802.z) * x_804) + vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_811 : f32 = u_xlat43;
  let x_814 : f32 = x_740.unity_LightData.z;
  u_xlat39 = (x_811 * x_814);
  let x_816 : vec3<f32> = u_xlat16;
  let x_818 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_816, vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_823 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_823, 0.0f, 1.0f);
  let x_826 : f32 = u_xlat39;
  let x_828 : f32 = u_xlat1.x;
  u_xlat39 = (x_826 * x_828);
  let x_830 : f32 = u_xlat39;
  let x_832 : vec4<f32> = u_xlat6;
  let x_834 : vec3<f32> = (vec3<f32>(x_830, x_830, x_830) * vec3<f32>(x_832.x, x_832.y, x_832.z));
  let x_835 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec3<f32> = u_xlat5;
  let x_839 : vec4<f32> = x_44.x_MainLightPosition;
  let x_841 : vec3<f32> = (x_837 + vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat7;
  let x_846 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(vec3<f32>(x_844.x, x_844.y, x_844.z), vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : f32 = u_xlat39;
  u_xlat39 = max(x_849, 1.17549435e-37f);
  let x_852 : f32 = u_xlat39;
  u_xlat39 = inverseSqrt(x_852);
  let x_854 : f32 = u_xlat39;
  let x_856 : vec4<f32> = u_xlat7;
  let x_858 : vec3<f32> = (vec3<f32>(x_854, x_854, x_854) * vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec3<f32> = u_xlat16;
  let x_862 : vec4<f32> = u_xlat7;
  u_xlat39 = dot(x_861, vec3<f32>(x_862.x, x_862.y, x_862.z));
  let x_865 : f32 = u_xlat39;
  u_xlat39 = clamp(x_865, 0.0f, 1.0f);
  let x_868 : vec4<f32> = x_44.x_MainLightPosition;
  let x_870 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_868.x, x_868.y, x_868.z), vec3<f32>(x_870.x, x_870.y, x_870.z));
  let x_875 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_875, 0.0f, 1.0f);
  let x_878 : f32 = u_xlat39;
  let x_879 : f32 = u_xlat39;
  u_xlat39 = (x_878 * x_879);
  let x_881 : f32 = u_xlat39;
  let x_883 : f32 = u_xlat8.x;
  u_xlat39 = ((x_881 * x_883) + 1.000010014f);
  let x_888 : f32 = u_xlat1.x;
  let x_890 : f32 = u_xlat1.x;
  u_xlat1.x = (x_888 * x_890);
  let x_893 : f32 = u_xlat39;
  let x_894 : f32 = u_xlat39;
  u_xlat39 = (x_893 * x_894);
  let x_897 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_897, 0.100000001f);
  let x_901 : f32 = u_xlat39;
  let x_903 : f32 = u_xlat1.x;
  u_xlat39 = (x_901 * x_903);
  let x_905 : f32 = u_xlat40;
  let x_906 : f32 = u_xlat39;
  u_xlat39 = (x_905 * x_906);
  let x_908 : f32 = u_xlat14;
  let x_909 : f32 = u_xlat39;
  u_xlat39 = (x_908 / x_909);
  let x_911 : vec4<f32> = u_xlat0;
  let x_913 : f32 = u_xlat39;
  let x_916 : vec3<f32> = u_xlat15;
  let x_917 : vec3<f32> = ((vec3<f32>(x_911.x, x_911.y, x_911.z) * vec3<f32>(x_913, x_913, x_913)) + x_916);
  let x_918 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat6;
  let x_922 : vec4<f32> = u_xlat7;
  let x_924 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(x_922.x, x_922.y, x_922.z));
  let x_925 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_928 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_930 : f32 = x_740.unity_LightData.y;
  u_xlat39 = min(x_928, x_930);
  let x_934 : f32 = u_xlat39;
  u_xlatu39 = bitcast<u32>(i32(x_934));
  let x_941 : f32 = x_549.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_943 : f32 = x_549.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_945 : f32 = x_549.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_947 : f32 = x_549.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_948 : vec4<f32> = vec4<f32>(x_941, x_943, x_945, x_947);
  let x_955 : vec4<bool> = (vec4<f32>(x_948.x, x_948.y, x_948.z, x_948.w) == vec4<f32>(0.0f, 0.0f, 1.0f, 0.0f));
  let x_956 : vec2<bool> = vec2<bool>(x_955.x, x_955.z);
  let x_957 : vec3<bool> = u_xlatb1;
  u_xlatb1 = vec3<bool>(x_956.x, x_957.y, x_956.y);
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_968 : u32 = u_xlatu_loop_1;
    let x_969 : u32 = u_xlatu39;
    if ((x_968 < x_969)) {
    } else {
      break;
    }
    let x_972 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_972 >> 2u);
    let x_976 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_976 & 3u));
    let x_979 : u32 = u_xlatu45;
    let x_982 : vec4<f32> = x_740.unity_LightIndices[bitcast<i32>(x_979)];
    let x_992 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_997 : vec4<u32> = indexable[x_992];
    u_xlat45 = dot(x_982, bitcast<vec4<f32>>(x_997));
    let x_1000 : f32 = u_xlat45;
    u_xlatu45 = bitcast<u32>(i32(x_1000));
    let x_1003 : vec3<f32> = vs_TEXCOORD1;
    let x_1015 : u32 = u_xlatu45;
    let x_1018 : vec4<f32> = x_1014.x_AdditionalLightsPosition[bitcast<i32>(x_1015)];
    let x_1021 : u32 = u_xlatu45;
    let x_1024 : vec4<f32> = x_1014.x_AdditionalLightsPosition[bitcast<i32>(x_1021)];
    u_xlat21 = ((-(x_1003) * vec3<f32>(x_1018.w, x_1018.w, x_1018.w)) + vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
    let x_1027 : vec3<f32> = u_xlat21;
    let x_1028 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1027, x_1028);
    let x_1030 : f32 = u_xlat46;
    u_xlat46 = max(x_1030, 6.10351562e-05f);
    let x_1034 : f32 = u_xlat46;
    u_xlat9 = inverseSqrt(x_1034);
    let x_1037 : vec3<f32> = u_xlat21;
    let x_1038 : f32 = u_xlat9;
    u_xlat22 = (x_1037 * vec3<f32>(x_1038, x_1038, x_1038));
    let x_1042 : f32 = u_xlat46;
    u_xlat10.x = (1.0f / x_1042);
    let x_1045 : f32 = u_xlat46;
    let x_1046 : u32 = u_xlatu45;
    let x_1049 : f32 = x_1014.x_AdditionalLightsAttenuation[bitcast<i32>(x_1046)].x;
    u_xlat46 = (x_1045 * x_1049);
    let x_1051 : f32 = u_xlat46;
    let x_1053 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1051) * x_1053) + 1.0f);
    let x_1056 : f32 = u_xlat46;
    u_xlat46 = max(x_1056, 0.0f);
    let x_1058 : f32 = u_xlat46;
    let x_1059 : f32 = u_xlat46;
    u_xlat46 = (x_1058 * x_1059);
    let x_1061 : f32 = u_xlat46;
    let x_1063 : f32 = u_xlat10.x;
    u_xlat46 = (x_1061 * x_1063);
    let x_1065 : u32 = u_xlatu45;
    let x_1068 : vec4<f32> = x_1014.x_AdditionalLightsSpotDir[bitcast<i32>(x_1065)];
    let x_1070 : vec3<f32> = u_xlat22;
    u_xlat10.x = dot(vec3<f32>(x_1068.x, x_1068.y, x_1068.z), x_1070);
    let x_1074 : f32 = u_xlat10.x;
    let x_1075 : u32 = u_xlatu45;
    let x_1078 : f32 = x_1014.x_AdditionalLightsAttenuation[bitcast<i32>(x_1075)].z;
    let x_1080 : u32 = u_xlatu45;
    let x_1083 : f32 = x_1014.x_AdditionalLightsAttenuation[bitcast<i32>(x_1080)].w;
    u_xlat10.x = ((x_1074 * x_1078) + x_1083);
    let x_1087 : f32 = u_xlat10.x;
    u_xlat10.x = clamp(x_1087, 0.0f, 1.0f);
    let x_1091 : f32 = u_xlat10.x;
    let x_1093 : f32 = u_xlat10.x;
    u_xlat10.x = (x_1091 * x_1093);
    let x_1096 : f32 = u_xlat46;
    let x_1098 : f32 = u_xlat10.x;
    u_xlat46 = (x_1096 * x_1098);
    let x_1101 : u32 = u_xlatu45;
    u_xlatu10 = (x_1101 >> 5u);
    let x_1104 : u32 = u_xlatu45;
    u_xlati23 = (1i << bitcast<u32>((bitcast<i32>(x_1104) & 31i)));
    let x_1110 : i32 = u_xlati23;
    let x_1112 : u32 = u_xlatu10;
    let x_1115 : f32 = x_549.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1112)].el;
    u_xlati10 = bitcast<i32>((bitcast<u32>(x_1110) & bitcast<u32>(x_1115)));
    let x_1119 : i32 = u_xlati10;
    if ((x_1119 != 0i)) {
      let x_1129 : u32 = u_xlatu45;
      let x_1132 : f32 = x_1128.x_AdditionalLightsLightTypes[bitcast<i32>(x_1129)].el;
      u_xlati10 = i32(x_1132);
      let x_1134 : i32 = u_xlati10;
      u_xlati23 = select(1i, 0i, (x_1134 != 0i));
      let x_1138 : u32 = u_xlatu45;
      u_xlati36 = (bitcast<i32>(x_1138) << bitcast<u32>(2i));
      let x_1141 : i32 = u_xlati23;
      if ((x_1141 != 0i)) {
        let x_1146 : vec3<f32> = vs_TEXCOORD1;
        let x_1148 : i32 = u_xlati36;
        let x_1151 : i32 = u_xlati36;
        let x_1155 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[((x_1148 + 1i) / 4i)][((x_1151 + 1i) % 4i)];
        let x_1157 : vec3<f32> = (vec3<f32>(x_1146.y, x_1146.y, x_1146.y) * vec3<f32>(x_1155.x, x_1155.y, x_1155.w));
        let x_1158 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1158.w);
        let x_1160 : i32 = u_xlati36;
        let x_1162 : i32 = u_xlati36;
        let x_1165 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[(x_1160 / 4i)][(x_1162 % 4i)];
        let x_1167 : vec3<f32> = vs_TEXCOORD1;
        let x_1170 : vec4<f32> = u_xlat11;
        let x_1172 : vec3<f32> = ((vec3<f32>(x_1165.x, x_1165.y, x_1165.w) * vec3<f32>(x_1167.x, x_1167.x, x_1167.x)) + vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
        let x_1173 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
        let x_1175 : i32 = u_xlati36;
        let x_1178 : i32 = u_xlati36;
        let x_1182 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[((x_1175 + 2i) / 4i)][((x_1178 + 2i) % 4i)];
        let x_1184 : vec3<f32> = vs_TEXCOORD1;
        let x_1187 : vec4<f32> = u_xlat11;
        let x_1189 : vec3<f32> = ((vec3<f32>(x_1182.x, x_1182.y, x_1182.w) * vec3<f32>(x_1184.z, x_1184.z, x_1184.z)) + vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
        let x_1190 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
        let x_1192 : vec4<f32> = u_xlat11;
        let x_1194 : i32 = u_xlati36;
        let x_1197 : i32 = u_xlati36;
        let x_1201 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[((x_1194 + 3i) / 4i)][((x_1197 + 3i) % 4i)];
        let x_1203 : vec3<f32> = (vec3<f32>(x_1192.x, x_1192.y, x_1192.z) + vec3<f32>(x_1201.x, x_1201.y, x_1201.w));
        let x_1204 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
        let x_1207 : vec4<f32> = u_xlat11;
        let x_1209 : vec4<f32> = u_xlat11;
        let x_1211 : vec2<f32> = (vec2<f32>(x_1207.x, x_1207.y) / vec2<f32>(x_1209.z, x_1209.z));
        let x_1212 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1211.x, x_1212.y, x_1211.y);
        let x_1214 : vec3<f32> = u_xlat23;
        let x_1217 : vec2<f32> = ((vec2<f32>(x_1214.x, x_1214.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1218 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1217.x, x_1218.y, x_1217.y);
        let x_1220 : vec3<f32> = u_xlat23;
        let x_1224 : vec2<f32> = clamp(vec2<f32>(x_1220.x, x_1220.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1225 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1224.x, x_1225.y, x_1224.y);
        let x_1227 : u32 = u_xlatu45;
        let x_1230 : vec4<f32> = x_1128.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1227)];
        let x_1232 : vec3<f32> = u_xlat23;
        let x_1235 : u32 = u_xlatu45;
        let x_1238 : vec4<f32> = x_1128.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1235)];
        let x_1240 : vec2<f32> = ((vec2<f32>(x_1230.x, x_1230.y) * vec2<f32>(x_1232.x, x_1232.z)) + vec2<f32>(x_1238.z, x_1238.w));
        let x_1241 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1240.x, x_1241.y, x_1240.y);
      } else {
        let x_1245 : i32 = u_xlati10;
        u_xlatb10 = (x_1245 == 1i);
        let x_1247 : bool = u_xlatb10;
        u_xlati10 = select(0i, 1i, x_1247);
        let x_1249 : i32 = u_xlati10;
        if ((x_1249 != 0i)) {
          let x_1253 : vec3<f32> = vs_TEXCOORD1;
          let x_1255 : i32 = u_xlati36;
          let x_1258 : i32 = u_xlati36;
          let x_1262 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[((x_1255 + 1i) / 4i)][((x_1258 + 1i) % 4i)];
          let x_1264 : vec2<f32> = (vec2<f32>(x_1253.y, x_1253.y) * vec2<f32>(x_1262.x, x_1262.y));
          let x_1265 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1264.x, x_1264.y, x_1265.z, x_1265.w);
          let x_1267 : i32 = u_xlati36;
          let x_1269 : i32 = u_xlati36;
          let x_1272 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[(x_1267 / 4i)][(x_1269 % 4i)];
          let x_1274 : vec3<f32> = vs_TEXCOORD1;
          let x_1277 : vec4<f32> = u_xlat11;
          let x_1279 : vec2<f32> = ((vec2<f32>(x_1272.x, x_1272.y) * vec2<f32>(x_1274.x, x_1274.x)) + vec2<f32>(x_1277.x, x_1277.y));
          let x_1280 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1279.x, x_1279.y, x_1280.z, x_1280.w);
          let x_1282 : i32 = u_xlati36;
          let x_1285 : i32 = u_xlati36;
          let x_1289 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[((x_1282 + 2i) / 4i)][((x_1285 + 2i) % 4i)];
          let x_1291 : vec3<f32> = vs_TEXCOORD1;
          let x_1294 : vec4<f32> = u_xlat11;
          let x_1296 : vec2<f32> = ((vec2<f32>(x_1289.x, x_1289.y) * vec2<f32>(x_1291.z, x_1291.z)) + vec2<f32>(x_1294.x, x_1294.y));
          let x_1297 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1296.x, x_1296.y, x_1297.z, x_1297.w);
          let x_1299 : vec4<f32> = u_xlat11;
          let x_1301 : i32 = u_xlati36;
          let x_1304 : i32 = u_xlati36;
          let x_1308 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[((x_1301 + 3i) / 4i)][((x_1304 + 3i) % 4i)];
          let x_1310 : vec2<f32> = (vec2<f32>(x_1299.x, x_1299.y) + vec2<f32>(x_1308.x, x_1308.y));
          let x_1311 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1311.w);
          let x_1313 : vec4<f32> = u_xlat11;
          let x_1316 : vec2<f32> = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1317 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1316.x, x_1316.y, x_1317.z, x_1317.w);
          let x_1319 : vec4<f32> = u_xlat11;
          let x_1321 : vec2<f32> = fract(vec2<f32>(x_1319.x, x_1319.y));
          let x_1322 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1321.x, x_1321.y, x_1322.z, x_1322.w);
          let x_1324 : u32 = u_xlatu45;
          let x_1327 : vec4<f32> = x_1128.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1324)];
          let x_1329 : vec4<f32> = u_xlat11;
          let x_1332 : u32 = u_xlatu45;
          let x_1335 : vec4<f32> = x_1128.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1332)];
          let x_1337 : vec2<f32> = ((vec2<f32>(x_1327.x, x_1327.y) * vec2<f32>(x_1329.x, x_1329.y)) + vec2<f32>(x_1335.z, x_1335.w));
          let x_1338 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1337.x, x_1338.y, x_1337.y);
        } else {
          let x_1341 : vec3<f32> = vs_TEXCOORD1;
          let x_1343 : i32 = u_xlati36;
          let x_1346 : i32 = u_xlati36;
          let x_1350 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[((x_1343 + 1i) / 4i)][((x_1346 + 1i) % 4i)];
          u_xlat11 = (vec4<f32>(x_1341.y, x_1341.y, x_1341.y, x_1341.y) * x_1350);
          let x_1352 : i32 = u_xlati36;
          let x_1354 : i32 = u_xlati36;
          let x_1357 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[(x_1352 / 4i)][(x_1354 % 4i)];
          let x_1358 : vec3<f32> = vs_TEXCOORD1;
          let x_1361 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1357 * vec4<f32>(x_1358.x, x_1358.x, x_1358.x, x_1358.x)) + x_1361);
          let x_1363 : i32 = u_xlati36;
          let x_1366 : i32 = u_xlati36;
          let x_1370 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[((x_1363 + 2i) / 4i)][((x_1366 + 2i) % 4i)];
          let x_1371 : vec3<f32> = vs_TEXCOORD1;
          let x_1374 : vec4<f32> = u_xlat11;
          u_xlat11 = ((x_1370 * vec4<f32>(x_1371.z, x_1371.z, x_1371.z, x_1371.z)) + x_1374);
          let x_1376 : vec4<f32> = u_xlat11;
          let x_1377 : i32 = u_xlati36;
          let x_1380 : i32 = u_xlati36;
          let x_1384 : vec4<f32> = x_1128.x_AdditionalLightsWorldToLights[((x_1377 + 3i) / 4i)][((x_1380 + 3i) % 4i)];
          u_xlat11 = (x_1376 + x_1384);
          let x_1386 : vec4<f32> = u_xlat11;
          let x_1388 : vec4<f32> = u_xlat11;
          let x_1390 : vec3<f32> = (vec3<f32>(x_1386.x, x_1386.y, x_1386.z) / vec3<f32>(x_1388.w, x_1388.w, x_1388.w));
          let x_1391 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
          let x_1393 : vec4<f32> = u_xlat11;
          let x_1395 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(vec3<f32>(x_1393.x, x_1393.y, x_1393.z), vec3<f32>(x_1395.x, x_1395.y, x_1395.z));
          let x_1400 : f32 = u_xlat10.x;
          u_xlat10.x = inverseSqrt(x_1400);
          let x_1403 : vec4<f32> = u_xlat10;
          let x_1405 : vec4<f32> = u_xlat11;
          let x_1407 : vec3<f32> = (vec3<f32>(x_1403.x, x_1403.x, x_1403.x) * vec3<f32>(x_1405.x, x_1405.y, x_1405.z));
          let x_1408 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1407.x, x_1407.y, x_1407.z, x_1408.w);
          let x_1410 : vec4<f32> = u_xlat11;
          u_xlat10.x = dot(abs(vec3<f32>(x_1410.x, x_1410.y, x_1410.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1417 : f32 = u_xlat10.x;
          u_xlat10.x = max(x_1417, 0.000001f);
          let x_1422 : f32 = u_xlat10.x;
          u_xlat10.x = (1.0f / x_1422);
          let x_1426 : vec4<f32> = u_xlat10;
          let x_1428 : vec4<f32> = u_xlat11;
          u_xlat12 = (vec3<f32>(x_1426.x, x_1426.x, x_1426.x) * vec3<f32>(x_1428.z, x_1428.x, x_1428.y));
          let x_1432 : f32 = u_xlat12.x;
          u_xlat12.x = -(x_1432);
          let x_1436 : f32 = u_xlat12.x;
          u_xlat12.x = clamp(x_1436, 0.0f, 1.0f);
          let x_1440 : vec3<f32> = u_xlat12;
          let x_1443 : vec4<bool> = (vec4<f32>(x_1440.y, x_1440.z, x_1440.y, x_1440.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb37 = vec2<bool>(x_1443.x, x_1443.y);
          let x_1447 : bool = u_xlatb37.x;
          if (x_1447) {
            let x_1452 : f32 = u_xlat12.x;
            x_1448 = x_1452;
          } else {
            let x_1455 : f32 = u_xlat12.x;
            x_1448 = -(x_1455);
          }
          let x_1457 : f32 = x_1448;
          u_xlat37.x = x_1457;
          let x_1460 : bool = u_xlatb37.y;
          if (x_1460) {
            let x_1465 : f32 = u_xlat12.x;
            x_1461 = x_1465;
          } else {
            let x_1468 : f32 = u_xlat12.x;
            x_1461 = -(x_1468);
          }
          let x_1470 : f32 = x_1461;
          u_xlat37.y = x_1470;
          let x_1472 : vec4<f32> = u_xlat11;
          let x_1474 : vec4<f32> = u_xlat10;
          let x_1477 : vec2<f32> = u_xlat37;
          let x_1478 : vec2<f32> = ((vec2<f32>(x_1472.x, x_1472.y) * vec2<f32>(x_1474.x, x_1474.x)) + x_1477);
          let x_1479 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1478.x, x_1479.y, x_1478.y, x_1479.w);
          let x_1481 : vec4<f32> = u_xlat10;
          let x_1484 : vec2<f32> = ((vec2<f32>(x_1481.x, x_1481.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1485 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1484.x, x_1485.y, x_1484.y, x_1485.w);
          let x_1487 : vec4<f32> = u_xlat10;
          let x_1491 : vec2<f32> = clamp(vec2<f32>(x_1487.x, x_1487.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1492 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_1491.x, x_1492.y, x_1491.y, x_1492.w);
          let x_1494 : u32 = u_xlatu45;
          let x_1497 : vec4<f32> = x_1128.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1494)];
          let x_1499 : vec4<f32> = u_xlat10;
          let x_1502 : u32 = u_xlatu45;
          let x_1505 : vec4<f32> = x_1128.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1502)];
          let x_1507 : vec2<f32> = ((vec2<f32>(x_1497.x, x_1497.y) * vec2<f32>(x_1499.x, x_1499.z)) + vec2<f32>(x_1505.z, x_1505.w));
          let x_1508 : vec3<f32> = u_xlat23;
          u_xlat23 = vec3<f32>(x_1507.x, x_1508.y, x_1507.y);
        }
      }
      let x_1515 : vec3<f32> = u_xlat23;
      let x_1518 : f32 = x_44.x_GlobalMipBias.x;
      let x_1519 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1515.x, x_1515.z), x_1518);
      u_xlat10 = x_1519;
      let x_1522 : bool = u_xlatb1.z;
      if (x_1522) {
        let x_1527 : f32 = u_xlat10.w;
        x_1523 = x_1527;
      } else {
        let x_1530 : f32 = u_xlat10.x;
        x_1523 = x_1530;
      }
      let x_1531 : f32 = x_1523;
      u_xlat49 = x_1531;
      let x_1533 : bool = u_xlatb1.x;
      if (x_1533) {
        let x_1537 : vec4<f32> = u_xlat10;
        x_1534 = vec3<f32>(x_1537.x, x_1537.y, x_1537.z);
      } else {
        let x_1540 : f32 = u_xlat49;
        x_1534 = vec3<f32>(x_1540, x_1540, x_1540);
      }
      let x_1542 : vec3<f32> = x_1534;
      let x_1543 : vec4<f32> = u_xlat10;
      u_xlat10 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
    } else {
      u_xlat10.x = 1.0f;
      u_xlat10.y = 1.0f;
      u_xlat10.z = 1.0f;
    }
    let x_1549 : vec4<f32> = u_xlat10;
    let x_1551 : u32 = u_xlatu45;
    let x_1554 : vec4<f32> = x_1014.x_AdditionalLightsColor[bitcast<i32>(x_1551)];
    let x_1556 : vec3<f32> = (vec3<f32>(x_1549.x, x_1549.y, x_1549.z) * vec3<f32>(x_1554.x, x_1554.y, x_1554.z));
    let x_1557 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1557.w);
    let x_1559 : f32 = u_xlat44;
    let x_1561 : vec4<f32> = u_xlat10;
    let x_1563 : vec3<f32> = (vec3<f32>(x_1559, x_1559, x_1559) * vec3<f32>(x_1561.x, x_1561.y, x_1561.z));
    let x_1564 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1563.x, x_1563.y, x_1563.z, x_1564.w);
    let x_1566 : vec3<f32> = u_xlat16;
    let x_1567 : vec3<f32> = u_xlat22;
    u_xlat45 = dot(x_1566, x_1567);
    let x_1569 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1569, 0.0f, 1.0f);
    let x_1571 : f32 = u_xlat45;
    let x_1572 : f32 = u_xlat46;
    u_xlat45 = (x_1571 * x_1572);
    let x_1574 : f32 = u_xlat45;
    let x_1576 : vec4<f32> = u_xlat10;
    let x_1578 : vec3<f32> = (vec3<f32>(x_1574, x_1574, x_1574) * vec3<f32>(x_1576.x, x_1576.y, x_1576.z));
    let x_1579 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1578.x, x_1578.y, x_1578.z, x_1579.w);
    let x_1581 : vec3<f32> = u_xlat21;
    let x_1582 : f32 = u_xlat9;
    let x_1585 : vec3<f32> = u_xlat5;
    u_xlat21 = ((x_1581 * vec3<f32>(x_1582, x_1582, x_1582)) + x_1585);
    let x_1587 : vec3<f32> = u_xlat21;
    let x_1588 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1587, x_1588);
    let x_1590 : f32 = u_xlat45;
    u_xlat45 = max(x_1590, 1.17549435e-37f);
    let x_1592 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1592);
    let x_1594 : f32 = u_xlat45;
    let x_1596 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1594, x_1594, x_1594) * x_1596);
    let x_1598 : vec3<f32> = u_xlat16;
    let x_1599 : vec3<f32> = u_xlat21;
    u_xlat45 = dot(x_1598, x_1599);
    let x_1601 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1601, 0.0f, 1.0f);
    let x_1603 : vec3<f32> = u_xlat22;
    let x_1604 : vec3<f32> = u_xlat21;
    u_xlat46 = dot(x_1603, x_1604);
    let x_1606 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1606, 0.0f, 1.0f);
    let x_1608 : f32 = u_xlat45;
    let x_1609 : f32 = u_xlat45;
    u_xlat45 = (x_1608 * x_1609);
    let x_1611 : f32 = u_xlat45;
    let x_1613 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1611 * x_1613) + 1.000010014f);
    let x_1616 : f32 = u_xlat46;
    let x_1617 : f32 = u_xlat46;
    u_xlat46 = (x_1616 * x_1617);
    let x_1619 : f32 = u_xlat45;
    let x_1620 : f32 = u_xlat45;
    u_xlat45 = (x_1619 * x_1620);
    let x_1622 : f32 = u_xlat46;
    u_xlat46 = max(x_1622, 0.100000001f);
    let x_1624 : f32 = u_xlat45;
    let x_1625 : f32 = u_xlat46;
    u_xlat45 = (x_1624 * x_1625);
    let x_1627 : f32 = u_xlat40;
    let x_1628 : f32 = u_xlat45;
    u_xlat45 = (x_1627 * x_1628);
    let x_1630 : f32 = u_xlat14;
    let x_1631 : f32 = u_xlat45;
    u_xlat45 = (x_1630 / x_1631);
    let x_1633 : vec4<f32> = u_xlat0;
    let x_1635 : f32 = u_xlat45;
    let x_1638 : vec3<f32> = u_xlat15;
    u_xlat21 = ((vec3<f32>(x_1633.x, x_1633.y, x_1633.z) * vec3<f32>(x_1635, x_1635, x_1635)) + x_1638);
    let x_1640 : vec3<f32> = u_xlat21;
    let x_1641 : vec4<f32> = u_xlat10;
    let x_1644 : vec4<f32> = u_xlat7;
    let x_1646 : vec3<f32> = ((x_1640 * vec3<f32>(x_1641.x, x_1641.y, x_1641.z)) + vec3<f32>(x_1644.x, x_1644.y, x_1644.z));
    let x_1647 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1646.x, x_1646.y, x_1646.z, x_1647.w);

    continuing {
      let x_1649 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1649 + bitcast<u32>(1i));
    }
  }
  let x_1651 : vec4<f32> = u_xlat4;
  let x_1653 : vec3<f32> = u_xlat3;
  let x_1656 : vec4<f32> = u_xlat6;
  let x_1658 : vec3<f32> = ((vec3<f32>(x_1651.x, x_1651.y, x_1651.z) * vec3<f32>(x_1653.x, x_1653.x, x_1653.x)) + vec3<f32>(x_1656.x, x_1656.y, x_1656.z));
  let x_1659 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1658.x, x_1658.y, x_1658.z, x_1659.w);
  let x_1663 : vec4<f32> = u_xlat7;
  let x_1665 : vec4<f32> = u_xlat0;
  let x_1667 : vec3<f32> = (vec3<f32>(x_1663.x, x_1663.y, x_1663.z) + vec3<f32>(x_1665.x, x_1665.y, x_1665.z));
  let x_1668 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1667.x, x_1667.y, x_1667.z, x_1668.w);
  let x_1673 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1673 == 1.0f);
  let x_1675 : bool = u_xlatb0;
  if (x_1675) {
    let x_1680 : f32 = u_xlat2.x;
    x_1676 = x_1680;
  } else {
    x_1676 = 1.0f;
  }
  let x_1682 : f32 = x_1676;
  SV_Target0.w = x_1682;
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

