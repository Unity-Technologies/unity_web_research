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

@group(1) @binding(4) var<uniform> x_542 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2219 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat63 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlat4 : vec4<f32>;
  var u_xlat45 : f32;
  var u_xlat5 : vec3<f32>;
  var x_205 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat64 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat22 : vec3<f32>;
  var u_xlat67 : f32;
  var u_xlat68 : f32;
  var u_xlatb68 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb27 : bool;
  var u_xlat27 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat48 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat69 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat29 : vec2<f32>;
  var u_xlat17 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb48 : bool;
  var u_xlat70 : f32;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati70 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati68 : i32;
  var u_xlat71 : f32;
  var u_xlat72 : f32;
  var u_xlatb0 : bool;
  var x_2457 : f32;
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
  u_xlat43 = ((vec2<f32>(x_97.x, x_97.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_106 : vec2<f32> = u_xlat43;
  let x_107 : vec2<f32> = u_xlat43;
  u_xlat63 = dot(x_106, x_107);
  let x_109 : f32 = u_xlat63;
  u_xlat63 = min(x_109, 1.0f);
  let x_111 : f32 = u_xlat63;
  u_xlat63 = (-(x_111) + 1.0f);
  let x_114 : f32 = u_xlat63;
  u_xlat63 = sqrt(x_114);
  let x_116 : f32 = u_xlat63;
  u_xlat63 = max(x_116, 1.00000002e-16f);
  let x_119 : vec2<f32> = u_xlat43;
  let x_122 : f32 = x_69.x_BumpScale;
  let x_124 : f32 = x_69.x_BumpScale;
  let x_125 : vec2<f32> = vec2<f32>(x_122, x_124);
  u_xlat43 = (x_119 * vec2<f32>(x_125.x, x_125.y));
  let x_135 : vec2<f32> = vs_TEXCOORD0;
  let x_137 : f32 = x_44.x_GlobalMipBias.x;
  let x_138 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_135, x_137);
  u_xlat3.x = x_138.y;
  let x_145 : f32 = x_69.x_OcclusionStrength;
  u_xlat24.x = (-(x_145) + 1.0f);
  let x_150 : f32 = u_xlat3.x;
  let x_152 : f32 = x_69.x_OcclusionStrength;
  let x_155 : f32 = u_xlat24.x;
  u_xlat3.x = ((x_150 * x_152) + x_155);
  let x_162 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb24 = (x_162 == 0.0f);
  let x_168 : vec3<f32> = vs_TEXCOORD1;
  let x_173 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_174 : vec3<f32> = (-(x_168) + x_173);
  let x_175 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec4<f32> = u_xlat4;
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat45 = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_183);
  let x_185 : f32 = u_xlat45;
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
  let x_204 : bool = u_xlatb24;
  if (x_204) {
    let x_208 : vec4<f32> = u_xlat4;
    x_205 = vec3<f32>(x_208.x, x_208.y, x_208.z);
  } else {
    let x_211 : vec3<f32> = u_xlat5;
    x_205 = x_211;
  }
  let x_212 : vec3<f32> = x_205;
  u_xlat24 = x_212;
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
  let x_240 : vec2<f32> = u_xlat43;
  let x_242 : vec4<f32> = u_xlat4;
  let x_244 : vec3<f32> = (vec3<f32>(x_240.y, x_240.y, x_240.y) * vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec2<f32> = u_xlat43;
  let x_249 : vec4<f32> = vs_TEXCOORD3;
  let x_252 : vec4<f32> = u_xlat4;
  let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.x, x_247.x) * vec3<f32>(x_249.x, x_249.y, x_249.z)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : f32 = u_xlat63;
  let x_259 : vec3<f32> = vs_TEXCOORD2;
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257, x_257, x_257) * x_259) + vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat4;
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat63 = dot(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_271);
  let x_273 : f32 = u_xlat63;
  let x_275 : vec4<f32> = u_xlat4;
  let x_277 : vec3<f32> = (vec3<f32>(x_273, x_273, x_273) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : f32 = vs_TEXCOORD1.y;
  let x_283 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat63 = (x_281 * x_283);
  let x_286 : f32 = x_44.unity_MatrixV[0i].z;
  let x_288 : f32 = vs_TEXCOORD1.x;
  let x_290 : f32 = u_xlat63;
  u_xlat63 = ((x_286 * x_288) + x_290);
  let x_293 : f32 = x_44.unity_MatrixV[2i].z;
  let x_295 : f32 = vs_TEXCOORD1.z;
  let x_297 : f32 = u_xlat63;
  u_xlat63 = ((x_293 * x_295) + x_297);
  let x_299 : f32 = u_xlat63;
  let x_302 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat63 = (x_299 + x_302);
  let x_304 : f32 = u_xlat63;
  let x_308 : f32 = x_44.x_ProjectionParams.y;
  u_xlat63 = (-(x_304) + -(x_308));
  let x_311 : f32 = u_xlat63;
  u_xlat63 = max(x_311, 0.0f);
  let x_313 : f32 = u_xlat63;
  let x_315 : f32 = x_44.unity_FogParams.x;
  u_xlat63 = (x_313 * x_315);
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
  u_xlat43.x = (x_366 * x_368);
  let x_372 : f32 = u_xlat4.x;
  let x_374 : f32 = u_xlat4.x;
  let x_377 : f32 = u_xlat43.x;
  u_xlat43.x = ((x_372 * x_374) + -(x_377));
  let x_383 : vec4<f32> = x_321.unity_SHC;
  let x_385 : vec2<f32> = u_xlat43;
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
  u_xlat43 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_403.x, x_403.y));
  let x_408 : vec2<f32> = u_xlat43;
  let x_409 : vec4<f32> = hlslcc_FragCoord;
  let x_411 : vec2<f32> = (x_408 * vec2<f32>(x_409.x, x_409.y));
  let x_412 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
  let x_415 : f32 = u_xlat6.y;
  let x_418 : f32 = x_44.x_ScaleBiasRt.x;
  let x_421 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat43.x = ((x_415 * x_418) + x_421);
  let x_425 : f32 = u_xlat43.x;
  u_xlat6.z = (-(x_425) + 1.0f);
  let x_430 : f32 = u_xlat1.x;
  u_xlat43.x = ((-(x_430) * 0.959999979f) + 0.959999979f);
  let x_438 : f32 = u_xlat1.y;
  let x_440 : f32 = x_69.x_Smoothness;
  let x_443 : f32 = u_xlat43.x;
  u_xlat64 = ((x_438 * x_440) + -(x_443));
  let x_447 : vec2<f32> = u_xlat43;
  let x_449 : vec4<f32> = u_xlat2;
  u_xlat23 = (vec3<f32>(x_447.x, x_447.x, x_447.x) * vec3<f32>(x_449.y, x_449.z, x_449.w));
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
  u_xlat22.x = (x_483 * x_485);
  let x_489 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_489, 0.0078125f);
  let x_494 : f32 = u_xlat22.x;
  let x_496 : f32 = u_xlat22.x;
  u_xlat43.x = (x_494 * x_496);
  let x_499 : f32 = u_xlat64;
  u_xlat64 = (x_499 + 1.0f);
  let x_501 : f32 = u_xlat64;
  u_xlat64 = clamp(x_501, 0.0f, 1.0f);
  let x_505 : f32 = u_xlat22.x;
  u_xlat67 = ((x_505 * 4.0f) + 2.0f);
  let x_515 : vec4<f32> = u_xlat6;
  let x_518 : f32 = x_44.x_GlobalMipBias.x;
  let x_519 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_515.x, x_515.z), x_518);
  u_xlat68 = x_519.x;
  let x_521 : f32 = u_xlat68;
  u_xlat6.x = (x_521 + -1.0f);
  let x_526 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_528 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_526 * x_528) + 1.0f);
  let x_533 : f32 = u_xlat3.x;
  let x_534 : f32 = u_xlat68;
  u_xlat3.x = min(x_533, x_534);
  let x_544 : f32 = x_542.x_MainLightShadowParams.y;
  u_xlatb68 = (0.0f < x_544);
  let x_546 : bool = u_xlatb68;
  if (x_546) {
    let x_550 : f32 = x_542.x_MainLightShadowParams.y;
    u_xlatb68 = (x_550 == 1.0f);
    let x_552 : bool = u_xlatb68;
    if (x_552) {
      let x_556 : vec4<f32> = vs_TEXCOORD6;
      let x_559 : vec4<f32> = x_542.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_556.x, x_556.y, x_556.x, x_556.y) + x_559);
      let x_562 : vec4<f32> = u_xlat7;
      let x_563 : vec2<f32> = vec2<f32>(x_562.x, x_562.y);
      let x_565 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_563.x, x_563.y, x_565);
      let x_578 : vec3<f32> = txVec0;
      let x_580 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_578.xy, x_578.z);
      u_xlat8.x = x_580;
      let x_583 : vec4<f32> = u_xlat7;
      let x_584 : vec2<f32> = vec2<f32>(x_583.z, x_583.w);
      let x_586 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_584.x, x_584.y, x_586);
      let x_593 : vec3<f32> = txVec1;
      let x_595 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_593.xy, x_593.z);
      u_xlat8.y = x_595;
      let x_597 : vec4<f32> = vs_TEXCOORD6;
      let x_600 : vec4<f32> = x_542.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_597.x, x_597.y, x_597.x, x_597.y) + x_600);
      let x_603 : vec4<f32> = u_xlat7;
      let x_604 : vec2<f32> = vec2<f32>(x_603.x, x_603.y);
      let x_606 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_604.x, x_604.y, x_606);
      let x_613 : vec3<f32> = txVec2;
      let x_615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_613.xy, x_613.z);
      u_xlat8.z = x_615;
      let x_618 : vec4<f32> = u_xlat7;
      let x_619 : vec2<f32> = vec2<f32>(x_618.z, x_618.w);
      let x_621 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_619.x, x_619.y, x_621);
      let x_628 : vec3<f32> = txVec3;
      let x_630 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_628.xy, x_628.z);
      u_xlat8.w = x_630;
      let x_632 : vec4<f32> = u_xlat8;
      u_xlat68 = dot(x_632, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_639 : f32 = x_542.x_MainLightShadowParams.y;
      u_xlatb27 = (x_639 == 2.0f);
      let x_641 : bool = u_xlatb27;
      if (x_641) {
        let x_645 : vec4<f32> = vs_TEXCOORD6;
        let x_648 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_653 : vec2<f32> = ((vec2<f32>(x_645.x, x_645.y) * vec2<f32>(x_648.z, x_648.w)) + vec2<f32>(0.5f, 0.5f));
        let x_654 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_653.x, x_653.y, x_654.z);
        let x_656 : vec3<f32> = u_xlat27;
        let x_658 : vec2<f32> = floor(vec2<f32>(x_656.x, x_656.y));
        let x_659 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_658.x, x_658.y, x_659.z);
        let x_661 : vec4<f32> = vs_TEXCOORD6;
        let x_664 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_667 : vec3<f32> = u_xlat27;
        let x_670 : vec2<f32> = ((vec2<f32>(x_661.x, x_661.y) * vec2<f32>(x_664.z, x_664.w)) + -(vec2<f32>(x_667.x, x_667.y)));
        let x_671 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
        let x_673 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_673.x, x_673.x, x_673.y, x_673.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_678 : vec4<f32> = u_xlat8;
        let x_680 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_678.x, x_678.x, x_678.z, x_678.z) * vec4<f32>(x_680.x, x_680.x, x_680.z, x_680.z));
        let x_684 : vec4<f32> = u_xlat9;
        u_xlat49 = (vec2<f32>(x_684.y, x_684.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_689 : vec4<f32> = u_xlat9;
        let x_692 : vec4<f32> = u_xlat7;
        let x_695 : vec2<f32> = ((vec2<f32>(x_689.x, x_689.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_692.x, x_692.y)));
        let x_696 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_695.x, x_696.y, x_695.y, x_696.w);
        let x_698 : vec4<f32> = u_xlat7;
        let x_701 : vec2<f32> = (-(vec2<f32>(x_698.x, x_698.y)) + vec2<f32>(1.0f, 1.0f));
        let x_702 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_701.x, x_701.y, x_702.z, x_702.w);
        let x_705 : vec4<f32> = u_xlat7;
        u_xlat51 = min(vec2<f32>(x_705.x, x_705.y), vec2<f32>(0.0f, 0.0f));
        let x_709 : vec2<f32> = u_xlat51;
        let x_711 : vec2<f32> = u_xlat51;
        let x_713 : vec4<f32> = u_xlat9;
        u_xlat51 = ((-(x_709) * x_711) + vec2<f32>(x_713.x, x_713.y));
        let x_716 : vec4<f32> = u_xlat7;
        let x_718 : vec2<f32> = max(vec2<f32>(x_716.x, x_716.y), vec2<f32>(0.0f, 0.0f));
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_718.x, x_718.y, x_719.z, x_719.w);
        let x_721 : vec4<f32> = u_xlat7;
        let x_724 : vec4<f32> = u_xlat7;
        let x_727 : vec4<f32> = u_xlat8;
        let x_729 : vec2<f32> = ((-(vec2<f32>(x_721.x, x_721.y)) * vec2<f32>(x_724.x, x_724.y)) + vec2<f32>(x_727.y, x_727.w));
        let x_730 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_729.x, x_729.y, x_730.z, x_730.w);
        let x_732 : vec2<f32> = u_xlat51;
        u_xlat51 = (x_732 + vec2<f32>(1.0f, 1.0f));
        let x_734 : vec4<f32> = u_xlat7;
        let x_736 : vec2<f32> = (vec2<f32>(x_734.x, x_734.y) + vec2<f32>(1.0f, 1.0f));
        let x_737 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
        let x_740 : vec4<f32> = u_xlat8;
        let x_744 : vec2<f32> = (vec2<f32>(x_740.x, x_740.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_745 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
        let x_748 : vec4<f32> = u_xlat9;
        let x_750 : vec2<f32> = (vec2<f32>(x_748.x, x_748.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_751 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
        let x_753 : vec2<f32> = u_xlat51;
        let x_754 : vec2<f32> = (x_753 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_755 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_754.x, x_754.y, x_755.z, x_755.w);
        let x_758 : vec4<f32> = u_xlat7;
        let x_760 : vec2<f32> = (vec2<f32>(x_758.x, x_758.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_761 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_760.x, x_760.y, x_761.z, x_761.w);
        let x_763 : vec4<f32> = u_xlat8;
        let x_765 : vec2<f32> = (vec2<f32>(x_763.y, x_763.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_766 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
        let x_769 : f32 = u_xlat9.x;
        u_xlat10.z = x_769;
        let x_772 : f32 = u_xlat7.x;
        u_xlat10.w = x_772;
        let x_775 : f32 = u_xlat12.x;
        u_xlat11.z = x_775;
        let x_778 : f32 = u_xlat49.x;
        u_xlat11.w = x_778;
        let x_780 : vec4<f32> = u_xlat10;
        let x_782 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_780.z, x_780.w, x_780.x, x_780.z) + vec4<f32>(x_782.z, x_782.w, x_782.x, x_782.z));
        let x_786 : f32 = u_xlat10.y;
        u_xlat9.z = x_786;
        let x_789 : f32 = u_xlat7.y;
        u_xlat9.w = x_789;
        let x_792 : f32 = u_xlat11.y;
        u_xlat12.z = x_792;
        let x_795 : f32 = u_xlat49.y;
        u_xlat12.w = x_795;
        let x_797 : vec4<f32> = u_xlat9;
        let x_799 : vec4<f32> = u_xlat12;
        let x_801 : vec3<f32> = (vec3<f32>(x_797.z, x_797.y, x_797.w) + vec3<f32>(x_799.z, x_799.y, x_799.w));
        let x_802 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
        let x_804 : vec4<f32> = u_xlat11;
        let x_806 : vec4<f32> = u_xlat8;
        let x_808 : vec3<f32> = (vec3<f32>(x_804.x, x_804.z, x_804.w) / vec3<f32>(x_806.z, x_806.w, x_806.y));
        let x_809 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
        let x_811 : vec4<f32> = u_xlat9;
        let x_817 : vec3<f32> = (vec3<f32>(x_811.x, x_811.y, x_811.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_818 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
        let x_820 : vec4<f32> = u_xlat12;
        let x_822 : vec4<f32> = u_xlat7;
        let x_824 : vec3<f32> = (vec3<f32>(x_820.z, x_820.y, x_820.w) / vec3<f32>(x_822.x, x_822.y, x_822.z));
        let x_825 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
        let x_827 : vec4<f32> = u_xlat10;
        let x_829 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_830 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
        let x_832 : vec4<f32> = u_xlat9;
        let x_835 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_837 : vec3<f32> = (vec3<f32>(x_832.y, x_832.x, x_832.z) * vec3<f32>(x_835.x, x_835.x, x_835.x));
        let x_838 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
        let x_840 : vec4<f32> = u_xlat10;
        let x_843 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_845 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) * vec3<f32>(x_843.y, x_843.y, x_843.y));
        let x_846 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
        let x_849 : f32 = u_xlat10.x;
        u_xlat9.w = x_849;
        let x_851 : vec3<f32> = u_xlat27;
        let x_854 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_857 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_851.x, x_851.y, x_851.x, x_851.y) * vec4<f32>(x_854.x, x_854.y, x_854.x, x_854.y)) + vec4<f32>(x_857.y, x_857.w, x_857.x, x_857.w));
        let x_860 : vec3<f32> = u_xlat27;
        let x_863 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_866 : vec4<f32> = u_xlat9;
        let x_868 : vec2<f32> = ((vec2<f32>(x_860.x, x_860.y) * vec2<f32>(x_863.x, x_863.y)) + vec2<f32>(x_866.z, x_866.w));
        let x_869 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_868.x, x_868.y, x_869.z, x_869.w);
        let x_872 : f32 = u_xlat9.y;
        u_xlat10.w = x_872;
        let x_874 : vec4<f32> = u_xlat10;
        let x_875 : vec2<f32> = vec2<f32>(x_874.y, x_874.z);
        let x_876 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_876.x, x_875.x, x_876.z, x_875.y);
        let x_879 : vec3<f32> = u_xlat27;
        let x_882 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_885 : vec4<f32> = u_xlat9;
        u_xlat13 = ((vec4<f32>(x_879.x, x_879.y, x_879.x, x_879.y) * vec4<f32>(x_882.x, x_882.y, x_882.x, x_882.y)) + vec4<f32>(x_885.x, x_885.y, x_885.z, x_885.y));
        let x_888 : vec3<f32> = u_xlat27;
        let x_891 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_894 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_888.x, x_888.y, x_888.x, x_888.y) * vec4<f32>(x_891.x, x_891.y, x_891.x, x_891.y)) + vec4<f32>(x_894.w, x_894.y, x_894.w, x_894.z));
        let x_897 : vec3<f32> = u_xlat27;
        let x_900 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_903 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_897.x, x_897.y, x_897.x, x_897.y) * vec4<f32>(x_900.x, x_900.y, x_900.x, x_900.y)) + vec4<f32>(x_903.x, x_903.w, x_903.z, x_903.w));
        let x_907 : vec4<f32> = u_xlat7;
        let x_909 : vec4<f32> = u_xlat8;
        u_xlat14 = (vec4<f32>(x_907.x, x_907.x, x_907.x, x_907.y) * vec4<f32>(x_909.z, x_909.w, x_909.y, x_909.z));
        let x_913 : vec4<f32> = u_xlat7;
        let x_915 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_913.y, x_913.y, x_913.z, x_913.z) * x_915);
        let x_918 : f32 = u_xlat7.z;
        let x_920 : f32 = u_xlat8.y;
        u_xlat27.x = (x_918 * x_920);
        let x_924 : vec4<f32> = u_xlat11;
        let x_925 : vec2<f32> = vec2<f32>(x_924.x, x_924.y);
        let x_927 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_935 : vec3<f32> = txVec4;
        let x_937 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_935.xy, x_935.z);
        u_xlat48 = x_937;
        let x_939 : vec4<f32> = u_xlat11;
        let x_940 : vec2<f32> = vec2<f32>(x_939.z, x_939.w);
        let x_942 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_940.x, x_940.y, x_942);
        let x_950 : vec3<f32> = txVec5;
        let x_952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_950.xy, x_950.z);
        u_xlat69 = x_952;
        let x_953 : f32 = u_xlat69;
        let x_955 : f32 = u_xlat14.y;
        u_xlat69 = (x_953 * x_955);
        let x_958 : f32 = u_xlat14.x;
        let x_959 : f32 = u_xlat48;
        let x_961 : f32 = u_xlat69;
        u_xlat48 = ((x_958 * x_959) + x_961);
        let x_964 : vec4<f32> = u_xlat12;
        let x_965 : vec2<f32> = vec2<f32>(x_964.x, x_964.y);
        let x_967 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_965.x, x_965.y, x_967);
        let x_974 : vec3<f32> = txVec6;
        let x_976 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_974.xy, x_974.z);
        u_xlat69 = x_976;
        let x_978 : f32 = u_xlat14.z;
        let x_979 : f32 = u_xlat69;
        let x_981 : f32 = u_xlat48;
        u_xlat48 = ((x_978 * x_979) + x_981);
        let x_984 : vec4<f32> = u_xlat10;
        let x_985 : vec2<f32> = vec2<f32>(x_984.x, x_984.y);
        let x_987 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_985.x, x_985.y, x_987);
        let x_994 : vec3<f32> = txVec7;
        let x_996 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_994.xy, x_994.z);
        u_xlat69 = x_996;
        let x_998 : f32 = u_xlat14.w;
        let x_999 : f32 = u_xlat69;
        let x_1001 : f32 = u_xlat48;
        u_xlat48 = ((x_998 * x_999) + x_1001);
        let x_1004 : vec4<f32> = u_xlat13;
        let x_1005 : vec2<f32> = vec2<f32>(x_1004.x, x_1004.y);
        let x_1007 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_1005.x, x_1005.y, x_1007);
        let x_1014 : vec3<f32> = txVec8;
        let x_1016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1014.xy, x_1014.z);
        u_xlat69 = x_1016;
        let x_1018 : f32 = u_xlat15.x;
        let x_1019 : f32 = u_xlat69;
        let x_1021 : f32 = u_xlat48;
        u_xlat48 = ((x_1018 * x_1019) + x_1021);
        let x_1024 : vec4<f32> = u_xlat13;
        let x_1025 : vec2<f32> = vec2<f32>(x_1024.z, x_1024.w);
        let x_1027 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_1025.x, x_1025.y, x_1027);
        let x_1034 : vec3<f32> = txVec9;
        let x_1036 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1034.xy, x_1034.z);
        u_xlat69 = x_1036;
        let x_1038 : f32 = u_xlat15.y;
        let x_1039 : f32 = u_xlat69;
        let x_1041 : f32 = u_xlat48;
        u_xlat48 = ((x_1038 * x_1039) + x_1041);
        let x_1044 : vec4<f32> = u_xlat10;
        let x_1045 : vec2<f32> = vec2<f32>(x_1044.z, x_1044.w);
        let x_1047 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_1045.x, x_1045.y, x_1047);
        let x_1054 : vec3<f32> = txVec10;
        let x_1056 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1054.xy, x_1054.z);
        u_xlat69 = x_1056;
        let x_1058 : f32 = u_xlat15.z;
        let x_1059 : f32 = u_xlat69;
        let x_1061 : f32 = u_xlat48;
        u_xlat48 = ((x_1058 * x_1059) + x_1061);
        let x_1064 : vec4<f32> = u_xlat9;
        let x_1065 : vec2<f32> = vec2<f32>(x_1064.x, x_1064.y);
        let x_1067 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_1065.x, x_1065.y, x_1067);
        let x_1074 : vec3<f32> = txVec11;
        let x_1076 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1074.xy, x_1074.z);
        u_xlat69 = x_1076;
        let x_1078 : f32 = u_xlat15.w;
        let x_1079 : f32 = u_xlat69;
        let x_1081 : f32 = u_xlat48;
        u_xlat48 = ((x_1078 * x_1079) + x_1081);
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1085 : vec2<f32> = vec2<f32>(x_1084.z, x_1084.w);
        let x_1087 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1085.x, x_1085.y, x_1087);
        let x_1094 : vec3<f32> = txVec12;
        let x_1096 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1094.xy, x_1094.z);
        u_xlat69 = x_1096;
        let x_1098 : f32 = u_xlat27.x;
        let x_1099 : f32 = u_xlat69;
        let x_1101 : f32 = u_xlat48;
        u_xlat68 = ((x_1098 * x_1099) + x_1101);
      } else {
        let x_1104 : vec4<f32> = vs_TEXCOORD6;
        let x_1107 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1110 : vec2<f32> = ((vec2<f32>(x_1104.x, x_1104.y) * vec2<f32>(x_1107.z, x_1107.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1111 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1110.x, x_1110.y, x_1111.z);
        let x_1113 : vec3<f32> = u_xlat27;
        let x_1115 : vec2<f32> = floor(vec2<f32>(x_1113.x, x_1113.y));
        let x_1116 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1115.x, x_1115.y, x_1116.z);
        let x_1118 : vec4<f32> = vs_TEXCOORD6;
        let x_1121 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1124 : vec3<f32> = u_xlat27;
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(x_1121.z, x_1121.w)) + -(vec2<f32>(x_1124.x, x_1124.y)));
        let x_1128 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
        let x_1130 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1130.x, x_1130.x, x_1130.y, x_1130.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1133 : vec4<f32> = u_xlat8;
        let x_1135 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1133.x, x_1133.x, x_1133.z, x_1133.z) * vec4<f32>(x_1135.x, x_1135.x, x_1135.z, x_1135.z));
        let x_1138 : vec4<f32> = u_xlat9;
        let x_1142 : vec2<f32> = (vec2<f32>(x_1138.y, x_1138.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1143 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1143.x, x_1142.x, x_1143.z, x_1142.y);
        let x_1145 : vec4<f32> = u_xlat9;
        let x_1148 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1145.x, x_1145.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1148.x, x_1148.y)));
        let x_1152 : vec4<f32> = u_xlat7;
        let x_1155 : vec2<f32> = (-(vec2<f32>(x_1152.x, x_1152.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1155.x, x_1156.y, x_1155.y, x_1156.w);
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1160 : vec2<f32> = min(vec2<f32>(x_1158.x, x_1158.y), vec2<f32>(0.0f, 0.0f));
        let x_1161 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat9;
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1169 : vec4<f32> = u_xlat8;
        let x_1171 : vec2<f32> = ((-(vec2<f32>(x_1163.x, x_1163.y)) * vec2<f32>(x_1166.x, x_1166.y)) + vec2<f32>(x_1169.x, x_1169.z));
        let x_1172 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1172.w);
        let x_1174 : vec4<f32> = u_xlat7;
        let x_1176 : vec2<f32> = max(vec2<f32>(x_1174.x, x_1174.y), vec2<f32>(0.0f, 0.0f));
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1179 : vec4<f32> = u_xlat9;
        let x_1182 : vec4<f32> = u_xlat9;
        let x_1185 : vec4<f32> = u_xlat8;
        let x_1187 : vec2<f32> = ((-(vec2<f32>(x_1179.x, x_1179.y)) * vec2<f32>(x_1182.x, x_1182.y)) + vec2<f32>(x_1185.y, x_1185.w));
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1188.x, x_1187.x, x_1188.z, x_1187.y);
        let x_1190 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1190 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1194 : f32 = u_xlat8.y;
        u_xlat9.z = (x_1194 * 0.081632003f);
        let x_1198 : vec2<f32> = u_xlat49;
        let x_1201 : vec2<f32> = (vec2<f32>(x_1198.y, x_1198.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1202 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1201.x, x_1201.y, x_1202.z, x_1202.w);
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_1204.x, x_1204.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1208 : f32 = u_xlat8.w;
        u_xlat11.z = (x_1208 * 0.081632003f);
        let x_1212 : f32 = u_xlat11.y;
        u_xlat9.x = x_1212;
        let x_1214 : vec4<f32> = u_xlat7;
        let x_1221 : vec2<f32> = ((vec2<f32>(x_1214.x, x_1214.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1222 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1222.x, x_1221.x, x_1222.z, x_1221.y);
        let x_1224 : vec4<f32> = u_xlat7;
        let x_1228 : vec2<f32> = ((vec2<f32>(x_1224.x, x_1224.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1229 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1228.x, x_1229.y, x_1228.y, x_1229.w);
        let x_1232 : f32 = u_xlat49.x;
        u_xlat8.y = x_1232;
        let x_1235 : f32 = u_xlat10.y;
        u_xlat8.w = x_1235;
        let x_1237 : vec4<f32> = u_xlat8;
        let x_1238 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1237 + x_1238);
        let x_1240 : vec4<f32> = u_xlat7;
        let x_1243 : vec2<f32> = ((vec2<f32>(x_1240.y, x_1240.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1244 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1244.x, x_1243.x, x_1244.z, x_1243.y);
        let x_1246 : vec4<f32> = u_xlat7;
        let x_1249 : vec2<f32> = ((vec2<f32>(x_1246.y, x_1246.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1250 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1249.x, x_1250.y, x_1249.y, x_1250.w);
        let x_1253 : f32 = u_xlat49.y;
        u_xlat10.y = x_1253;
        let x_1255 : vec4<f32> = u_xlat10;
        let x_1256 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1255 + x_1256);
        let x_1258 : vec4<f32> = u_xlat8;
        let x_1259 : vec4<f32> = u_xlat9;
        u_xlat8 = (x_1258 / x_1259);
        let x_1261 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1261 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1267 : vec4<f32> = u_xlat10;
        let x_1268 : vec4<f32> = u_xlat7;
        u_xlat10 = (x_1267 / x_1268);
        let x_1270 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1270 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1272 : vec4<f32> = u_xlat8;
        let x_1275 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1272.w, x_1272.x, x_1272.y, x_1272.z) * vec4<f32>(x_1275.x, x_1275.x, x_1275.x, x_1275.x));
        let x_1278 : vec4<f32> = u_xlat10;
        let x_1281 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1278.x, x_1278.w, x_1278.y, x_1278.z) * vec4<f32>(x_1281.y, x_1281.y, x_1281.y, x_1281.y));
        let x_1284 : vec4<f32> = u_xlat8;
        let x_1285 : vec3<f32> = vec3<f32>(x_1284.y, x_1284.z, x_1284.w);
        let x_1286 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1285.x, x_1286.y, x_1285.y, x_1285.z);
        let x_1289 : f32 = u_xlat10.x;
        u_xlat11.y = x_1289;
        let x_1291 : vec3<f32> = u_xlat27;
        let x_1294 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1297 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1291.x, x_1291.y, x_1291.x, x_1291.y) * vec4<f32>(x_1294.x, x_1294.y, x_1294.x, x_1294.y)) + vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1297.y));
        let x_1300 : vec3<f32> = u_xlat27;
        let x_1303 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat11;
        let x_1308 : vec2<f32> = ((vec2<f32>(x_1300.x, x_1300.y) * vec2<f32>(x_1303.x, x_1303.y)) + vec2<f32>(x_1306.w, x_1306.y));
        let x_1309 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1308.x, x_1308.y, x_1309.z, x_1309.w);
        let x_1312 : f32 = u_xlat11.y;
        u_xlat8.y = x_1312;
        let x_1315 : f32 = u_xlat10.z;
        u_xlat11.y = x_1315;
        let x_1317 : vec3<f32> = u_xlat27;
        let x_1320 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1323 : vec4<f32> = u_xlat11;
        u_xlat14 = ((vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y) * vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.y)) + vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1323.y));
        let x_1327 : vec3<f32> = u_xlat27;
        let x_1330 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1333 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1327.x, x_1327.y) * vec2<f32>(x_1330.x, x_1330.y)) + vec2<f32>(x_1333.w, x_1333.y));
        let x_1337 : f32 = u_xlat11.y;
        u_xlat8.z = x_1337;
        let x_1339 : vec3<f32> = u_xlat27;
        let x_1342 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1339.x, x_1339.y, x_1339.x, x_1339.y) * vec4<f32>(x_1342.x, x_1342.y, x_1342.x, x_1342.y)) + vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.z));
        let x_1349 : f32 = u_xlat10.w;
        u_xlat11.y = x_1349;
        let x_1352 : vec3<f32> = u_xlat27;
        let x_1355 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1358 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.y) * vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y)) + vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1358.y));
        let x_1362 : vec3<f32> = u_xlat27;
        let x_1365 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1368 : vec4<f32> = u_xlat11;
        u_xlat29 = ((vec2<f32>(x_1362.x, x_1362.y) * vec2<f32>(x_1365.x, x_1365.y)) + vec2<f32>(x_1368.w, x_1368.y));
        let x_1372 : f32 = u_xlat11.y;
        u_xlat8.w = x_1372;
        let x_1375 : vec3<f32> = u_xlat27;
        let x_1378 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1381 : vec4<f32> = u_xlat8;
        u_xlat17 = ((vec2<f32>(x_1375.x, x_1375.y) * vec2<f32>(x_1378.x, x_1378.y)) + vec2<f32>(x_1381.x, x_1381.w));
        let x_1384 : vec4<f32> = u_xlat11;
        let x_1385 : vec3<f32> = vec3<f32>(x_1384.x, x_1384.z, x_1384.w);
        let x_1386 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1385.x, x_1386.y, x_1385.y, x_1385.z);
        let x_1388 : vec3<f32> = u_xlat27;
        let x_1391 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1394 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1388.x, x_1388.y, x_1388.x, x_1388.y) * vec4<f32>(x_1391.x, x_1391.y, x_1391.x, x_1391.y)) + vec4<f32>(x_1394.x, x_1394.y, x_1394.z, x_1394.y));
        let x_1398 : vec3<f32> = u_xlat27;
        let x_1401 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1404 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1398.x, x_1398.y) * vec2<f32>(x_1401.x, x_1401.y)) + vec2<f32>(x_1404.w, x_1404.y));
        let x_1408 : f32 = u_xlat8.x;
        u_xlat10.x = x_1408;
        let x_1410 : vec3<f32> = u_xlat27;
        let x_1413 : vec4<f32> = x_542.x_MainLightShadowmapSize;
        let x_1416 : vec4<f32> = u_xlat10;
        let x_1418 : vec2<f32> = ((vec2<f32>(x_1410.x, x_1410.y) * vec2<f32>(x_1413.x, x_1413.y)) + vec2<f32>(x_1416.x, x_1416.y));
        let x_1419 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1418.x, x_1418.y, x_1419.z);
        let x_1422 : vec4<f32> = u_xlat7;
        let x_1424 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1422.x, x_1422.x, x_1422.x, x_1422.x) * x_1424);
        let x_1427 : vec4<f32> = u_xlat7;
        let x_1429 : vec4<f32> = u_xlat9;
        u_xlat19 = (vec4<f32>(x_1427.y, x_1427.y, x_1427.y, x_1427.y) * x_1429);
        let x_1432 : vec4<f32> = u_xlat7;
        let x_1434 : vec4<f32> = u_xlat9;
        u_xlat20 = (vec4<f32>(x_1432.z, x_1432.z, x_1432.z, x_1432.z) * x_1434);
        let x_1436 : vec4<f32> = u_xlat7;
        let x_1438 : vec4<f32> = u_xlat9;
        u_xlat7 = (vec4<f32>(x_1436.w, x_1436.w, x_1436.w, x_1436.w) * x_1438);
        let x_1441 : vec4<f32> = u_xlat12;
        let x_1442 : vec2<f32> = vec2<f32>(x_1441.x, x_1441.y);
        let x_1444 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1442.x, x_1442.y, x_1444);
        let x_1451 : vec3<f32> = txVec13;
        let x_1453 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1451.xy, x_1451.z);
        u_xlat69 = x_1453;
        let x_1455 : vec4<f32> = u_xlat12;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.z, x_1455.w);
        let x_1458 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec14;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1465.xy, x_1465.z);
        u_xlat8.x = x_1467;
        let x_1470 : f32 = u_xlat8.x;
        let x_1472 : f32 = u_xlat18.y;
        u_xlat8.x = (x_1470 * x_1472);
        let x_1476 : f32 = u_xlat18.x;
        let x_1477 : f32 = u_xlat69;
        let x_1480 : f32 = u_xlat8.x;
        u_xlat69 = ((x_1476 * x_1477) + x_1480);
        let x_1483 : vec4<f32> = u_xlat13;
        let x_1484 : vec2<f32> = vec2<f32>(x_1483.x, x_1483.y);
        let x_1486 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1484.x, x_1484.y, x_1486);
        let x_1493 : vec3<f32> = txVec15;
        let x_1495 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1493.xy, x_1493.z);
        u_xlat8.x = x_1495;
        let x_1498 : f32 = u_xlat18.z;
        let x_1500 : f32 = u_xlat8.x;
        let x_1502 : f32 = u_xlat69;
        u_xlat69 = ((x_1498 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat15;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec16;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1515.xy, x_1515.z);
        u_xlat8.x = x_1517;
        let x_1520 : f32 = u_xlat18.w;
        let x_1522 : f32 = u_xlat8.x;
        let x_1524 : f32 = u_xlat69;
        u_xlat69 = ((x_1520 * x_1522) + x_1524);
        let x_1527 : vec4<f32> = u_xlat14;
        let x_1528 : vec2<f32> = vec2<f32>(x_1527.x, x_1527.y);
        let x_1530 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1528.x, x_1528.y, x_1530);
        let x_1537 : vec3<f32> = txVec17;
        let x_1539 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1537.xy, x_1537.z);
        u_xlat8.x = x_1539;
        let x_1542 : f32 = u_xlat19.x;
        let x_1544 : f32 = u_xlat8.x;
        let x_1546 : f32 = u_xlat69;
        u_xlat69 = ((x_1542 * x_1544) + x_1546);
        let x_1549 : vec4<f32> = u_xlat14;
        let x_1550 : vec2<f32> = vec2<f32>(x_1549.z, x_1549.w);
        let x_1552 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1559 : vec3<f32> = txVec18;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1559.xy, x_1559.z);
        u_xlat8.x = x_1561;
        let x_1564 : f32 = u_xlat19.y;
        let x_1566 : f32 = u_xlat8.x;
        let x_1568 : f32 = u_xlat69;
        u_xlat69 = ((x_1564 * x_1566) + x_1568);
        let x_1571 : vec2<f32> = u_xlat55;
        let x_1573 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec19;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1580.xy, x_1580.z);
        u_xlat8.x = x_1582;
        let x_1585 : f32 = u_xlat19.z;
        let x_1587 : f32 = u_xlat8.x;
        let x_1589 : f32 = u_xlat69;
        u_xlat69 = ((x_1585 * x_1587) + x_1589);
        let x_1592 : vec4<f32> = u_xlat15;
        let x_1593 : vec2<f32> = vec2<f32>(x_1592.z, x_1592.w);
        let x_1595 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec20;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1602.xy, x_1602.z);
        u_xlat8.x = x_1604;
        let x_1607 : f32 = u_xlat19.w;
        let x_1609 : f32 = u_xlat8.x;
        let x_1611 : f32 = u_xlat69;
        u_xlat69 = ((x_1607 * x_1609) + x_1611);
        let x_1614 : vec4<f32> = u_xlat16;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.x, x_1614.y);
        let x_1617 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec21;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1624.xy, x_1624.z);
        u_xlat8.x = x_1626;
        let x_1629 : f32 = u_xlat20.x;
        let x_1631 : f32 = u_xlat8.x;
        let x_1633 : f32 = u_xlat69;
        u_xlat69 = ((x_1629 * x_1631) + x_1633);
        let x_1636 : vec4<f32> = u_xlat16;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.z, x_1636.w);
        let x_1639 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec22;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1646.xy, x_1646.z);
        u_xlat8.x = x_1648;
        let x_1651 : f32 = u_xlat20.y;
        let x_1653 : f32 = u_xlat8.x;
        let x_1655 : f32 = u_xlat69;
        u_xlat69 = ((x_1651 * x_1653) + x_1655);
        let x_1658 : vec2<f32> = u_xlat29;
        let x_1660 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1658.x, x_1658.y, x_1660);
        let x_1667 : vec3<f32> = txVec23;
        let x_1669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1667.xy, x_1667.z);
        u_xlat8.x = x_1669;
        let x_1672 : f32 = u_xlat20.z;
        let x_1674 : f32 = u_xlat8.x;
        let x_1676 : f32 = u_xlat69;
        u_xlat69 = ((x_1672 * x_1674) + x_1676);
        let x_1679 : vec2<f32> = u_xlat17;
        let x_1681 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1679.x, x_1679.y, x_1681);
        let x_1688 : vec3<f32> = txVec24;
        let x_1690 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1688.xy, x_1688.z);
        u_xlat8.x = x_1690;
        let x_1693 : f32 = u_xlat20.w;
        let x_1695 : f32 = u_xlat8.x;
        let x_1697 : f32 = u_xlat69;
        u_xlat69 = ((x_1693 * x_1695) + x_1697);
        let x_1700 : vec4<f32> = u_xlat11;
        let x_1701 : vec2<f32> = vec2<f32>(x_1700.x, x_1700.y);
        let x_1703 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1701.x, x_1701.y, x_1703);
        let x_1710 : vec3<f32> = txVec25;
        let x_1712 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1710.xy, x_1710.z);
        u_xlat8.x = x_1712;
        let x_1715 : f32 = u_xlat7.x;
        let x_1717 : f32 = u_xlat8.x;
        let x_1719 : f32 = u_xlat69;
        u_xlat69 = ((x_1715 * x_1717) + x_1719);
        let x_1722 : vec4<f32> = u_xlat11;
        let x_1723 : vec2<f32> = vec2<f32>(x_1722.z, x_1722.w);
        let x_1725 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec26;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1732.xy, x_1732.z);
        u_xlat7.x = x_1734;
        let x_1737 : f32 = u_xlat7.y;
        let x_1739 : f32 = u_xlat7.x;
        let x_1741 : f32 = u_xlat69;
        u_xlat69 = ((x_1737 * x_1739) + x_1741);
        let x_1744 : vec2<f32> = u_xlat52;
        let x_1746 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1744.x, x_1744.y, x_1746);
        let x_1753 : vec3<f32> = txVec27;
        let x_1755 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1753.xy, x_1753.z);
        u_xlat7.x = x_1755;
        let x_1758 : f32 = u_xlat7.z;
        let x_1760 : f32 = u_xlat7.x;
        let x_1762 : f32 = u_xlat69;
        u_xlat69 = ((x_1758 * x_1760) + x_1762);
        let x_1765 : vec3<f32> = u_xlat27;
        let x_1766 : vec2<f32> = vec2<f32>(x_1765.x, x_1765.y);
        let x_1768 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1766.x, x_1766.y, x_1768);
        let x_1775 : vec3<f32> = txVec28;
        let x_1777 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1775.xy, x_1775.z);
        u_xlat27.x = x_1777;
        let x_1780 : f32 = u_xlat7.w;
        let x_1782 : f32 = u_xlat27.x;
        let x_1784 : f32 = u_xlat69;
        u_xlat68 = ((x_1780 * x_1782) + x_1784);
      }
    }
  } else {
    let x_1788 : vec4<f32> = vs_TEXCOORD6;
    let x_1789 : vec2<f32> = vec2<f32>(x_1788.x, x_1788.y);
    let x_1791 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1789.x, x_1789.y, x_1791);
    let x_1798 : vec3<f32> = txVec29;
    let x_1800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1798.xy, x_1798.z);
    u_xlat68 = x_1800;
  }
  let x_1802 : f32 = x_542.x_MainLightShadowParams.x;
  u_xlat27.x = (-(x_1802) + 1.0f);
  let x_1806 : f32 = u_xlat68;
  let x_1808 : f32 = x_542.x_MainLightShadowParams.x;
  let x_1811 : f32 = u_xlat27.x;
  u_xlat68 = ((x_1806 * x_1808) + x_1811);
  let x_1814 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (0.0f >= x_1814);
  let x_1818 : f32 = vs_TEXCOORD6.z;
  u_xlatb48 = (x_1818 >= 1.0f);
  let x_1820 : bool = u_xlatb48;
  let x_1821 : bool = u_xlatb27;
  u_xlatb27 = (x_1820 | x_1821);
  let x_1823 : bool = u_xlatb27;
  let x_1824 : f32 = u_xlat68;
  u_xlat68 = select(x_1824, 1.0f, x_1823);
  let x_1826 : vec3<f32> = vs_TEXCOORD1;
  let x_1828 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat27 = (x_1826 + -(x_1828));
  let x_1831 : vec3<f32> = u_xlat27;
  let x_1832 : vec3<f32> = u_xlat27;
  u_xlat27.x = dot(x_1831, x_1832);
  let x_1836 : f32 = u_xlat27.x;
  let x_1838 : f32 = x_542.x_MainLightShadowParams.z;
  let x_1841 : f32 = x_542.x_MainLightShadowParams.w;
  u_xlat27.x = ((x_1836 * x_1838) + x_1841);
  let x_1845 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_1845, 0.0f, 1.0f);
  let x_1848 : f32 = u_xlat68;
  u_xlat48 = (-(x_1848) + 1.0f);
  let x_1852 : f32 = u_xlat27.x;
  let x_1853 : f32 = u_xlat48;
  let x_1855 : f32 = u_xlat68;
  u_xlat68 = ((x_1852 * x_1853) + x_1855);
  let x_1857 : vec4<f32> = u_xlat6;
  let x_1860 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat27 = (vec3<f32>(x_1857.x, x_1857.x, x_1857.x) * vec3<f32>(x_1860.x, x_1860.y, x_1860.z));
  let x_1863 : vec3<f32> = u_xlat24;
  let x_1865 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_1863), vec3<f32>(x_1865.x, x_1865.y, x_1865.z));
  let x_1870 : f32 = u_xlat7.x;
  let x_1872 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1870 + x_1872);
  let x_1875 : vec4<f32> = u_xlat4;
  let x_1877 : vec4<f32> = u_xlat7;
  let x_1881 : vec3<f32> = u_xlat24;
  let x_1883 : vec3<f32> = ((vec3<f32>(x_1875.x, x_1875.y, x_1875.z) * -(vec3<f32>(x_1877.x, x_1877.x, x_1877.x))) + -(x_1881));
  let x_1884 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1883.x, x_1883.y, x_1883.z, x_1884.w);
  let x_1887 : vec4<f32> = u_xlat4;
  let x_1889 : vec3<f32> = u_xlat24;
  u_xlat70 = dot(vec3<f32>(x_1887.x, x_1887.y, x_1887.z), x_1889);
  let x_1891 : f32 = u_xlat70;
  u_xlat70 = clamp(x_1891, 0.0f, 1.0f);
  let x_1893 : f32 = u_xlat70;
  u_xlat70 = (-(x_1893) + 1.0f);
  let x_1896 : f32 = u_xlat70;
  let x_1897 : f32 = u_xlat70;
  u_xlat70 = (x_1896 * x_1897);
  let x_1899 : f32 = u_xlat70;
  let x_1900 : f32 = u_xlat70;
  u_xlat70 = (x_1899 * x_1900);
  let x_1903 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_1903) * 0.699999988f) + 1.700000048f);
  let x_1911 : f32 = u_xlat1.x;
  let x_1913 : f32 = u_xlat8.x;
  u_xlat1.x = (x_1911 * x_1913);
  let x_1917 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1917 * 6.0f);
  let x_1929 : vec4<f32> = u_xlat7;
  let x_1932 : f32 = u_xlat1.x;
  let x_1933 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1929.x, x_1929.y, x_1929.z), x_1932);
  u_xlat8 = x_1933;
  let x_1935 : f32 = u_xlat8.w;
  u_xlat1.x = (x_1935 + -1.0f);
  let x_1939 : f32 = x_321.unity_SpecCube0_HDR.w;
  let x_1941 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1939 * x_1941) + 1.0f);
  let x_1946 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1946, 0.0f);
  let x_1950 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_1950);
  let x_1954 : f32 = u_xlat1.x;
  let x_1956 : f32 = x_321.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_1954 * x_1956);
  let x_1960 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1960);
  let x_1964 : f32 = u_xlat1.x;
  let x_1966 : f32 = x_321.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_1964 * x_1966);
  let x_1969 : vec4<f32> = u_xlat8;
  let x_1971 : vec2<f32> = u_xlat1;
  let x_1973 : vec3<f32> = (vec3<f32>(x_1969.x, x_1969.y, x_1969.z) * vec3<f32>(x_1971.x, x_1971.x, x_1971.x));
  let x_1974 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1976 : vec3<f32> = u_xlat22;
  let x_1978 : vec3<f32> = u_xlat22;
  u_xlat1 = ((vec2<f32>(x_1976.x, x_1976.x) * vec2<f32>(x_1978.x, x_1978.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1984 : f32 = u_xlat1.y;
  u_xlat22.x = (1.0f / x_1984);
  let x_1987 : vec4<f32> = u_xlat0;
  let x_1990 : f32 = u_xlat64;
  let x_1992 : vec3<f32> = (-(vec3<f32>(x_1987.x, x_1987.y, x_1987.z)) + vec3<f32>(x_1990, x_1990, x_1990));
  let x_1993 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1992.x, x_1992.y, x_1992.z, x_1993.w);
  let x_1995 : f32 = u_xlat70;
  let x_1997 : vec4<f32> = u_xlat8;
  let x_2000 : vec4<f32> = u_xlat0;
  let x_2002 : vec3<f32> = ((vec3<f32>(x_1995, x_1995, x_1995) * vec3<f32>(x_1997.x, x_1997.y, x_1997.z)) + vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
  let x_2003 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2003.w);
  let x_2005 : vec3<f32> = u_xlat22;
  let x_2007 : vec4<f32> = u_xlat8;
  let x_2009 : vec3<f32> = (vec3<f32>(x_2005.x, x_2005.x, x_2005.x) * vec3<f32>(x_2007.x, x_2007.y, x_2007.z));
  let x_2010 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2009.x, x_2009.y, x_2009.z, x_2010.w);
  let x_2012 : vec4<f32> = u_xlat7;
  let x_2014 : vec4<f32> = u_xlat8;
  let x_2016 : vec3<f32> = (vec3<f32>(x_2012.x, x_2012.y, x_2012.z) * vec3<f32>(x_2014.x, x_2014.y, x_2014.z));
  let x_2017 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2016.x, x_2016.y, x_2016.z, x_2017.w);
  let x_2019 : vec3<f32> = u_xlat5;
  let x_2020 : vec3<f32> = u_xlat23;
  let x_2022 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_2019 * x_2020) + vec3<f32>(x_2022.x, x_2022.y, x_2022.z));
  let x_2025 : f32 = u_xlat68;
  let x_2028 : f32 = x_321.unity_LightData.z;
  u_xlat22.x = (x_2025 * x_2028);
  let x_2031 : vec4<f32> = u_xlat4;
  let x_2034 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat64 = dot(vec3<f32>(x_2031.x, x_2031.y, x_2031.z), vec3<f32>(x_2034.x, x_2034.y, x_2034.z));
  let x_2037 : f32 = u_xlat64;
  u_xlat64 = clamp(x_2037, 0.0f, 1.0f);
  let x_2039 : f32 = u_xlat64;
  let x_2041 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2039 * x_2041);
  let x_2044 : vec3<f32> = u_xlat22;
  let x_2046 : vec3<f32> = u_xlat27;
  u_xlat27 = (vec3<f32>(x_2044.x, x_2044.x, x_2044.x) * x_2046);
  let x_2048 : vec3<f32> = u_xlat24;
  let x_2050 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2052 : vec3<f32> = (x_2048 + vec3<f32>(x_2050.x, x_2050.y, x_2050.z));
  let x_2053 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2052.x, x_2052.y, x_2052.z, x_2053.w);
  let x_2055 : vec4<f32> = u_xlat7;
  let x_2057 : vec4<f32> = u_xlat7;
  u_xlat22.x = dot(vec3<f32>(x_2055.x, x_2055.y, x_2055.z), vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
  let x_2062 : f32 = u_xlat22.x;
  u_xlat22.x = max(x_2062, 1.17549435e-37f);
  let x_2067 : f32 = u_xlat22.x;
  u_xlat22.x = inverseSqrt(x_2067);
  let x_2070 : vec3<f32> = u_xlat22;
  let x_2072 : vec4<f32> = u_xlat7;
  let x_2074 : vec3<f32> = (vec3<f32>(x_2070.x, x_2070.x, x_2070.x) * vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
  let x_2075 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
  let x_2077 : vec4<f32> = u_xlat4;
  let x_2079 : vec4<f32> = u_xlat7;
  u_xlat22.x = dot(vec3<f32>(x_2077.x, x_2077.y, x_2077.z), vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
  let x_2084 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_2084, 0.0f, 1.0f);
  let x_2088 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2090 : vec4<f32> = u_xlat7;
  u_xlat22.z = dot(vec3<f32>(x_2088.x, x_2088.y, x_2088.z), vec3<f32>(x_2090.x, x_2090.y, x_2090.z));
  let x_2095 : f32 = u_xlat22.z;
  u_xlat22.z = clamp(x_2095, 0.0f, 1.0f);
  let x_2098 : vec3<f32> = u_xlat22;
  let x_2100 : vec3<f32> = u_xlat22;
  let x_2102 : vec2<f32> = (vec2<f32>(x_2098.x, x_2098.z) * vec2<f32>(x_2100.x, x_2100.z));
  let x_2103 : vec3<f32> = u_xlat22;
  u_xlat22 = vec3<f32>(x_2102.x, x_2103.y, x_2102.y);
  let x_2106 : f32 = u_xlat22.x;
  let x_2108 : f32 = u_xlat1.x;
  u_xlat22.x = ((x_2106 * x_2108) + 1.000010014f);
  let x_2114 : f32 = u_xlat22.x;
  let x_2116 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2114 * x_2116);
  let x_2120 : f32 = u_xlat22.z;
  u_xlat64 = max(x_2120, 0.100000001f);
  let x_2123 : f32 = u_xlat64;
  let x_2125 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2123 * x_2125);
  let x_2128 : f32 = u_xlat67;
  let x_2130 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2128 * x_2130);
  let x_2134 : f32 = u_xlat43.x;
  let x_2136 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2134 / x_2136);
  let x_2139 : vec4<f32> = u_xlat0;
  let x_2141 : vec3<f32> = u_xlat22;
  let x_2144 : vec3<f32> = u_xlat23;
  let x_2145 : vec3<f32> = ((vec3<f32>(x_2139.x, x_2139.y, x_2139.z) * vec3<f32>(x_2141.x, x_2141.x, x_2141.x)) + x_2144);
  let x_2146 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2145.x, x_2145.y, x_2145.z, x_2146.w);
  let x_2148 : vec3<f32> = u_xlat27;
  let x_2149 : vec4<f32> = u_xlat7;
  u_xlat27 = (x_2148 * vec3<f32>(x_2149.x, x_2149.y, x_2149.z));
  let x_2153 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2155 : f32 = x_321.unity_LightData.y;
  u_xlat22.x = min(x_2153, x_2155);
  let x_2161 : f32 = u_xlat22.x;
  u_xlatu22 = bitcast<u32>(i32(x_2161));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2173 : u32 = u_xlatu_loop_1;
    let x_2174 : u32 = u_xlatu22;
    if ((x_2173 < x_2174)) {
    } else {
      break;
    }
    let x_2177 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2177 >> 2u);
    let x_2181 : u32 = u_xlatu_loop_1;
    u_xlati70 = bitcast<i32>((x_2181 & 3u));
    let x_2184 : u32 = u_xlatu68;
    let x_2187 : vec4<f32> = x_321.unity_LightIndices[bitcast<i32>(x_2184)];
    let x_2197 : i32 = u_xlati70;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2202 : vec4<u32> = indexable[x_2197];
    u_xlat68 = dot(x_2187, bitcast<vec4<f32>>(x_2202));
    let x_2206 : f32 = u_xlat68;
    u_xlati68 = i32(x_2206);
    let x_2208 : vec3<f32> = vs_TEXCOORD1;
    let x_2220 : i32 = u_xlati68;
    let x_2222 : vec4<f32> = x_2219.x_AdditionalLightsPosition[x_2220];
    let x_2225 : i32 = u_xlati68;
    let x_2227 : vec4<f32> = x_2219.x_AdditionalLightsPosition[x_2225];
    let x_2229 : vec3<f32> = ((-(x_2208) * vec3<f32>(x_2222.w, x_2222.w, x_2222.w)) + vec3<f32>(x_2227.x, x_2227.y, x_2227.z));
    let x_2230 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2229.x, x_2229.y, x_2229.z, x_2230.w);
    let x_2232 : vec4<f32> = u_xlat8;
    let x_2234 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2232.x, x_2232.y, x_2232.z), vec3<f32>(x_2234.x, x_2234.y, x_2234.z));
    let x_2237 : f32 = u_xlat70;
    u_xlat70 = max(x_2237, 6.10351562e-05f);
    let x_2241 : f32 = u_xlat70;
    u_xlat71 = inverseSqrt(x_2241);
    let x_2243 : f32 = u_xlat71;
    let x_2245 : vec4<f32> = u_xlat8;
    let x_2247 : vec3<f32> = (vec3<f32>(x_2243, x_2243, x_2243) * vec3<f32>(x_2245.x, x_2245.y, x_2245.z));
    let x_2248 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2247.x, x_2247.y, x_2247.z, x_2248.w);
    let x_2251 : f32 = u_xlat70;
    u_xlat72 = (1.0f / x_2251);
    let x_2253 : f32 = u_xlat70;
    let x_2254 : i32 = u_xlati68;
    let x_2256 : f32 = x_2219.x_AdditionalLightsAttenuation[x_2254].x;
    u_xlat70 = (x_2253 * x_2256);
    let x_2258 : f32 = u_xlat70;
    let x_2260 : f32 = u_xlat70;
    u_xlat70 = ((-(x_2258) * x_2260) + 1.0f);
    let x_2263 : f32 = u_xlat70;
    u_xlat70 = max(x_2263, 0.0f);
    let x_2265 : f32 = u_xlat70;
    let x_2266 : f32 = u_xlat70;
    u_xlat70 = (x_2265 * x_2266);
    let x_2268 : f32 = u_xlat70;
    let x_2269 : f32 = u_xlat72;
    u_xlat70 = (x_2268 * x_2269);
    let x_2271 : i32 = u_xlati68;
    let x_2273 : vec4<f32> = x_2219.x_AdditionalLightsSpotDir[x_2271];
    let x_2275 : vec4<f32> = u_xlat9;
    u_xlat72 = dot(vec3<f32>(x_2273.x, x_2273.y, x_2273.z), vec3<f32>(x_2275.x, x_2275.y, x_2275.z));
    let x_2278 : f32 = u_xlat72;
    let x_2279 : i32 = u_xlati68;
    let x_2281 : f32 = x_2219.x_AdditionalLightsAttenuation[x_2279].z;
    let x_2283 : i32 = u_xlati68;
    let x_2285 : f32 = x_2219.x_AdditionalLightsAttenuation[x_2283].w;
    u_xlat72 = ((x_2278 * x_2281) + x_2285);
    let x_2287 : f32 = u_xlat72;
    u_xlat72 = clamp(x_2287, 0.0f, 1.0f);
    let x_2289 : f32 = u_xlat72;
    let x_2290 : f32 = u_xlat72;
    u_xlat72 = (x_2289 * x_2290);
    let x_2292 : f32 = u_xlat70;
    let x_2293 : f32 = u_xlat72;
    u_xlat70 = (x_2292 * x_2293);
    let x_2295 : vec4<f32> = u_xlat6;
    let x_2297 : i32 = u_xlati68;
    let x_2299 : vec4<f32> = x_2219.x_AdditionalLightsColor[x_2297];
    let x_2301 : vec3<f32> = (vec3<f32>(x_2295.x, x_2295.x, x_2295.x) * vec3<f32>(x_2299.x, x_2299.y, x_2299.z));
    let x_2302 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2301.x, x_2301.y, x_2301.z, x_2302.w);
    let x_2304 : vec4<f32> = u_xlat4;
    let x_2306 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2304.x, x_2304.y, x_2304.z), vec3<f32>(x_2306.x, x_2306.y, x_2306.z));
    let x_2309 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2309, 0.0f, 1.0f);
    let x_2311 : f32 = u_xlat68;
    let x_2312 : f32 = u_xlat70;
    u_xlat68 = (x_2311 * x_2312);
    let x_2314 : f32 = u_xlat68;
    let x_2316 : vec4<f32> = u_xlat10;
    let x_2318 : vec3<f32> = (vec3<f32>(x_2314, x_2314, x_2314) * vec3<f32>(x_2316.x, x_2316.y, x_2316.z));
    let x_2319 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2318.x, x_2318.y, x_2318.z, x_2319.w);
    let x_2321 : vec4<f32> = u_xlat8;
    let x_2323 : f32 = u_xlat71;
    let x_2326 : vec3<f32> = u_xlat24;
    let x_2327 : vec3<f32> = ((vec3<f32>(x_2321.x, x_2321.y, x_2321.z) * vec3<f32>(x_2323, x_2323, x_2323)) + x_2326);
    let x_2328 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2327.x, x_2327.y, x_2327.z, x_2328.w);
    let x_2330 : vec4<f32> = u_xlat8;
    let x_2332 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2330.x, x_2330.y, x_2330.z), vec3<f32>(x_2332.x, x_2332.y, x_2332.z));
    let x_2335 : f32 = u_xlat68;
    u_xlat68 = max(x_2335, 1.17549435e-37f);
    let x_2337 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_2337);
    let x_2339 : f32 = u_xlat68;
    let x_2341 : vec4<f32> = u_xlat8;
    let x_2343 : vec3<f32> = (vec3<f32>(x_2339, x_2339, x_2339) * vec3<f32>(x_2341.x, x_2341.y, x_2341.z));
    let x_2344 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2343.x, x_2343.y, x_2343.z, x_2344.w);
    let x_2346 : vec4<f32> = u_xlat4;
    let x_2348 : vec4<f32> = u_xlat8;
    u_xlat68 = dot(vec3<f32>(x_2346.x, x_2346.y, x_2346.z), vec3<f32>(x_2348.x, x_2348.y, x_2348.z));
    let x_2351 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2351, 0.0f, 1.0f);
    let x_2353 : vec4<f32> = u_xlat9;
    let x_2355 : vec4<f32> = u_xlat8;
    u_xlat70 = dot(vec3<f32>(x_2353.x, x_2353.y, x_2353.z), vec3<f32>(x_2355.x, x_2355.y, x_2355.z));
    let x_2358 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2358, 0.0f, 1.0f);
    let x_2360 : f32 = u_xlat68;
    let x_2361 : f32 = u_xlat68;
    u_xlat68 = (x_2360 * x_2361);
    let x_2363 : f32 = u_xlat68;
    let x_2365 : f32 = u_xlat1.x;
    u_xlat68 = ((x_2363 * x_2365) + 1.000010014f);
    let x_2368 : f32 = u_xlat70;
    let x_2369 : f32 = u_xlat70;
    u_xlat70 = (x_2368 * x_2369);
    let x_2371 : f32 = u_xlat68;
    let x_2372 : f32 = u_xlat68;
    u_xlat68 = (x_2371 * x_2372);
    let x_2374 : f32 = u_xlat70;
    u_xlat70 = max(x_2374, 0.100000001f);
    let x_2376 : f32 = u_xlat68;
    let x_2377 : f32 = u_xlat70;
    u_xlat68 = (x_2376 * x_2377);
    let x_2379 : f32 = u_xlat67;
    let x_2380 : f32 = u_xlat68;
    u_xlat68 = (x_2379 * x_2380);
    let x_2383 : f32 = u_xlat43.x;
    let x_2384 : f32 = u_xlat68;
    u_xlat68 = (x_2383 / x_2384);
    let x_2386 : vec4<f32> = u_xlat0;
    let x_2388 : f32 = u_xlat68;
    let x_2391 : vec3<f32> = u_xlat23;
    let x_2392 : vec3<f32> = ((vec3<f32>(x_2386.x, x_2386.y, x_2386.z) * vec3<f32>(x_2388, x_2388, x_2388)) + x_2391);
    let x_2393 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2392.x, x_2392.y, x_2392.z, x_2393.w);
    let x_2395 : vec4<f32> = u_xlat8;
    let x_2397 : vec4<f32> = u_xlat10;
    let x_2400 : vec4<f32> = u_xlat7;
    let x_2402 : vec3<f32> = ((vec3<f32>(x_2395.x, x_2395.y, x_2395.z) * vec3<f32>(x_2397.x, x_2397.y, x_2397.z)) + vec3<f32>(x_2400.x, x_2400.y, x_2400.z));
    let x_2403 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2402.x, x_2402.y, x_2402.z, x_2403.w);

    continuing {
      let x_2405 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2405 + bitcast<u32>(1i));
    }
  }
  let x_2407 : vec3<f32> = u_xlat5;
  let x_2408 : vec3<f32> = u_xlat3;
  let x_2411 : vec3<f32> = u_xlat27;
  let x_2412 : vec3<f32> = ((x_2407 * vec3<f32>(x_2408.x, x_2408.x, x_2408.x)) + x_2411);
  let x_2413 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
  let x_2415 : vec4<f32> = u_xlat7;
  let x_2417 : vec4<f32> = u_xlat0;
  let x_2419 : vec3<f32> = (vec3<f32>(x_2415.x, x_2415.y, x_2415.z) + vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
  let x_2420 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2419.x, x_2419.y, x_2419.z, x_2420.w);
  let x_2422 : f32 = u_xlat63;
  let x_2423 : f32 = u_xlat63;
  u_xlat63 = (x_2422 * -(x_2423));
  let x_2426 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2426);
  let x_2428 : vec4<f32> = u_xlat0;
  let x_2432 : vec4<f32> = x_44.unity_FogColor;
  let x_2435 : vec3<f32> = (vec3<f32>(x_2428.x, x_2428.y, x_2428.z) + -(vec3<f32>(x_2432.x, x_2432.y, x_2432.z)));
  let x_2436 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2435.x, x_2435.y, x_2435.z, x_2436.w);
  let x_2440 : f32 = u_xlat63;
  let x_2442 : vec4<f32> = u_xlat0;
  let x_2446 : vec4<f32> = x_44.unity_FogColor;
  let x_2448 : vec3<f32> = ((vec3<f32>(x_2440, x_2440, x_2440) * vec3<f32>(x_2442.x, x_2442.y, x_2442.z)) + vec3<f32>(x_2446.x, x_2446.y, x_2446.z));
  let x_2449 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2448.x, x_2448.y, x_2448.z, x_2449.w);
  let x_2454 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_2454 == 1.0f);
  let x_2456 : bool = u_xlatb0;
  if (x_2456) {
    let x_2461 : f32 = u_xlat2.x;
    x_2457 = x_2461;
  } else {
    x_2457 = 1.0f;
  }
  let x_2463 : f32 = x_2457;
  SV_Target0.w = x_2463;
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

