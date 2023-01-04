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

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_321 : UnityPerDraw;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_561 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_962 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat33 : f32;
  var u_xlat14 : vec3<f32>;
  var u_xlatb14 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat25 : f32;
  var u_xlat5 : vec3<f32>;
  var x_205 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat34 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat17 : vec3<f32>;
  var u_xlatb17 : bool;
  var u_xlatb28 : bool;
  var u_xlat28 : f32;
  var u_xlat40 : f32;
  var u_xlat8 : vec4<f32>;
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
  var x_1187 : f32;
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
  u_xlat23 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat23;
  let x_107 : vec2<f32> = u_xlat23;
  u_xlat33 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat33;
  u_xlat33 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat33;
  u_xlat33 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat33;
  u_xlat33 = sqrt(x_114);
  let x_116 : f32 = u_xlat33;
  u_xlat33 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat23;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat23 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat14.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat14.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_162 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_162 == 0.0f);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_174 : vec3<f32> = (-(x_168) + x_173);
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec4<f32> = u_xlat4;
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_183);
  let x_185 : f32 = u_xlat25;
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
  let x_204 : bool = u_xlatb14;
  if (x_204) {
    let x_208 : vec4<f32> = u_xlat4;
    x_205 = vec3<f32>(x_208.x, x_208.y, x_208.z);
  } else {
    let x_211 : vec3<f32> = u_xlat5;
    x_205 = x_211;
  }
  let x_212 : vec3<f32> = x_205;
  u_xlat14 = x_212;
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
  let x_240 : vec2<f32> = u_xlat23;
  let x_242 : vec4<f32> = u_xlat4;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec2<f32> = u_xlat23;
  let x_249 : vec4<f32> = vs_TEXCOORD3;
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.x, x_247.x) * vec3<f32>(x_249.x, x_249.y, x_249.z)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : f32 = u_xlat33;
  let x_259 : vec3<f32> = vs_TEXCOORD2;
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257, x_257, x_257) * x_259) + vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat4;
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_271);
  let x_273 : f32 = u_xlat33;
  let x_275 : vec4<f32> = u_xlat4;
  let x_277 : vec3<f32> = (vec3<f32>(x_273, x_273, x_273) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : f32 = vs_TEXCOORD1.y;
  let x_283 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_281 * x_283);
  let x_286 : f32 = x_44.unity_MatrixV[0i].z;
  let x_288 : f32 = vs_TEXCOORD1.x;
  let x_290 : f32 = u_xlat33;
  u_xlat33 = ((x_286 * x_288) + x_290);
  let x_293 : f32 = x_44.unity_MatrixV[2i].z;
  let x_295 : f32 = vs_TEXCOORD1.z;
  let x_297 : f32 = u_xlat33;
  u_xlat33 = ((x_293 * x_295) + x_297);
  let x_299 : f32 = u_xlat33;
  let x_302 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_299 + x_302);
  let x_304 : f32 = u_xlat33;
  let x_308 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_304) + -(x_308));
  let x_311 : f32 = u_xlat33;
  u_xlat33 = max(x_311, 0.0f);
  let x_313 : f32 = u_xlat33;
  let x_315 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_313 * x_315);
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
  u_xlat23.x = (x_366 * x_368);
  let x_372 : f32 = u_xlat4.x;
  let x_374 : f32 = u_xlat4.x;
  let x_377 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_372 * x_374) + -(x_377));
  let x_383 : vec4<f32> = x_321.unity_SHC;
  let x_385 : vec2<f32> = u_xlat23;
  let x_388 : vec3<f32> = u_xlat7;
  let x_389 : vec3<f32> = ((vec3<f32>(x_383.x, x_383.y, x_383.z) * vec3<f32>(x_385.x, x_385.x, x_385.x)) + x_388);
  let x_390 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec3<f32> = u_xlat5;
  let x_393 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_392 + vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_396, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_401 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_402 : vec2<f32> = vec2<f32>(x_401.x, x_401.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_402.x, x_402.y));
  let x_407 : vec2<f32> = u_xlat23;
  let x_408 : vec4<f32> = hlslcc_FragCoord;
  let x_410 : vec2<f32> = (x_407 * vec2<f32>(x_408.x, x_408.y));
  let x_411 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
  let x_414 : f32 = u_xlat6.y;
  let x_417 : f32 = x_44.x_ScaleBiasRt.x;
  let x_420 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_414 * x_417) + x_420);
  let x_424 : f32 = u_xlat23.x;
  u_xlat6.z = (-(x_424) + 1.0f);
  let x_429 : f32 = u_xlat1.x;
  u_xlat23.x = ((-(x_429) * 0.959999979f) + 0.959999979f);
  let x_437 : f32 = u_xlat1.y;
  let x_439 : f32 = x_69.x_Smoothness;
  let x_442 : f32 = u_xlat23.x;
  u_xlat34 = ((x_437 * x_439) + -(x_442));
  let x_446 : vec2<f32> = u_xlat23;
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_446.x, x_446.x, x_446.x) * vec3<f32>(x_448.y, x_448.z, x_448.w));
  let x_451 : vec4<f32> = u_xlat0;
  let x_454 : vec4<f32> = x_69.x_BaseColor;
  let x_459 : vec3<f32> = ((vec3<f32>(x_451.x, x_451.y, x_451.z) * vec3<f32>(x_454.x, x_454.y, x_454.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_460 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
  let x_462 : vec2<f32> = u_xlat1;
  let x_464 : vec4<f32> = u_xlat0;
  let x_469 : vec3<f32> = ((vec3<f32>(x_462.x, x_462.x, x_462.x) * vec3<f32>(x_464.x, x_464.y, x_464.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_470 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_473 : f32 = u_xlat1.y;
  let x_476 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_473) * x_476) + 1.0f);
  let x_482 : f32 = u_xlat1.x;
  let x_484 : f32 = u_xlat1.x;
  u_xlat12.x = (x_482 * x_484);
  let x_488 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_488, 0.0078125f);
  let x_493 : f32 = u_xlat12.x;
  let x_495 : f32 = u_xlat12.x;
  u_xlat23.x = (x_493 * x_495);
  let x_498 : f32 = u_xlat34;
  u_xlat34 = (x_498 + 1.0f);
  let x_500 : f32 = u_xlat34;
  u_xlat34 = clamp(x_500, 0.0f, 1.0f);
  let x_504 : f32 = u_xlat12.x;
  u_xlat37 = ((x_504 * 4.0f) + 2.0f);
  let x_514 : vec4<f32> = u_xlat6;
  let x_517 : f32 = x_44.x_GlobalMipBias.x;
  let x_518 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_514.x, x_514.z), x_517);
  u_xlat38 = x_518.x;
  let x_520 : f32 = u_xlat38;
  u_xlat6.x = (x_520 + -1.0f);
  let x_525 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_527 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_525 * x_527) + 1.0f);
  let x_532 : f32 = u_xlat3.x;
  let x_533 : f32 = u_xlat38;
  u_xlat3.x = min(x_532, x_533);
  let x_538 : vec4<f32> = vs_TEXCOORD6;
  let x_539 : vec2<f32> = vec2<f32>(x_538.x, x_538.y);
  let x_541 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_539.x, x_539.y, x_541);
  let x_553 : vec3<f32> = txVec0;
  let x_555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_553.xy, x_553.z);
  u_xlat38 = x_555;
  let x_563 : f32 = x_561.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_563) + 1.0f);
  let x_567 : f32 = u_xlat38;
  let x_569 : f32 = x_561.x_MainLightShadowParams.x;
  let x_572 : f32 = u_xlat17.x;
  u_xlat38 = ((x_567 * x_569) + x_572);
  let x_576 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_576);
  let x_580 : f32 = vs_TEXCOORD6.z;
  u_xlatb28 = (x_580 >= 1.0f);
  let x_582 : bool = u_xlatb28;
  let x_583 : bool = u_xlatb17;
  u_xlatb17 = (x_582 | x_583);
  let x_585 : bool = u_xlatb17;
  let x_586 : f32 = u_xlat38;
  u_xlat38 = select(x_586, 1.0f, x_585);
  let x_588 : vec3<f32> = vs_TEXCOORD1;
  let x_590 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_588 + -(x_590));
  let x_593 : vec3<f32> = u_xlat17;
  let x_594 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_593, x_594);
  let x_598 : f32 = u_xlat17.x;
  let x_600 : f32 = x_561.x_MainLightShadowParams.z;
  let x_603 : f32 = x_561.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_598 * x_600) + x_603);
  let x_607 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_607, 0.0f, 1.0f);
  let x_611 : f32 = u_xlat38;
  u_xlat28 = (-(x_611) + 1.0f);
  let x_615 : f32 = u_xlat17.x;
  let x_616 : f32 = u_xlat28;
  let x_618 : f32 = u_xlat38;
  u_xlat38 = ((x_615 * x_616) + x_618);
  let x_620 : vec4<f32> = u_xlat6;
  let x_623 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_620.x, x_620.x, x_620.x) * vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec3<f32> = u_xlat14;
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_626), vec3<f32>(x_628.x, x_628.y, x_628.z));
  let x_633 : f32 = u_xlat7.x;
  let x_635 : f32 = u_xlat7.x;
  u_xlat7.x = (x_633 + x_635);
  let x_638 : vec4<f32> = u_xlat4;
  let x_640 : vec3<f32> = u_xlat7;
  let x_644 : vec3<f32> = u_xlat14;
  u_xlat7 = ((vec3<f32>(x_638.x, x_638.y, x_638.z) * -(vec3<f32>(x_640.x, x_640.x, x_640.x))) + -(x_644));
  let x_648 : vec4<f32> = u_xlat4;
  let x_650 : vec3<f32> = u_xlat14;
  u_xlat40 = dot(vec3<f32>(x_648.x, x_648.y, x_648.z), x_650);
  let x_652 : f32 = u_xlat40;
  u_xlat40 = clamp(x_652, 0.0f, 1.0f);
  let x_654 : f32 = u_xlat40;
  u_xlat40 = (-(x_654) + 1.0f);
  let x_657 : f32 = u_xlat40;
  let x_658 : f32 = u_xlat40;
  u_xlat40 = (x_657 * x_658);
  let x_660 : f32 = u_xlat40;
  let x_661 : f32 = u_xlat40;
  u_xlat40 = (x_660 * x_661);
  let x_665 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_665) * 0.699999988f) + 1.700000048f);
  let x_673 : f32 = u_xlat1.x;
  let x_675 : f32 = u_xlat8.x;
  u_xlat1.x = (x_673 * x_675);
  let x_679 : f32 = u_xlat1.x;
  u_xlat1.x = (x_679 * 6.0f);
  let x_691 : vec3<f32> = u_xlat7;
  let x_693 : f32 = u_xlat1.x;
  let x_694 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_691, x_693);
  u_xlat8 = x_694;
  let x_696 : f32 = u_xlat8.w;
  u_xlat1.x = (x_696 + -1.0f);
  let x_700 : f32 = x_321.unity_SpecCube0_HDR.w;
  let x_702 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_700 * x_702) + 1.0f);
  let x_707 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_707, 0.0f);
  let x_711 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_711);
  let x_715 : f32 = u_xlat1.x;
  let x_717 : f32 = x_321.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_715 * x_717);
  let x_721 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_721);
  let x_725 : f32 = u_xlat1.x;
  let x_727 : f32 = x_321.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_725 * x_727);
  let x_730 : vec4<f32> = u_xlat8;
  let x_732 : vec2<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_730.x, x_730.y, x_730.z) * vec3<f32>(x_732.x, x_732.x, x_732.x));
  let x_735 : vec3<f32> = u_xlat12;
  let x_737 : vec3<f32> = u_xlat12;
  u_xlat1 = ((vec2<f32>(x_735.x, x_735.x) * vec2<f32>(x_737.x, x_737.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_743 : f32 = u_xlat1.y;
  u_xlat12.x = (1.0f / x_743);
  let x_746 : vec4<f32> = u_xlat0;
  let x_749 : f32 = u_xlat34;
  let x_751 : vec3<f32> = (-(vec3<f32>(x_746.x, x_746.y, x_746.z)) + vec3<f32>(x_749, x_749, x_749));
  let x_752 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : f32 = u_xlat40;
  let x_756 : vec4<f32> = u_xlat8;
  let x_759 : vec4<f32> = u_xlat0;
  let x_761 : vec3<f32> = ((vec3<f32>(x_754, x_754, x_754) * vec3<f32>(x_756.x, x_756.y, x_756.z)) + vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_764 : vec3<f32> = u_xlat12;
  let x_766 : vec4<f32> = u_xlat8;
  let x_768 : vec3<f32> = (vec3<f32>(x_764.x, x_764.x, x_764.x) * vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec3<f32> = u_xlat7;
  let x_772 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_771 * vec3<f32>(x_772.x, x_772.y, x_772.z));
  let x_775 : vec3<f32> = u_xlat5;
  let x_776 : vec3<f32> = u_xlat13;
  let x_778 : vec3<f32> = u_xlat7;
  u_xlat5 = ((x_775 * x_776) + x_778);
  let x_780 : f32 = u_xlat38;
  let x_783 : f32 = x_321.unity_LightData.z;
  u_xlat12.x = (x_780 * x_783);
  let x_786 : vec4<f32> = u_xlat4;
  let x_789 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(vec3<f32>(x_786.x, x_786.y, x_786.z), vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : f32 = u_xlat34;
  u_xlat34 = clamp(x_792, 0.0f, 1.0f);
  let x_794 : f32 = u_xlat34;
  let x_796 : f32 = u_xlat12.x;
  u_xlat12.x = (x_794 * x_796);
  let x_799 : vec3<f32> = u_xlat12;
  let x_801 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_799.x, x_799.x, x_799.x) * x_801);
  let x_803 : vec3<f32> = u_xlat14;
  let x_805 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_803 + vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec3<f32> = u_xlat7;
  let x_809 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_808, x_809);
  let x_813 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_813, 1.17549435e-37f);
  let x_818 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_818);
  let x_821 : vec3<f32> = u_xlat12;
  let x_823 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_821.x, x_821.x, x_821.x) * x_823);
  let x_825 : vec4<f32> = u_xlat4;
  let x_827 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(vec3<f32>(x_825.x, x_825.y, x_825.z), x_827);
  let x_831 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_831, 0.0f, 1.0f);
  let x_835 : vec4<f32> = x_44.x_MainLightPosition;
  let x_837 : vec3<f32> = u_xlat7;
  u_xlat12.z = dot(vec3<f32>(x_835.x, x_835.y, x_835.z), x_837);
  let x_841 : f32 = u_xlat12.z;
  u_xlat12.z = clamp(x_841, 0.0f, 1.0f);
  let x_844 : vec3<f32> = u_xlat12;
  let x_846 : vec3<f32> = u_xlat12;
  let x_848 : vec2<f32> = (vec2<f32>(x_844.x, x_844.z) * vec2<f32>(x_846.x, x_846.z));
  let x_849 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_848.x, x_849.y, x_848.y);
  let x_852 : f32 = u_xlat12.x;
  let x_854 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_852 * x_854) + 1.000010014f);
  let x_860 : f32 = u_xlat12.x;
  let x_862 : f32 = u_xlat12.x;
  u_xlat12.x = (x_860 * x_862);
  let x_866 : f32 = u_xlat12.z;
  u_xlat34 = max(x_866, 0.100000001f);
  let x_869 : f32 = u_xlat34;
  let x_871 : f32 = u_xlat12.x;
  u_xlat12.x = (x_869 * x_871);
  let x_874 : f32 = u_xlat37;
  let x_876 : f32 = u_xlat12.x;
  u_xlat12.x = (x_874 * x_876);
  let x_880 : f32 = u_xlat23.x;
  let x_882 : f32 = u_xlat12.x;
  u_xlat12.x = (x_880 / x_882);
  let x_885 : vec4<f32> = u_xlat0;
  let x_887 : vec3<f32> = u_xlat12;
  let x_890 : vec3<f32> = u_xlat13;
  u_xlat7 = ((vec3<f32>(x_885.x, x_885.y, x_885.z) * vec3<f32>(x_887.x, x_887.x, x_887.x)) + x_890);
  let x_892 : vec3<f32> = u_xlat17;
  let x_893 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_892 * x_893);
  let x_896 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_898 : f32 = x_321.unity_LightData.y;
  u_xlat12.x = min(x_896, x_898);
  let x_904 : f32 = u_xlat12.x;
  u_xlatu12 = bitcast<u32>(i32(x_904));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_916 : u32 = u_xlatu_loop_1;
    let x_917 : u32 = u_xlatu12;
    if ((x_916 < x_917)) {
    } else {
      break;
    }
    let x_920 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_920 >> 2u);
    let x_924 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_924 & 3u));
    let x_927 : u32 = u_xlatu38;
    let x_930 : vec4<f32> = x_321.unity_LightIndices[bitcast<i32>(x_927)];
    let x_940 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_945 : vec4<u32> = indexable[x_940];
    u_xlat38 = dot(x_930, bitcast<vec4<f32>>(x_945));
    let x_949 : f32 = u_xlat38;
    u_xlati38 = i32(x_949);
    let x_951 : vec3<f32> = vs_TEXCOORD1;
    let x_963 : i32 = u_xlati38;
    let x_965 : vec4<f32> = x_962.x_AdditionalLightsPosition[x_963];
    let x_968 : i32 = u_xlati38;
    let x_970 : vec4<f32> = x_962.x_AdditionalLightsPosition[x_968];
    let x_972 : vec3<f32> = ((-(x_951) * vec3<f32>(x_965.w, x_965.w, x_965.w)) + vec3<f32>(x_970.x, x_970.y, x_970.z));
    let x_973 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
    let x_975 : vec4<f32> = u_xlat8;
    let x_977 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_975.x, x_975.y, x_975.z), vec3<f32>(x_977.x, x_977.y, x_977.z));
    let x_980 : f32 = u_xlat40;
    u_xlat40 = max(x_980, 6.10351562e-05f);
    let x_984 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_984);
    let x_987 : f32 = u_xlat41;
    let x_989 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_987, x_987, x_987) * vec3<f32>(x_989.x, x_989.y, x_989.z));
    let x_993 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_993);
    let x_995 : f32 = u_xlat40;
    let x_996 : i32 = u_xlati38;
    let x_998 : f32 = x_962.x_AdditionalLightsAttenuation[x_996].x;
    u_xlat40 = (x_995 * x_998);
    let x_1000 : f32 = u_xlat40;
    let x_1002 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1000) * x_1002) + 1.0f);
    let x_1005 : f32 = u_xlat40;
    u_xlat40 = max(x_1005, 0.0f);
    let x_1007 : f32 = u_xlat40;
    let x_1008 : f32 = u_xlat40;
    u_xlat40 = (x_1007 * x_1008);
    let x_1010 : f32 = u_xlat40;
    let x_1011 : f32 = u_xlat42;
    u_xlat40 = (x_1010 * x_1011);
    let x_1013 : i32 = u_xlati38;
    let x_1015 : vec4<f32> = x_962.x_AdditionalLightsSpotDir[x_1013];
    let x_1017 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1015.x, x_1015.y, x_1015.z), x_1017);
    let x_1019 : f32 = u_xlat42;
    let x_1020 : i32 = u_xlati38;
    let x_1022 : f32 = x_962.x_AdditionalLightsAttenuation[x_1020].z;
    let x_1024 : i32 = u_xlati38;
    let x_1026 : f32 = x_962.x_AdditionalLightsAttenuation[x_1024].w;
    u_xlat42 = ((x_1019 * x_1022) + x_1026);
    let x_1028 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1028, 0.0f, 1.0f);
    let x_1030 : f32 = u_xlat42;
    let x_1031 : f32 = u_xlat42;
    u_xlat42 = (x_1030 * x_1031);
    let x_1033 : f32 = u_xlat40;
    let x_1034 : f32 = u_xlat42;
    u_xlat40 = (x_1033 * x_1034);
    let x_1037 : vec4<f32> = u_xlat6;
    let x_1039 : i32 = u_xlati38;
    let x_1041 : vec4<f32> = x_962.x_AdditionalLightsColor[x_1039];
    u_xlat10 = (vec3<f32>(x_1037.x, x_1037.x, x_1037.x) * vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
    let x_1044 : vec4<f32> = u_xlat4;
    let x_1046 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(vec3<f32>(x_1044.x, x_1044.y, x_1044.z), x_1046);
    let x_1048 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1048, 0.0f, 1.0f);
    let x_1050 : f32 = u_xlat38;
    let x_1051 : f32 = u_xlat40;
    u_xlat38 = (x_1050 * x_1051);
    let x_1053 : f32 = u_xlat38;
    let x_1055 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1053, x_1053, x_1053) * x_1055);
    let x_1057 : vec4<f32> = u_xlat8;
    let x_1059 : f32 = u_xlat41;
    let x_1062 : vec3<f32> = u_xlat14;
    let x_1063 : vec3<f32> = ((vec3<f32>(x_1057.x, x_1057.y, x_1057.z) * vec3<f32>(x_1059, x_1059, x_1059)) + x_1062);
    let x_1064 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
    let x_1066 : vec4<f32> = u_xlat8;
    let x_1068 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1066.x, x_1066.y, x_1066.z), vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
    let x_1071 : f32 = u_xlat38;
    u_xlat38 = max(x_1071, 1.17549435e-37f);
    let x_1073 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1073);
    let x_1075 : f32 = u_xlat38;
    let x_1077 : vec4<f32> = u_xlat8;
    let x_1079 : vec3<f32> = (vec3<f32>(x_1075, x_1075, x_1075) * vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
    let x_1080 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
    let x_1082 : vec4<f32> = u_xlat4;
    let x_1084 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1082.x, x_1082.y, x_1082.z), vec3<f32>(x_1084.x, x_1084.y, x_1084.z));
    let x_1087 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1087, 0.0f, 1.0f);
    let x_1089 : vec3<f32> = u_xlat9;
    let x_1090 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1089, vec3<f32>(x_1090.x, x_1090.y, x_1090.z));
    let x_1093 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1093, 0.0f, 1.0f);
    let x_1095 : f32 = u_xlat38;
    let x_1096 : f32 = u_xlat38;
    u_xlat38 = (x_1095 * x_1096);
    let x_1098 : f32 = u_xlat38;
    let x_1100 : f32 = u_xlat1.x;
    u_xlat38 = ((x_1098 * x_1100) + 1.000010014f);
    let x_1103 : f32 = u_xlat40;
    let x_1104 : f32 = u_xlat40;
    u_xlat40 = (x_1103 * x_1104);
    let x_1106 : f32 = u_xlat38;
    let x_1107 : f32 = u_xlat38;
    u_xlat38 = (x_1106 * x_1107);
    let x_1109 : f32 = u_xlat40;
    u_xlat40 = max(x_1109, 0.100000001f);
    let x_1111 : f32 = u_xlat38;
    let x_1112 : f32 = u_xlat40;
    u_xlat38 = (x_1111 * x_1112);
    let x_1114 : f32 = u_xlat37;
    let x_1115 : f32 = u_xlat38;
    u_xlat38 = (x_1114 * x_1115);
    let x_1118 : f32 = u_xlat23.x;
    let x_1119 : f32 = u_xlat38;
    u_xlat38 = (x_1118 / x_1119);
    let x_1121 : vec4<f32> = u_xlat0;
    let x_1123 : f32 = u_xlat38;
    let x_1126 : vec3<f32> = u_xlat13;
    let x_1127 : vec3<f32> = ((vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * vec3<f32>(x_1123, x_1123, x_1123)) + x_1126);
    let x_1128 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
    let x_1130 : vec4<f32> = u_xlat8;
    let x_1132 : vec3<f32> = u_xlat10;
    let x_1134 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1130.x, x_1130.y, x_1130.z) * x_1132) + x_1134);

    continuing {
      let x_1136 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1136 + bitcast<u32>(1i));
    }
  }
  let x_1138 : vec3<f32> = u_xlat5;
  let x_1139 : vec3<f32> = u_xlat3;
  let x_1142 : vec3<f32> = u_xlat17;
  let x_1143 : vec3<f32> = ((x_1138 * vec3<f32>(x_1139.x, x_1139.x, x_1139.x)) + x_1142);
  let x_1144 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1146 : vec3<f32> = u_xlat7;
  let x_1147 : vec4<f32> = u_xlat0;
  let x_1149 : vec3<f32> = (x_1146 + vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
  let x_1150 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
  let x_1152 : f32 = u_xlat33;
  let x_1153 : f32 = u_xlat33;
  u_xlat33 = (x_1152 * -(x_1153));
  let x_1156 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1156);
  let x_1158 : vec4<f32> = u_xlat0;
  let x_1162 : vec4<f32> = x_44.unity_FogColor;
  let x_1165 : vec3<f32> = (vec3<f32>(x_1158.x, x_1158.y, x_1158.z) + -(vec3<f32>(x_1162.x, x_1162.y, x_1162.z)));
  let x_1166 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
  let x_1170 : f32 = u_xlat33;
  let x_1172 : vec4<f32> = u_xlat0;
  let x_1176 : vec4<f32> = x_44.unity_FogColor;
  let x_1178 : vec3<f32> = ((vec3<f32>(x_1170, x_1170, x_1170) * vec3<f32>(x_1172.x, x_1172.y, x_1172.z)) + vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1184 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1184 == 1.0f);
  let x_1186 : bool = u_xlatb0;
  if (x_1186) {
    let x_1191 : f32 = u_xlat2.x;
    x_1187 = x_1191;
  } else {
    x_1187 = 1.0f;
  }
  let x_1193 : f32 = x_1187;
  SV_Target0.w = x_1193;
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

