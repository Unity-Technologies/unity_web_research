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

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_321 : UnityPerDraw;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_562 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_631 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_1124 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_1227 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(17) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat4 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat5 : vec3<f32>;
  var x_205 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
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
  var x_716 : f32;
  var x_727 : vec3<f32>;
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
  var x_1521 : f32;
  var x_1534 : f32;
  var x_1586 : f32;
  var x_1597 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1767 : f32;
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
  let x_174 : vec3<f32> = (-(x_168) + x_173);
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec4<f32> = u_xlat4;
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat31 = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_183);
  let x_185 : f32 = u_xlat31;
  let x_187 : vec4<f32> = u_xlat4;
  let x_189 : vec3<f32> = (vec3<f32>(x_185, x_185, x_185) * vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_196 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_196;
  let x_199 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_199;
  let x_202 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_202;
  let x_204 : bool = u_xlatb17;
  if (x_204) {
    let x_208 : vec4<f32> = u_xlat4;
    x_205 = vec3<f32>(x_208.x, x_208.y, x_208.z);
  } else {
    let x_211 : vec3<f32> = u_xlat5;
    x_205 = x_211;
  }
  let x_212 : vec3<f32> = x_205;
  u_xlat17 = x_212;
  let x_214 : vec3<f32> = vs_TEXCOORD2;
  let x_217 : vec4<f32> = vs_TEXCOORD3;
  let x_219 : vec3<f32> = (vec3<f32>(x_214.z, x_214.x, x_214.y) * vec3<f32>(x_217.y, x_217.z, x_217.x));
  let x_220 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_224 : vec4<f32> = vs_TEXCOORD3;
  let x_227 : vec4<f32> = u_xlat4;
  let x_230 : vec3<f32> = ((vec3<f32>(x_222.y, x_222.z, x_222.x) * vec3<f32>(x_224.z, x_224.x, x_224.y)) + -(vec3<f32>(x_227.x, x_227.y, x_227.z)));
  let x_231 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec4<f32> = u_xlat4;
  let x_235 : vec4<f32> = vs_TEXCOORD3;
  let x_237 : vec3<f32> = (vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.w, x_235.w, x_235.w));
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
  let x_240 : vec2<f32> = u_xlat29;
  let x_242 : vec4<f32> = u_xlat4;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec2<f32> = u_xlat29;
  let x_249 : vec4<f32> = vs_TEXCOORD3;
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.x, x_247.x) * vec3<f32>(x_249.x, x_249.y, x_249.z)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : f32 = u_xlat42;
  let x_259 : vec3<f32> = vs_TEXCOORD2;
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257, x_257, x_257) * x_259) + vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat4;
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat42 = dot(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_271);
  let x_273 : f32 = u_xlat42;
  let x_275 : vec4<f32> = u_xlat4;
  let x_277 : vec3<f32> = (vec3<f32>(x_273, x_273, x_273) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : f32 = vs_TEXCOORD1.y;
  let x_283 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat42 = (x_281 * x_283);
  let x_286 : f32 = x_44.unity_MatrixV[0i].z;
  let x_288 : f32 = vs_TEXCOORD1.x;
  let x_290 : f32 = u_xlat42;
  u_xlat42 = ((x_286 * x_288) + x_290);
  let x_293 : f32 = x_44.unity_MatrixV[2i].z;
  let x_295 : f32 = vs_TEXCOORD1.z;
  let x_297 : f32 = u_xlat42;
  u_xlat42 = ((x_293 * x_295) + x_297);
  let x_299 : f32 = u_xlat42;
  let x_302 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat42 = (x_299 + x_302);
  let x_304 : f32 = u_xlat42;
  let x_308 : f32 = x_44.x_ProjectionParams.y;
  u_xlat42 = (-(x_304) + -(x_308));
  let x_311 : f32 = u_xlat42;
  u_xlat42 = max(x_311, 0.0f);
  let x_313 : f32 = u_xlat42;
  let x_315 : f32 = x_44.unity_FogParams.x;
  u_xlat42 = (x_313 * x_315);
  u_xlat4.w = 1.0f;
  let x_324 : vec4<f32> = x_321.unity_SHAr;
  let x_325 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_324, x_325);
  let x_330 : vec4<f32> = x_321.unity_SHAg;
  let x_331 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_330, x_331);
  let x_336 : vec4<f32> = x_321.unity_SHAb;
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_336, x_337);
  let x_341 : vec4<f32> = u_xlat4;
  let x_343 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_341.y, x_341.z, x_341.z, x_341.x) * vec4<f32>(x_343.x, x_343.y, x_343.z, x_343.z));
  let x_349 : vec4<f32> = x_321.unity_SHBr;
  let x_350 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_349, x_350);
  let x_355 : vec4<f32> = x_321.unity_SHBg;
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_355, x_356);
  let x_361 : vec4<f32> = x_321.unity_SHBb;
  let x_362 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_361, x_362);
  let x_366 : f32 = u_xlat4.y;
  let x_368 : f32 = u_xlat4.y;
  u_xlat29.x = (x_366 * x_368);
  let x_372 : f32 = u_xlat4.x;
  let x_374 : f32 = u_xlat4.x;
  let x_377 : f32 = u_xlat29.x;
  u_xlat29.x = ((x_372 * x_374) + -(x_377));
  let x_383 : vec4<f32> = x_321.unity_SHC;
  let x_385 : vec2<f32> = u_xlat29;
  let x_388 : vec4<f32> = u_xlat7;
  let x_390 : vec3<f32> = ((vec3<f32>(x_383.x, x_383.y, x_383.z) * vec3<f32>(x_385.x, x_385.x, x_385.x)) + vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec3<f32> = u_xlat5;
  let x_394 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_393 + vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_397, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_402 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_403 : vec2<f32> = vec2<f32>(x_402.x, x_402.y);
  u_xlat29 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_403.x, x_403.y));
  let x_408 : vec2<f32> = u_xlat29;
  let x_409 : vec4<f32> = hlslcc_FragCoord;
  let x_411 : vec2<f32> = (x_408 * vec2<f32>(x_409.x, x_409.y));
  let x_412 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
  let x_415 : f32 = u_xlat6.y;
  let x_418 : f32 = x_44.x_ScaleBiasRt.x;
  let x_421 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat29.x = ((x_415 * x_418) + x_421);
  let x_425 : f32 = u_xlat29.x;
  u_xlat6.z = (-(x_425) + 1.0f);
  let x_430 : f32 = u_xlat1.x;
  u_xlat29.x = ((-(x_430) * 0.959999979f) + 0.959999979f);
  let x_438 : f32 = u_xlat1.y;
  let x_440 : f32 = x_69.x_Smoothness;
  let x_443 : f32 = u_xlat29.x;
  u_xlat43 = ((x_438 * x_440) + -(x_443));
  let x_447 : vec2<f32> = u_xlat29;
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat16 = (vec3<f32>(x_447.x, x_447.x, x_447.x) * vec3<f32>(x_449.y, x_449.z, x_449.w));
  let x_452 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = x_69.x_BaseColor;
  let x_460 : vec3<f32> = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_455.x, x_455.y, x_455.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_461 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_463 : vec2<f32> = u_xlat1;
  let x_465 : vec4<f32> = u_xlat0;
  let x_470 : vec3<f32> = ((vec3<f32>(x_463.x, x_463.x, x_463.x) * vec3<f32>(x_465.x, x_465.y, x_465.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_471 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_470.x, x_470.y, x_470.z, x_471.w);
  let x_474 : f32 = u_xlat1.y;
  let x_477 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_474) * x_477) + 1.0f);
  let x_483 : f32 = u_xlat1.x;
  let x_485 : f32 = u_xlat1.x;
  u_xlat15.x = (x_483 * x_485);
  let x_489 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_489, 0.0078125f);
  let x_494 : f32 = u_xlat15.x;
  let x_496 : f32 = u_xlat15.x;
  u_xlat29.x = (x_494 * x_496);
  let x_499 : f32 = u_xlat43;
  u_xlat43 = (x_499 + 1.0f);
  let x_501 : f32 = u_xlat43;
  u_xlat43 = clamp(x_501, 0.0f, 1.0f);
  let x_505 : f32 = u_xlat15.x;
  u_xlat46 = ((x_505 * 4.0f) + 2.0f);
  let x_515 : vec4<f32> = u_xlat6;
  let x_518 : f32 = x_44.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_515.x, x_515.z), x_518);
  u_xlat47 = x_519.x;
  let x_521 : f32 = u_xlat47;
  u_xlat6.x = (x_521 + -1.0f);
  let x_526 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_528 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_526 * x_528) + 1.0f);
  let x_533 : f32 = u_xlat3.x;
  let x_534 : f32 = u_xlat47;
  u_xlat3.x = min(x_533, x_534);
  let x_539 : vec4<f32> = vs_TEXCOORD6;
  let x_540 : vec2<f32> = vec2<f32>(x_539.x, x_539.y);
  let x_542 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_540.x, x_540.y, x_542);
  let x_554 : vec3<f32> = txVec0;
  let x_556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_554.xy, x_554.z);
  u_xlat47 = x_556;
  let x_564 : f32 = x_562.x_MainLightShadowParams.x;
  u_xlat20.x = (-(x_564) + 1.0f);
  let x_568 : f32 = u_xlat47;
  let x_570 : f32 = x_562.x_MainLightShadowParams.x;
  let x_573 : f32 = u_xlat20.x;
  u_xlat47 = ((x_568 * x_570) + x_573);
  let x_579 : f32 = vs_TEXCOORD6.z;
  u_xlatb20.x = (0.0f >= x_579);
  let x_584 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (x_584 >= 1.0f);
  let x_586 : bool = u_xlatb34;
  let x_588 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_586 | x_588);
  let x_592 : bool = u_xlatb20.x;
  let x_593 : f32 = u_xlat47;
  u_xlat47 = select(x_593, 1.0f, x_592);
  let x_595 : vec3<f32> = vs_TEXCOORD1;
  let x_597 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (x_595 + -(x_597));
  let x_600 : vec3<f32> = u_xlat20;
  let x_601 : vec3<f32> = u_xlat20;
  u_xlat20.x = dot(x_600, x_601);
  let x_605 : f32 = u_xlat20.x;
  let x_607 : f32 = x_562.x_MainLightShadowParams.z;
  let x_610 : f32 = x_562.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_605 * x_607) + x_610);
  let x_614 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_614, 0.0f, 1.0f);
  let x_618 : f32 = u_xlat47;
  u_xlat34 = (-(x_618) + 1.0f);
  let x_622 : f32 = u_xlat20.x;
  let x_623 : f32 = u_xlat34;
  let x_625 : f32 = u_xlat47;
  u_xlat47 = ((x_622 * x_623) + x_625);
  let x_633 : f32 = x_631.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_633 == -1.0f));
  let x_637 : bool = u_xlatb20.x;
  if (x_637) {
    let x_640 : vec3<f32> = vs_TEXCOORD1;
    let x_643 : vec4<f32> = x_631.x_MainLightWorldToLight[1i];
    let x_645 : vec2<f32> = (vec2<f32>(x_640.y, x_640.y) * vec2<f32>(x_643.x, x_643.y));
    let x_646 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_645.x, x_645.y, x_646.z);
    let x_649 : vec4<f32> = x_631.x_MainLightWorldToLight[0i];
    let x_651 : vec3<f32> = vs_TEXCOORD1;
    let x_654 : vec3<f32> = u_xlat20;
    let x_656 : vec2<f32> = ((vec2<f32>(x_649.x, x_649.y) * vec2<f32>(x_651.x, x_651.x)) + vec2<f32>(x_654.x, x_654.y));
    let x_657 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_656.x, x_656.y, x_657.z);
    let x_660 : vec4<f32> = x_631.x_MainLightWorldToLight[2i];
    let x_662 : vec3<f32> = vs_TEXCOORD1;
    let x_665 : vec3<f32> = u_xlat20;
    let x_667 : vec2<f32> = ((vec2<f32>(x_660.x, x_660.y) * vec2<f32>(x_662.z, x_662.z)) + vec2<f32>(x_665.x, x_665.y));
    let x_668 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_667.x, x_667.y, x_668.z);
    let x_670 : vec3<f32> = u_xlat20;
    let x_673 : vec4<f32> = x_631.x_MainLightWorldToLight[3i];
    let x_675 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) + vec2<f32>(x_673.x, x_673.y));
    let x_676 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_675.x, x_675.y, x_676.z);
    let x_678 : vec3<f32> = u_xlat20;
    let x_683 : vec2<f32> = ((vec2<f32>(x_678.x, x_678.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_684 : vec3<f32> = u_xlat20;
    u_xlat20 = vec3<f32>(x_683.x, x_683.y, x_684.z);
    let x_691 : vec3<f32> = u_xlat20;
    let x_694 : f32 = x_44.x_GlobalMipBias.x;
    let x_695 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_691.x, x_691.y), x_694);
    u_xlat7 = x_695;
    let x_697 : f32 = x_631.x_MainLightCookieTextureFormat;
    let x_699 : f32 = x_631.x_MainLightCookieTextureFormat;
    let x_701 : f32 = x_631.x_MainLightCookieTextureFormat;
    let x_703 : f32 = x_631.x_MainLightCookieTextureFormat;
    let x_704 : vec4<f32> = vec4<f32>(x_697, x_699, x_701, x_703);
    let x_712 : vec4<bool> = (vec4<f32>(x_704.x, x_704.y, x_704.z, x_704.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_712.x, x_712.y);
    let x_715 : bool = u_xlatb20.y;
    if (x_715) {
      let x_720 : f32 = u_xlat7.w;
      x_716 = x_720;
    } else {
      let x_723 : f32 = u_xlat7.x;
      x_716 = x_723;
    }
    let x_724 : f32 = x_716;
    u_xlat34 = x_724;
    let x_726 : bool = u_xlatb20.x;
    if (x_726) {
      let x_730 : vec4<f32> = u_xlat7;
      x_727 = vec3<f32>(x_730.x, x_730.y, x_730.z);
    } else {
      let x_733 : f32 = u_xlat34;
      x_727 = vec3<f32>(x_733, x_733, x_733);
    }
    let x_735 : vec3<f32> = x_727;
    u_xlat20 = x_735;
  } else {
    u_xlat20.x = 1.0f;
    u_xlat20.y = 1.0f;
    u_xlat20.z = 1.0f;
  }
  let x_740 : vec3<f32> = u_xlat20;
  let x_742 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat20 = (x_740 * vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : vec4<f32> = u_xlat6;
  let x_747 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_745.x, x_745.x, x_745.x) * x_747);
  let x_749 : vec3<f32> = u_xlat17;
  let x_751 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_749), vec3<f32>(x_751.x, x_751.y, x_751.z));
  let x_756 : f32 = u_xlat7.x;
  let x_758 : f32 = u_xlat7.x;
  u_xlat7.x = (x_756 + x_758);
  let x_761 : vec4<f32> = u_xlat4;
  let x_763 : vec4<f32> = u_xlat7;
  let x_767 : vec3<f32> = u_xlat17;
  let x_769 : vec3<f32> = ((vec3<f32>(x_761.x, x_761.y, x_761.z) * -(vec3<f32>(x_763.x, x_763.x, x_763.x))) + -(x_767));
  let x_770 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_773 : vec4<f32> = u_xlat4;
  let x_775 : vec3<f32> = u_xlat17;
  u_xlat49 = dot(vec3<f32>(x_773.x, x_773.y, x_773.z), x_775);
  let x_777 : f32 = u_xlat49;
  u_xlat49 = clamp(x_777, 0.0f, 1.0f);
  let x_779 : f32 = u_xlat49;
  u_xlat49 = (-(x_779) + 1.0f);
  let x_782 : f32 = u_xlat49;
  let x_783 : f32 = u_xlat49;
  u_xlat49 = (x_782 * x_783);
  let x_785 : f32 = u_xlat49;
  let x_786 : f32 = u_xlat49;
  u_xlat49 = (x_785 * x_786);
  let x_790 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_790) * 0.699999988f) + 1.700000048f);
  let x_798 : f32 = u_xlat1.x;
  let x_800 : f32 = u_xlat8.x;
  u_xlat1.x = (x_798 * x_800);
  let x_804 : f32 = u_xlat1.x;
  u_xlat1.x = (x_804 * 6.0f);
  let x_816 : vec4<f32> = u_xlat7;
  let x_819 : f32 = u_xlat1.x;
  let x_820 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_816.x, x_816.y, x_816.z), x_819);
  u_xlat8 = x_820;
  let x_822 : f32 = u_xlat8.w;
  u_xlat1.x = (x_822 + -1.0f);
  let x_826 : f32 = x_321.unity_SpecCube0_HDR.w;
  let x_828 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_826 * x_828) + 1.0f);
  let x_833 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_833, 0.0f);
  let x_837 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_837);
  let x_841 : f32 = u_xlat1.x;
  let x_843 : f32 = x_321.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_841 * x_843);
  let x_847 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_847);
  let x_851 : f32 = u_xlat1.x;
  let x_853 : f32 = x_321.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_851 * x_853);
  let x_856 : vec4<f32> = u_xlat8;
  let x_858 : vec2<f32> = u_xlat1;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(x_858.x, x_858.x, x_858.x));
  let x_861 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec3<f32> = u_xlat15;
  let x_865 : vec3<f32> = u_xlat15;
  u_xlat1 = ((vec2<f32>(x_863.x, x_863.x) * vec2<f32>(x_865.x, x_865.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_871 : f32 = u_xlat1.y;
  u_xlat15.x = (1.0f / x_871);
  let x_874 : vec4<f32> = u_xlat0;
  let x_877 : f32 = u_xlat43;
  let x_879 : vec3<f32> = (-(vec3<f32>(x_874.x, x_874.y, x_874.z)) + vec3<f32>(x_877, x_877, x_877));
  let x_880 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
  let x_882 : f32 = u_xlat49;
  let x_884 : vec4<f32> = u_xlat8;
  let x_887 : vec4<f32> = u_xlat0;
  let x_889 : vec3<f32> = ((vec3<f32>(x_882, x_882, x_882) * vec3<f32>(x_884.x, x_884.y, x_884.z)) + vec3<f32>(x_887.x, x_887.y, x_887.z));
  let x_890 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec3<f32> = u_xlat15;
  let x_894 : vec4<f32> = u_xlat8;
  let x_896 : vec3<f32> = (vec3<f32>(x_892.x, x_892.x, x_892.x) * vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_897 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat7;
  let x_901 : vec4<f32> = u_xlat8;
  let x_903 : vec3<f32> = (vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec3<f32> = u_xlat5;
  let x_907 : vec3<f32> = u_xlat16;
  let x_909 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_906 * x_907) + vec3<f32>(x_909.x, x_909.y, x_909.z));
  let x_912 : f32 = u_xlat47;
  let x_915 : f32 = x_321.unity_LightData.z;
  u_xlat15.x = (x_912 * x_915);
  let x_918 : vec4<f32> = u_xlat4;
  let x_921 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_918.x, x_918.y, x_918.z), vec3<f32>(x_921.x, x_921.y, x_921.z));
  let x_924 : f32 = u_xlat43;
  u_xlat43 = clamp(x_924, 0.0f, 1.0f);
  let x_926 : f32 = u_xlat43;
  let x_928 : f32 = u_xlat15.x;
  u_xlat15.x = (x_926 * x_928);
  let x_931 : vec3<f32> = u_xlat15;
  let x_933 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_931.x, x_931.x, x_931.x) * x_933);
  let x_935 : vec3<f32> = u_xlat17;
  let x_937 : vec4<f32> = x_44.x_MainLightPosition;
  let x_939 : vec3<f32> = (x_935 + vec3<f32>(x_937.x, x_937.y, x_937.z));
  let x_940 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
  let x_942 : vec4<f32> = u_xlat7;
  let x_944 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_942.x, x_942.y, x_942.z), vec3<f32>(x_944.x, x_944.y, x_944.z));
  let x_949 : f32 = u_xlat15.x;
  u_xlat15.x = max(x_949, 1.17549435e-37f);
  let x_954 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_954);
  let x_957 : vec3<f32> = u_xlat15;
  let x_959 : vec4<f32> = u_xlat7;
  let x_961 : vec3<f32> = (vec3<f32>(x_957.x, x_957.x, x_957.x) * vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
  let x_964 : vec4<f32> = u_xlat4;
  let x_966 : vec4<f32> = u_xlat7;
  u_xlat15.x = dot(vec3<f32>(x_964.x, x_964.y, x_964.z), vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_971 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_971, 0.0f, 1.0f);
  let x_975 : vec4<f32> = x_44.x_MainLightPosition;
  let x_977 : vec4<f32> = u_xlat7;
  u_xlat15.z = dot(vec3<f32>(x_975.x, x_975.y, x_975.z), vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_982 : f32 = u_xlat15.z;
  u_xlat15.z = clamp(x_982, 0.0f, 1.0f);
  let x_985 : vec3<f32> = u_xlat15;
  let x_987 : vec3<f32> = u_xlat15;
  let x_989 : vec2<f32> = (vec2<f32>(x_985.x, x_985.z) * vec2<f32>(x_987.x, x_987.z));
  let x_990 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_989.x, x_990.y, x_989.y);
  let x_993 : f32 = u_xlat15.x;
  let x_995 : f32 = u_xlat1.x;
  u_xlat15.x = ((x_993 * x_995) + 1.000010014f);
  let x_1001 : f32 = u_xlat15.x;
  let x_1003 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1001 * x_1003);
  let x_1007 : f32 = u_xlat15.z;
  u_xlat43 = max(x_1007, 0.100000001f);
  let x_1010 : f32 = u_xlat43;
  let x_1012 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1010 * x_1012);
  let x_1015 : f32 = u_xlat46;
  let x_1017 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1015 * x_1017);
  let x_1021 : f32 = u_xlat29.x;
  let x_1023 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1021 / x_1023);
  let x_1026 : vec4<f32> = u_xlat0;
  let x_1028 : vec3<f32> = u_xlat15;
  let x_1031 : vec3<f32> = u_xlat16;
  let x_1032 : vec3<f32> = ((vec3<f32>(x_1026.x, x_1026.y, x_1026.z) * vec3<f32>(x_1028.x, x_1028.x, x_1028.x)) + x_1031);
  let x_1033 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec3<f32> = u_xlat20;
  let x_1036 : vec4<f32> = u_xlat7;
  u_xlat20 = (x_1035 * vec3<f32>(x_1036.x, x_1036.y, x_1036.z));
  let x_1040 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1042 : f32 = x_321.unity_LightData.y;
  u_xlat15.x = min(x_1040, x_1042);
  let x_1048 : f32 = u_xlat15.x;
  u_xlatu15 = bitcast<u32>(i32(x_1048));
  let x_1053 : f32 = x_631.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1055 : f32 = x_631.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1057 : f32 = x_631.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1059 : f32 = x_631.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1060 : vec4<f32> = vec4<f32>(x_1053, x_1055, x_1057, x_1059);
  let x_1066 : vec4<bool> = (vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1060.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1066.x, x_1066.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1077 : u32 = u_xlatu_loop_1;
    let x_1078 : u32 = u_xlatu15;
    if ((x_1077 < x_1078)) {
    } else {
      break;
    }
    let x_1081 : u32 = u_xlatu_loop_1;
    u_xlatu47 = (x_1081 >> 2u);
    let x_1085 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_1085 & 3u));
    let x_1088 : u32 = u_xlatu47;
    let x_1091 : vec4<f32> = x_321.unity_LightIndices[bitcast<i32>(x_1088)];
    let x_1101 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1106 : vec4<u32> = indexable[x_1101];
    u_xlat47 = dot(x_1091, bitcast<vec4<f32>>(x_1106));
    let x_1109 : f32 = u_xlat47;
    u_xlatu47 = bitcast<u32>(i32(x_1109));
    let x_1113 : vec3<f32> = vs_TEXCOORD1;
    let x_1125 : u32 = u_xlatu47;
    let x_1128 : vec4<f32> = x_1124.x_AdditionalLightsPosition[bitcast<i32>(x_1125)];
    let x_1131 : u32 = u_xlatu47;
    let x_1134 : vec4<f32> = x_1124.x_AdditionalLightsPosition[bitcast<i32>(x_1131)];
    u_xlat9 = ((-(x_1113) * vec3<f32>(x_1128.w, x_1128.w, x_1128.w)) + vec3<f32>(x_1134.x, x_1134.y, x_1134.z));
    let x_1138 : vec3<f32> = u_xlat9;
    let x_1139 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1138, x_1139);
    let x_1141 : f32 = u_xlat35;
    u_xlat35 = max(x_1141, 6.10351562e-05f);
    let x_1144 : f32 = u_xlat35;
    u_xlat49 = inverseSqrt(x_1144);
    let x_1147 : f32 = u_xlat49;
    let x_1149 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1147, x_1147, x_1147) * x_1149);
    let x_1152 : f32 = u_xlat35;
    u_xlat50 = (1.0f / x_1152);
    let x_1154 : f32 = u_xlat35;
    let x_1155 : u32 = u_xlatu47;
    let x_1158 : f32 = x_1124.x_AdditionalLightsAttenuation[bitcast<i32>(x_1155)].x;
    u_xlat35 = (x_1154 * x_1158);
    let x_1160 : f32 = u_xlat35;
    let x_1162 : f32 = u_xlat35;
    u_xlat35 = ((-(x_1160) * x_1162) + 1.0f);
    let x_1165 : f32 = u_xlat35;
    u_xlat35 = max(x_1165, 0.0f);
    let x_1167 : f32 = u_xlat35;
    let x_1168 : f32 = u_xlat35;
    u_xlat35 = (x_1167 * x_1168);
    let x_1170 : f32 = u_xlat35;
    let x_1171 : f32 = u_xlat50;
    u_xlat35 = (x_1170 * x_1171);
    let x_1173 : u32 = u_xlatu47;
    let x_1176 : vec4<f32> = x_1124.x_AdditionalLightsSpotDir[bitcast<i32>(x_1173)];
    let x_1178 : vec3<f32> = u_xlat10;
    u_xlat50 = dot(vec3<f32>(x_1176.x, x_1176.y, x_1176.z), x_1178);
    let x_1180 : f32 = u_xlat50;
    let x_1181 : u32 = u_xlatu47;
    let x_1184 : f32 = x_1124.x_AdditionalLightsAttenuation[bitcast<i32>(x_1181)].z;
    let x_1186 : u32 = u_xlatu47;
    let x_1189 : f32 = x_1124.x_AdditionalLightsAttenuation[bitcast<i32>(x_1186)].w;
    u_xlat50 = ((x_1180 * x_1184) + x_1189);
    let x_1191 : f32 = u_xlat50;
    u_xlat50 = clamp(x_1191, 0.0f, 1.0f);
    let x_1193 : f32 = u_xlat50;
    let x_1194 : f32 = u_xlat50;
    u_xlat50 = (x_1193 * x_1194);
    let x_1196 : f32 = u_xlat35;
    let x_1197 : f32 = u_xlat50;
    u_xlat35 = (x_1196 * x_1197);
    let x_1200 : u32 = u_xlatu47;
    u_xlatu50 = (x_1200 >> 5u);
    let x_1203 : u32 = u_xlatu47;
    u_xlati51 = (1i << bitcast<u32>((bitcast<i32>(x_1203) & 31i)));
    let x_1209 : i32 = u_xlati51;
    let x_1211 : u32 = u_xlatu50;
    let x_1214 : f32 = x_631.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_1211)].el;
    u_xlati50 = bitcast<i32>((bitcast<u32>(x_1209) & bitcast<u32>(x_1214)));
    let x_1218 : i32 = u_xlati50;
    if ((x_1218 != 0i)) {
      let x_1228 : u32 = u_xlatu47;
      let x_1231 : f32 = x_1227.x_AdditionalLightsLightTypes[bitcast<i32>(x_1228)].el;
      u_xlati50 = i32(x_1231);
      let x_1233 : i32 = u_xlati50;
      u_xlati51 = select(1i, 0i, (x_1233 != 0i));
      let x_1237 : u32 = u_xlatu47;
      u_xlati52 = (bitcast<i32>(x_1237) << bitcast<u32>(2i));
      let x_1240 : i32 = u_xlati51;
      if ((x_1240 != 0i)) {
        let x_1245 : vec3<f32> = vs_TEXCOORD1;
        let x_1247 : i32 = u_xlati52;
        let x_1250 : i32 = u_xlati52;
        let x_1254 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[((x_1247 + 1i) / 4i)][((x_1250 + 1i) % 4i)];
        let x_1256 : vec3<f32> = (vec3<f32>(x_1245.y, x_1245.y, x_1245.y) * vec3<f32>(x_1254.x, x_1254.y, x_1254.w));
        let x_1257 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
        let x_1259 : i32 = u_xlati52;
        let x_1261 : i32 = u_xlati52;
        let x_1264 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[(x_1259 / 4i)][(x_1261 % 4i)];
        let x_1266 : vec3<f32> = vs_TEXCOORD1;
        let x_1269 : vec4<f32> = u_xlat11;
        let x_1271 : vec3<f32> = ((vec3<f32>(x_1264.x, x_1264.y, x_1264.w) * vec3<f32>(x_1266.x, x_1266.x, x_1266.x)) + vec3<f32>(x_1269.x, x_1269.y, x_1269.z));
        let x_1272 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
        let x_1274 : i32 = u_xlati52;
        let x_1277 : i32 = u_xlati52;
        let x_1281 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[((x_1274 + 2i) / 4i)][((x_1277 + 2i) % 4i)];
        let x_1283 : vec3<f32> = vs_TEXCOORD1;
        let x_1286 : vec4<f32> = u_xlat11;
        let x_1288 : vec3<f32> = ((vec3<f32>(x_1281.x, x_1281.y, x_1281.w) * vec3<f32>(x_1283.z, x_1283.z, x_1283.z)) + vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
        let x_1289 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat11;
        let x_1293 : i32 = u_xlati52;
        let x_1296 : i32 = u_xlati52;
        let x_1300 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[((x_1293 + 3i) / 4i)][((x_1296 + 3i) % 4i)];
        let x_1302 : vec3<f32> = (vec3<f32>(x_1291.x, x_1291.y, x_1291.z) + vec3<f32>(x_1300.x, x_1300.y, x_1300.w));
        let x_1303 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
        let x_1305 : vec4<f32> = u_xlat11;
        let x_1307 : vec4<f32> = u_xlat11;
        let x_1309 : vec2<f32> = (vec2<f32>(x_1305.x, x_1305.y) / vec2<f32>(x_1307.z, x_1307.z));
        let x_1310 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1310.w);
        let x_1312 : vec4<f32> = u_xlat11;
        let x_1315 : vec2<f32> = ((vec2<f32>(x_1312.x, x_1312.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1316 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1316.w);
        let x_1318 : vec4<f32> = u_xlat11;
        let x_1322 : vec2<f32> = clamp(vec2<f32>(x_1318.x, x_1318.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1323 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1323.w);
        let x_1325 : u32 = u_xlatu47;
        let x_1328 : vec4<f32> = x_1227.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1325)];
        let x_1330 : vec4<f32> = u_xlat11;
        let x_1333 : u32 = u_xlatu47;
        let x_1336 : vec4<f32> = x_1227.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1333)];
        let x_1338 : vec2<f32> = ((vec2<f32>(x_1328.x, x_1328.y) * vec2<f32>(x_1330.x, x_1330.y)) + vec2<f32>(x_1336.z, x_1336.w));
        let x_1339 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1338.x, x_1338.y, x_1339.z, x_1339.w);
      } else {
        let x_1343 : i32 = u_xlati50;
        u_xlatb50 = (x_1343 == 1i);
        let x_1345 : bool = u_xlatb50;
        u_xlati50 = select(0i, 1i, x_1345);
        let x_1347 : i32 = u_xlati50;
        if ((x_1347 != 0i)) {
          let x_1352 : vec3<f32> = vs_TEXCOORD1;
          let x_1354 : i32 = u_xlati52;
          let x_1357 : i32 = u_xlati52;
          let x_1361 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[((x_1354 + 1i) / 4i)][((x_1357 + 1i) % 4i)];
          u_xlat39 = (vec2<f32>(x_1352.y, x_1352.y) * vec2<f32>(x_1361.x, x_1361.y));
          let x_1364 : i32 = u_xlati52;
          let x_1366 : i32 = u_xlati52;
          let x_1369 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[(x_1364 / 4i)][(x_1366 % 4i)];
          let x_1371 : vec3<f32> = vs_TEXCOORD1;
          let x_1374 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(x_1371.x, x_1371.x)) + x_1374);
          let x_1376 : i32 = u_xlati52;
          let x_1379 : i32 = u_xlati52;
          let x_1383 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[((x_1376 + 2i) / 4i)][((x_1379 + 2i) % 4i)];
          let x_1385 : vec3<f32> = vs_TEXCOORD1;
          let x_1388 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1383.x, x_1383.y) * vec2<f32>(x_1385.z, x_1385.z)) + x_1388);
          let x_1390 : vec2<f32> = u_xlat39;
          let x_1391 : i32 = u_xlati52;
          let x_1394 : i32 = u_xlati52;
          let x_1398 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[((x_1391 + 3i) / 4i)][((x_1394 + 3i) % 4i)];
          u_xlat39 = (x_1390 + vec2<f32>(x_1398.x, x_1398.y));
          let x_1401 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1401 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1404 : vec2<f32> = u_xlat39;
          u_xlat39 = fract(x_1404);
          let x_1406 : u32 = u_xlatu47;
          let x_1409 : vec4<f32> = x_1227.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1406)];
          let x_1411 : vec2<f32> = u_xlat39;
          let x_1413 : u32 = u_xlatu47;
          let x_1416 : vec4<f32> = x_1227.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1413)];
          let x_1418 : vec2<f32> = ((vec2<f32>(x_1409.x, x_1409.y) * x_1411) + vec2<f32>(x_1416.z, x_1416.w));
          let x_1419 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1418.x, x_1418.y, x_1419.z, x_1419.w);
        } else {
          let x_1423 : vec3<f32> = vs_TEXCOORD1;
          let x_1425 : i32 = u_xlati52;
          let x_1428 : i32 = u_xlati52;
          let x_1432 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[((x_1425 + 1i) / 4i)][((x_1428 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1423.y, x_1423.y, x_1423.y, x_1423.y) * x_1432);
          let x_1434 : i32 = u_xlati52;
          let x_1436 : i32 = u_xlati52;
          let x_1439 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[(x_1434 / 4i)][(x_1436 % 4i)];
          let x_1440 : vec3<f32> = vs_TEXCOORD1;
          let x_1443 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1439 * vec4<f32>(x_1440.x, x_1440.x, x_1440.x, x_1440.x)) + x_1443);
          let x_1445 : i32 = u_xlati52;
          let x_1448 : i32 = u_xlati52;
          let x_1452 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[((x_1445 + 2i) / 4i)][((x_1448 + 2i) % 4i)];
          let x_1453 : vec3<f32> = vs_TEXCOORD1;
          let x_1456 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1452 * vec4<f32>(x_1453.z, x_1453.z, x_1453.z, x_1453.z)) + x_1456);
          let x_1458 : vec4<f32> = u_xlat12;
          let x_1459 : i32 = u_xlati52;
          let x_1462 : i32 = u_xlati52;
          let x_1466 : vec4<f32> = x_1227.x_AdditionalLightsWorldToLights[((x_1459 + 3i) / 4i)][((x_1462 + 3i) % 4i)];
          u_xlat12 = (x_1458 + x_1466);
          let x_1468 : vec4<f32> = u_xlat12;
          let x_1470 : vec4<f32> = u_xlat12;
          let x_1472 : vec3<f32> = (vec3<f32>(x_1468.x, x_1468.y, x_1468.z) / vec3<f32>(x_1470.w, x_1470.w, x_1470.w));
          let x_1473 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
          let x_1475 : vec4<f32> = u_xlat12;
          let x_1477 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(vec3<f32>(x_1475.x, x_1475.y, x_1475.z), vec3<f32>(x_1477.x, x_1477.y, x_1477.z));
          let x_1480 : f32 = u_xlat50;
          u_xlat50 = inverseSqrt(x_1480);
          let x_1482 : f32 = u_xlat50;
          let x_1484 : vec4<f32> = u_xlat12;
          let x_1486 : vec3<f32> = (vec3<f32>(x_1482, x_1482, x_1482) * vec3<f32>(x_1484.x, x_1484.y, x_1484.z));
          let x_1487 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1486.x, x_1486.y, x_1486.z, x_1487.w);
          let x_1489 : vec4<f32> = u_xlat12;
          u_xlat50 = dot(abs(vec3<f32>(x_1489.x, x_1489.y, x_1489.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1494 : f32 = u_xlat50;
          u_xlat50 = max(x_1494, 0.000001f);
          let x_1497 : f32 = u_xlat50;
          u_xlat50 = (1.0f / x_1497);
          let x_1500 : f32 = u_xlat50;
          let x_1502 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1500, x_1500, x_1500) * vec3<f32>(x_1502.z, x_1502.x, x_1502.y));
          let x_1506 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1506);
          let x_1510 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1510, 0.0f, 1.0f);
          let x_1514 : vec3<f32> = u_xlat13;
          let x_1517 : vec4<bool> = (vec4<f32>(x_1514.y, x_1514.z, x_1514.y, x_1514.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1517.x, x_1517.y);
          let x_1520 : bool = u_xlatb39.x;
          if (x_1520) {
            let x_1525 : f32 = u_xlat13.x;
            x_1521 = x_1525;
          } else {
            let x_1528 : f32 = u_xlat13.x;
            x_1521 = -(x_1528);
          }
          let x_1530 : f32 = x_1521;
          u_xlat39.x = x_1530;
          let x_1533 : bool = u_xlatb39.y;
          if (x_1533) {
            let x_1538 : f32 = u_xlat13.x;
            x_1534 = x_1538;
          } else {
            let x_1541 : f32 = u_xlat13.x;
            x_1534 = -(x_1541);
          }
          let x_1543 : f32 = x_1534;
          u_xlat39.y = x_1543;
          let x_1545 : vec4<f32> = u_xlat12;
          let x_1547 : f32 = u_xlat50;
          let x_1550 : vec2<f32> = u_xlat39;
          u_xlat39 = ((vec2<f32>(x_1545.x, x_1545.y) * vec2<f32>(x_1547, x_1547)) + x_1550);
          let x_1552 : vec2<f32> = u_xlat39;
          u_xlat39 = ((x_1552 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1555 : vec2<f32> = u_xlat39;
          u_xlat39 = clamp(x_1555, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1559 : u32 = u_xlatu47;
          let x_1562 : vec4<f32> = x_1227.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1559)];
          let x_1564 : vec2<f32> = u_xlat39;
          let x_1566 : u32 = u_xlatu47;
          let x_1569 : vec4<f32> = x_1227.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1566)];
          let x_1571 : vec2<f32> = ((vec2<f32>(x_1562.x, x_1562.y) * x_1564) + vec2<f32>(x_1569.z, x_1569.w));
          let x_1572 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1571.x, x_1571.y, x_1572.z, x_1572.w);
        }
      }
      let x_1579 : vec4<f32> = u_xlat11;
      let x_1582 : f32 = x_44.x_GlobalMipBias.x;
      let x_1583 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1579.x, x_1579.y), x_1582);
      u_xlat11 = x_1583;
      let x_1585 : bool = u_xlatb7.y;
      if (x_1585) {
        let x_1590 : f32 = u_xlat11.w;
        x_1586 = x_1590;
      } else {
        let x_1593 : f32 = u_xlat11.x;
        x_1586 = x_1593;
      }
      let x_1594 : f32 = x_1586;
      u_xlat50 = x_1594;
      let x_1596 : bool = u_xlatb7.x;
      if (x_1596) {
        let x_1600 : vec4<f32> = u_xlat11;
        x_1597 = vec3<f32>(x_1600.x, x_1600.y, x_1600.z);
      } else {
        let x_1603 : f32 = u_xlat50;
        x_1597 = vec3<f32>(x_1603, x_1603, x_1603);
      }
      let x_1605 : vec3<f32> = x_1597;
      let x_1606 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1605.x, x_1605.y, x_1605.z, x_1606.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1612 : vec4<f32> = u_xlat11;
    let x_1614 : u32 = u_xlatu47;
    let x_1617 : vec4<f32> = x_1124.x_AdditionalLightsColor[bitcast<i32>(x_1614)];
    let x_1619 : vec3<f32> = (vec3<f32>(x_1612.x, x_1612.y, x_1612.z) * vec3<f32>(x_1617.x, x_1617.y, x_1617.z));
    let x_1620 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1619.x, x_1619.y, x_1619.z, x_1620.w);
    let x_1622 : vec4<f32> = u_xlat6;
    let x_1624 : vec4<f32> = u_xlat11;
    let x_1626 : vec3<f32> = (vec3<f32>(x_1622.x, x_1622.x, x_1622.x) * vec3<f32>(x_1624.x, x_1624.y, x_1624.z));
    let x_1627 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1626.x, x_1626.y, x_1626.z, x_1627.w);
    let x_1629 : vec4<f32> = u_xlat4;
    let x_1631 : vec3<f32> = u_xlat10;
    u_xlat47 = dot(vec3<f32>(x_1629.x, x_1629.y, x_1629.z), x_1631);
    let x_1633 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1633, 0.0f, 1.0f);
    let x_1635 : f32 = u_xlat47;
    let x_1636 : f32 = u_xlat35;
    u_xlat47 = (x_1635 * x_1636);
    let x_1638 : f32 = u_xlat47;
    let x_1640 : vec4<f32> = u_xlat11;
    let x_1642 : vec3<f32> = (vec3<f32>(x_1638, x_1638, x_1638) * vec3<f32>(x_1640.x, x_1640.y, x_1640.z));
    let x_1643 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1642.x, x_1642.y, x_1642.z, x_1643.w);
    let x_1645 : vec3<f32> = u_xlat9;
    let x_1646 : f32 = u_xlat49;
    let x_1649 : vec3<f32> = u_xlat17;
    u_xlat9 = ((x_1645 * vec3<f32>(x_1646, x_1646, x_1646)) + x_1649);
    let x_1651 : vec3<f32> = u_xlat9;
    let x_1652 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(x_1651, x_1652);
    let x_1654 : f32 = u_xlat47;
    u_xlat47 = max(x_1654, 1.17549435e-37f);
    let x_1656 : f32 = u_xlat47;
    u_xlat47 = inverseSqrt(x_1656);
    let x_1658 : f32 = u_xlat47;
    let x_1660 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1658, x_1658, x_1658) * x_1660);
    let x_1662 : vec4<f32> = u_xlat4;
    let x_1664 : vec3<f32> = u_xlat9;
    u_xlat47 = dot(vec3<f32>(x_1662.x, x_1662.y, x_1662.z), x_1664);
    let x_1666 : f32 = u_xlat47;
    u_xlat47 = clamp(x_1666, 0.0f, 1.0f);
    let x_1668 : vec3<f32> = u_xlat10;
    let x_1669 : vec3<f32> = u_xlat9;
    u_xlat35 = dot(x_1668, x_1669);
    let x_1671 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1671, 0.0f, 1.0f);
    let x_1673 : f32 = u_xlat47;
    let x_1674 : f32 = u_xlat47;
    u_xlat47 = (x_1673 * x_1674);
    let x_1676 : f32 = u_xlat47;
    let x_1678 : f32 = u_xlat1.x;
    u_xlat47 = ((x_1676 * x_1678) + 1.000010014f);
    let x_1681 : f32 = u_xlat35;
    let x_1682 : f32 = u_xlat35;
    u_xlat35 = (x_1681 * x_1682);
    let x_1684 : f32 = u_xlat47;
    let x_1685 : f32 = u_xlat47;
    u_xlat47 = (x_1684 * x_1685);
    let x_1687 : f32 = u_xlat35;
    u_xlat35 = max(x_1687, 0.100000001f);
    let x_1689 : f32 = u_xlat47;
    let x_1690 : f32 = u_xlat35;
    u_xlat47 = (x_1689 * x_1690);
    let x_1692 : f32 = u_xlat46;
    let x_1693 : f32 = u_xlat47;
    u_xlat47 = (x_1692 * x_1693);
    let x_1696 : f32 = u_xlat29.x;
    let x_1697 : f32 = u_xlat47;
    u_xlat47 = (x_1696 / x_1697);
    let x_1699 : vec4<f32> = u_xlat0;
    let x_1701 : f32 = u_xlat47;
    let x_1704 : vec3<f32> = u_xlat16;
    u_xlat9 = ((vec3<f32>(x_1699.x, x_1699.y, x_1699.z) * vec3<f32>(x_1701, x_1701, x_1701)) + x_1704);
    let x_1706 : vec3<f32> = u_xlat9;
    let x_1707 : vec4<f32> = u_xlat11;
    let x_1710 : vec4<f32> = u_xlat8;
    let x_1712 : vec3<f32> = ((x_1706 * vec3<f32>(x_1707.x, x_1707.y, x_1707.z)) + vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
    let x_1713 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1712.x, x_1712.y, x_1712.z, x_1713.w);

    continuing {
      let x_1715 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1715 + bitcast<u32>(1i));
    }
  }
  let x_1717 : vec3<f32> = u_xlat5;
  let x_1718 : vec3<f32> = u_xlat3;
  let x_1721 : vec3<f32> = u_xlat20;
  let x_1722 : vec3<f32> = ((x_1717 * vec3<f32>(x_1718.x, x_1718.x, x_1718.x)) + x_1721);
  let x_1723 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);
  let x_1725 : vec4<f32> = u_xlat8;
  let x_1727 : vec4<f32> = u_xlat0;
  let x_1729 : vec3<f32> = (vec3<f32>(x_1725.x, x_1725.y, x_1725.z) + vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
  let x_1730 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
  let x_1732 : f32 = u_xlat42;
  let x_1733 : f32 = u_xlat42;
  u_xlat42 = (x_1732 * -(x_1733));
  let x_1736 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1736);
  let x_1738 : vec4<f32> = u_xlat0;
  let x_1742 : vec4<f32> = x_44.unity_FogColor;
  let x_1745 : vec3<f32> = (vec3<f32>(x_1738.x, x_1738.y, x_1738.z) + -(vec3<f32>(x_1742.x, x_1742.y, x_1742.z)));
  let x_1746 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
  let x_1750 : f32 = u_xlat42;
  let x_1752 : vec4<f32> = u_xlat0;
  let x_1756 : vec4<f32> = x_44.unity_FogColor;
  let x_1758 : vec3<f32> = ((vec3<f32>(x_1750, x_1750, x_1750) * vec3<f32>(x_1752.x, x_1752.y, x_1752.z)) + vec3<f32>(x_1756.x, x_1756.y, x_1756.z));
  let x_1759 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
  let x_1764 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1764 == 1.0f);
  let x_1766 : bool = u_xlatb0;
  if (x_1766) {
    let x_1771 : f32 = u_xlat2.x;
    x_1767 = x_1771;
  } else {
    x_1767 = 1.0f;
  }
  let x_1773 : f32 = x_1767;
  SV_Target0.w = x_1773;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

