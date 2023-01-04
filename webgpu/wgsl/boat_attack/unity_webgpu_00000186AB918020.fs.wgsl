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

@group(1) @binding(2) var<uniform> x_281 : UnityPerDraw;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_507 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_883 : AdditionalLights;

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
  var x_195 : f32;
  var x_208 : f32;
  var x_219 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlat34 : f32;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlatb17 : bool;
  var u_xlat17 : f32;
  var u_xlat39 : f32;
  var u_xlat40 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu23 : u32;
  var u_xlati37 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati23 : i32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_1091 : f32;
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
  let x_163 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb14 = (x_163 == 0.0f);
  let x_169 : vec3<f32> = vs_TEXCOORD1;
  let x_174 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_175 : vec3<f32> = (-(x_169) + x_174);
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = u_xlat4;
  let x_181 : vec4<f32> = u_xlat4;
  u_xlat25 = dot(vec3<f32>(x_179.x, x_179.y, x_179.z), vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_184 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_184);
  let x_186 : f32 = u_xlat25;
  let x_188 : vec4<f32> = u_xlat4;
  let x_190 : vec3<f32> = (vec3<f32>(x_186, x_186, x_186) * vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_191 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : bool = u_xlatb14;
  if (x_194) {
    let x_199 : f32 = u_xlat4.x;
    x_195 = x_199;
  } else {
    let x_204 : f32 = x_44.unity_MatrixV[0i].z;
    x_195 = x_204;
  }
  let x_205 : f32 = x_195;
  u_xlat5.x = x_205;
  let x_207 : bool = u_xlatb14;
  if (x_207) {
    let x_212 : f32 = u_xlat4.y;
    x_208 = x_212;
  } else {
    let x_215 : f32 = x_44.unity_MatrixV[1i].z;
    x_208 = x_215;
  }
  let x_216 : f32 = x_208;
  u_xlat5.y = x_216;
  let x_218 : bool = u_xlatb14;
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
  u_xlat14 = (vec3<f32>(x_230.z, x_230.x, x_230.y) * vec3<f32>(x_233.y, x_233.z, x_233.x));
  let x_236 : vec3<f32> = vs_TEXCOORD2;
  let x_238 : vec4<f32> = vs_TEXCOORD3;
  let x_241 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_236.y, x_236.z, x_236.x) * vec3<f32>(x_238.z, x_238.x, x_238.y)) + -(x_241));
  let x_244 : vec3<f32> = u_xlat14;
  let x_245 : vec4<f32> = vs_TEXCOORD3;
  u_xlat14 = (x_244 * vec3<f32>(x_245.w, x_245.w, x_245.w));
  let x_248 : vec2<f32> = u_xlat23;
  let x_250 : vec3<f32> = u_xlat14;
  u_xlat14 = (vec3<f32>(x_248.y, x_248.y, x_248.y) * x_250);
  let x_252 : vec2<f32> = u_xlat23;
  let x_254 : vec4<f32> = vs_TEXCOORD3;
  let x_257 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_252.x, x_252.x, x_252.x) * vec3<f32>(x_254.x, x_254.y, x_254.z)) + x_257);
  let x_259 : f32 = u_xlat33;
  let x_261 : vec3<f32> = vs_TEXCOORD2;
  let x_263 : vec3<f32> = u_xlat14;
  u_xlat14 = ((vec3<f32>(x_259, x_259, x_259) * x_261) + x_263);
  let x_265 : vec3<f32> = u_xlat14;
  let x_266 : vec3<f32> = u_xlat14;
  u_xlat33 = dot(x_265, x_266);
  let x_268 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_268);
  let x_270 : f32 = u_xlat33;
  let x_272 : vec3<f32> = u_xlat14;
  let x_273 : vec3<f32> = (vec3<f32>(x_270, x_270, x_270) * x_272);
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  u_xlat4.w = 1.0f;
  let x_284 : vec4<f32> = x_281.unity_SHAr;
  let x_285 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_284, x_285);
  let x_290 : vec4<f32> = x_281.unity_SHAg;
  let x_291 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_290, x_291);
  let x_296 : vec4<f32> = x_281.unity_SHAb;
  let x_297 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_296, x_297);
  let x_301 : vec4<f32> = u_xlat4;
  let x_303 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_301.y, x_301.z, x_301.z, x_301.x) * vec4<f32>(x_303.x, x_303.y, x_303.z, x_303.z));
  let x_309 : vec4<f32> = x_281.unity_SHBr;
  let x_310 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_309, x_310);
  let x_315 : vec4<f32> = x_281.unity_SHBg;
  let x_316 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_315, x_316);
  let x_321 : vec4<f32> = x_281.unity_SHBb;
  let x_322 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_321, x_322);
  let x_326 : f32 = u_xlat4.y;
  let x_328 : f32 = u_xlat4.y;
  u_xlat33 = (x_326 * x_328);
  let x_331 : f32 = u_xlat4.x;
  let x_333 : f32 = u_xlat4.x;
  let x_335 : f32 = u_xlat33;
  u_xlat33 = ((x_331 * x_333) + -(x_335));
  let x_340 : vec4<f32> = x_281.unity_SHC;
  let x_342 : f32 = u_xlat33;
  let x_345 : vec3<f32> = u_xlat8;
  u_xlat14 = ((vec3<f32>(x_340.x, x_340.y, x_340.z) * vec3<f32>(x_342, x_342, x_342)) + x_345);
  let x_347 : vec3<f32> = u_xlat14;
  let x_348 : vec3<f32> = u_xlat6;
  u_xlat14 = (x_347 + x_348);
  let x_350 : vec3<f32> = u_xlat14;
  u_xlat14 = max(x_350, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_355 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_356 : vec2<f32> = vec2<f32>(x_355.x, x_355.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_356.x, x_356.y));
  let x_361 : vec2<f32> = u_xlat23;
  let x_362 : vec4<f32> = hlslcc_FragCoord;
  let x_364 : vec2<f32> = (x_361 * vec2<f32>(x_362.x, x_362.y));
  let x_365 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_364.x, x_364.y, x_365.z);
  let x_368 : f32 = u_xlat6.y;
  let x_370 : f32 = x_44.x_ScaleBiasRt.x;
  let x_373 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_368 * x_370) + x_373);
  let x_375 : f32 = u_xlat33;
  u_xlat6.z = (-(x_375) + 1.0f);
  let x_380 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_380) * 0.959999979f) + 0.959999979f);
  let x_386 : f32 = u_xlat1.y;
  let x_388 : f32 = x_69.x_Smoothness;
  let x_390 : f32 = u_xlat33;
  u_xlat23.x = ((x_386 * x_388) + -(x_390));
  let x_395 : f32 = u_xlat33;
  let x_397 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_395, x_395, x_395) * vec3<f32>(x_397.y, x_397.z, x_397.w));
  let x_400 : vec4<f32> = u_xlat0;
  let x_403 : vec4<f32> = x_69.x_BaseColor;
  let x_408 : vec3<f32> = ((vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_403.x, x_403.y, x_403.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec2<f32> = u_xlat1;
  let x_413 : vec4<f32> = u_xlat0;
  let x_418 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.x, x_411.x) * vec3<f32>(x_413.x, x_413.y, x_413.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_419 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_418.x, x_418.y, x_418.z, x_419.w);
  let x_422 : f32 = u_xlat1.y;
  let x_425 : f32 = x_69.x_Smoothness;
  u_xlat33 = ((-(x_422) * x_425) + 1.0f);
  let x_428 : f32 = u_xlat33;
  let x_429 : f32 = u_xlat33;
  u_xlat1.x = (x_428 * x_429);
  let x_433 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_433, 0.0078125f);
  let x_439 : f32 = u_xlat1.x;
  let x_441 : f32 = u_xlat1.x;
  u_xlat12 = (x_439 * x_441);
  let x_444 : f32 = u_xlat23.x;
  u_xlat23.x = (x_444 + 1.0f);
  let x_448 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_448, 0.0f, 1.0f);
  let x_453 : f32 = u_xlat1.x;
  u_xlat34 = ((x_453 * 4.0f) + 2.0f);
  let x_463 : vec3<f32> = u_xlat6;
  let x_466 : f32 = x_44.x_GlobalMipBias.x;
  let x_467 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_463.x, x_463.z), x_466);
  u_xlat37 = x_467.x;
  let x_470 : f32 = u_xlat37;
  u_xlat38 = (x_470 + -1.0f);
  let x_474 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_475 : f32 = u_xlat38;
  u_xlat38 = ((x_474 * x_475) + 1.0f);
  let x_479 : f32 = u_xlat3.x;
  let x_480 : f32 = u_xlat37;
  u_xlat3.x = min(x_479, x_480);
  let x_485 : vec4<f32> = vs_TEXCOORD6;
  let x_486 : vec2<f32> = vec2<f32>(x_485.x, x_485.y);
  let x_488 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_486.x, x_486.y, x_488);
  let x_500 : vec3<f32> = txVec0;
  let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_500.xy, x_500.z);
  u_xlat37 = x_502;
  let x_509 : f32 = x_507.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_509) + 1.0f);
  let x_513 : f32 = u_xlat37;
  let x_515 : f32 = x_507.x_MainLightShadowParams.x;
  let x_518 : f32 = u_xlat6.x;
  u_xlat37 = ((x_513 * x_515) + x_518);
  let x_522 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_522);
  let x_526 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_526 >= 1.0f);
  let x_528 : bool = u_xlatb17;
  let x_529 : bool = u_xlatb6;
  u_xlatb6 = (x_528 | x_529);
  let x_531 : bool = u_xlatb6;
  let x_532 : f32 = u_xlat37;
  u_xlat37 = select(x_532, 1.0f, x_531);
  let x_534 : vec3<f32> = vs_TEXCOORD1;
  let x_536 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_534 + -(x_536));
  let x_539 : vec3<f32> = u_xlat6;
  let x_540 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_539, x_540);
  let x_544 : f32 = u_xlat6.x;
  let x_546 : f32 = x_507.x_MainLightShadowParams.z;
  let x_549 : f32 = x_507.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_544 * x_546) + x_549);
  let x_553 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_553, 0.0f, 1.0f);
  let x_557 : f32 = u_xlat37;
  u_xlat17 = (-(x_557) + 1.0f);
  let x_561 : f32 = u_xlat6.x;
  let x_562 : f32 = u_xlat17;
  let x_564 : f32 = u_xlat37;
  u_xlat37 = ((x_561 * x_562) + x_564);
  let x_566 : f32 = u_xlat38;
  let x_570 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_566, x_566, x_566) * vec3<f32>(x_570.x, x_570.y, x_570.z));
  let x_574 : vec3<f32> = u_xlat5;
  let x_576 : vec4<f32> = u_xlat4;
  u_xlat39 = dot(-(x_574), vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : f32 = u_xlat39;
  let x_580 : f32 = u_xlat39;
  u_xlat39 = (x_579 + x_580);
  let x_582 : vec4<f32> = u_xlat4;
  let x_584 : f32 = u_xlat39;
  let x_588 : vec3<f32> = u_xlat5;
  let x_590 : vec3<f32> = ((vec3<f32>(x_582.x, x_582.y, x_582.z) * -(vec3<f32>(x_584, x_584, x_584))) + -(x_588));
  let x_591 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec4<f32> = u_xlat4;
  let x_595 : vec3<f32> = u_xlat5;
  u_xlat39 = dot(vec3<f32>(x_593.x, x_593.y, x_593.z), x_595);
  let x_597 : f32 = u_xlat39;
  u_xlat39 = clamp(x_597, 0.0f, 1.0f);
  let x_599 : f32 = u_xlat39;
  u_xlat39 = (-(x_599) + 1.0f);
  let x_602 : f32 = u_xlat39;
  let x_603 : f32 = u_xlat39;
  u_xlat39 = (x_602 * x_603);
  let x_605 : f32 = u_xlat39;
  let x_606 : f32 = u_xlat39;
  u_xlat39 = (x_605 * x_606);
  let x_609 : f32 = u_xlat33;
  u_xlat40 = ((-(x_609) * 0.699999988f) + 1.700000048f);
  let x_615 : f32 = u_xlat33;
  let x_616 : f32 = u_xlat40;
  u_xlat33 = (x_615 * x_616);
  let x_618 : f32 = u_xlat33;
  u_xlat33 = (x_618 * 6.0f);
  let x_629 : vec4<f32> = u_xlat7;
  let x_631 : f32 = u_xlat33;
  let x_632 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_629.x, x_629.y, x_629.z), x_631);
  u_xlat7 = x_632;
  let x_634 : f32 = u_xlat7.w;
  u_xlat33 = (x_634 + -1.0f);
  let x_637 : f32 = x_281.unity_SpecCube0_HDR.w;
  let x_638 : f32 = u_xlat33;
  u_xlat33 = ((x_637 * x_638) + 1.0f);
  let x_641 : f32 = u_xlat33;
  u_xlat33 = max(x_641, 0.0f);
  let x_643 : f32 = u_xlat33;
  u_xlat33 = log2(x_643);
  let x_645 : f32 = u_xlat33;
  let x_647 : f32 = x_281.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_645 * x_647);
  let x_649 : f32 = u_xlat33;
  u_xlat33 = exp2(x_649);
  let x_651 : f32 = u_xlat33;
  let x_653 : f32 = x_281.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_651 * x_653);
  let x_655 : vec4<f32> = u_xlat7;
  let x_657 : f32 = u_xlat33;
  let x_659 : vec3<f32> = (vec3<f32>(x_655.x, x_655.y, x_655.z) * vec3<f32>(x_657, x_657, x_657));
  let x_660 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
  let x_662 : vec2<f32> = u_xlat1;
  let x_664 : vec2<f32> = u_xlat1;
  let x_668 : vec2<f32> = ((vec2<f32>(x_662.x, x_662.x) * vec2<f32>(x_664.x, x_664.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_669 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_668.x, x_668.y, x_669.z);
  let x_672 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_672);
  let x_675 : vec4<f32> = u_xlat0;
  let x_678 : vec2<f32> = u_xlat23;
  u_xlat19 = (-(vec3<f32>(x_675.x, x_675.y, x_675.z)) + vec3<f32>(x_678.x, x_678.x, x_678.x));
  let x_681 : f32 = u_xlat39;
  let x_683 : vec3<f32> = u_xlat19;
  let x_685 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_681, x_681, x_681) * x_683) + vec3<f32>(x_685.x, x_685.y, x_685.z));
  let x_688 : f32 = u_xlat33;
  let x_690 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_688, x_688, x_688) * x_690);
  let x_692 : vec4<f32> = u_xlat7;
  let x_694 : vec3<f32> = u_xlat19;
  let x_695 : vec3<f32> = (vec3<f32>(x_692.x, x_692.y, x_692.z) * x_694);
  let x_696 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  let x_698 : vec3<f32> = u_xlat14;
  let x_699 : vec3<f32> = u_xlat13;
  let x_701 : vec4<f32> = u_xlat7;
  u_xlat14 = ((x_698 * x_699) + vec3<f32>(x_701.x, x_701.y, x_701.z));
  let x_704 : f32 = u_xlat37;
  let x_707 : f32 = x_281.unity_LightData.z;
  u_xlat33 = (x_704 * x_707);
  let x_709 : vec4<f32> = u_xlat4;
  let x_712 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_709.x, x_709.y, x_709.z), vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_717 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_717, 0.0f, 1.0f);
  let x_720 : f32 = u_xlat33;
  let x_722 : f32 = u_xlat1.x;
  u_xlat33 = (x_720 * x_722);
  let x_724 : f32 = u_xlat33;
  let x_726 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_724, x_724, x_724) * x_726);
  let x_728 : vec3<f32> = u_xlat5;
  let x_730 : vec4<f32> = x_44.x_MainLightPosition;
  let x_732 : vec3<f32> = (x_728 + vec3<f32>(x_730.x, x_730.y, x_730.z));
  let x_733 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_735 : vec4<f32> = u_xlat7;
  let x_737 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_735.x, x_735.y, x_735.z), vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : f32 = u_xlat33;
  u_xlat33 = max(x_740, 1.17549435e-37f);
  let x_743 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_743);
  let x_745 : f32 = u_xlat33;
  let x_747 : vec4<f32> = u_xlat7;
  let x_749 : vec3<f32> = (vec3<f32>(x_745, x_745, x_745) * vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat4;
  let x_754 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_752.x, x_752.y, x_752.z), vec3<f32>(x_754.x, x_754.y, x_754.z));
  let x_757 : f32 = u_xlat33;
  u_xlat33 = clamp(x_757, 0.0f, 1.0f);
  let x_760 : vec4<f32> = x_44.x_MainLightPosition;
  let x_762 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_760.x, x_760.y, x_760.z), vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_767 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_767, 0.0f, 1.0f);
  let x_770 : f32 = u_xlat33;
  let x_771 : f32 = u_xlat33;
  u_xlat33 = (x_770 * x_771);
  let x_773 : f32 = u_xlat33;
  let x_775 : f32 = u_xlat8.x;
  u_xlat33 = ((x_773 * x_775) + 1.000010014f);
  let x_780 : f32 = u_xlat1.x;
  let x_782 : f32 = u_xlat1.x;
  u_xlat1.x = (x_780 * x_782);
  let x_785 : f32 = u_xlat33;
  let x_786 : f32 = u_xlat33;
  u_xlat33 = (x_785 * x_786);
  let x_789 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_789, 0.100000001f);
  let x_793 : f32 = u_xlat33;
  let x_795 : f32 = u_xlat1.x;
  u_xlat33 = (x_793 * x_795);
  let x_797 : f32 = u_xlat34;
  let x_798 : f32 = u_xlat33;
  u_xlat33 = (x_797 * x_798);
  let x_800 : f32 = u_xlat12;
  let x_801 : f32 = u_xlat33;
  u_xlat33 = (x_800 / x_801);
  let x_803 : vec4<f32> = u_xlat0;
  let x_805 : f32 = u_xlat33;
  let x_808 : vec3<f32> = u_xlat13;
  let x_809 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_805, x_805, x_805)) + x_808);
  let x_810 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec3<f32> = u_xlat6;
  let x_813 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_812 * vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_817 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_819 : f32 = x_281.unity_LightData.y;
  u_xlat33 = min(x_817, x_819);
  let x_823 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_823));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_835 : u32 = u_xlatu_loop_1;
    let x_836 : u32 = u_xlatu33;
    if ((x_835 < x_836)) {
    } else {
      break;
    }
    let x_839 : u32 = u_xlatu_loop_1;
    u_xlatu23 = (x_839 >> 2u);
    let x_843 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_843 & 3u));
    let x_846 : u32 = u_xlatu23;
    let x_849 : vec4<f32> = x_281.unity_LightIndices[bitcast<i32>(x_846)];
    let x_859 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_864 : vec4<u32> = indexable[x_859];
    u_xlat23.x = dot(x_849, bitcast<vec4<f32>>(x_864));
    let x_870 : f32 = u_xlat23.x;
    u_xlati23 = i32(x_870);
    let x_872 : vec3<f32> = vs_TEXCOORD1;
    let x_884 : i32 = u_xlati23;
    let x_886 : vec4<f32> = x_883.x_AdditionalLightsPosition[x_884];
    let x_889 : i32 = u_xlati23;
    let x_891 : vec4<f32> = x_883.x_AdditionalLightsPosition[x_889];
    u_xlat19 = ((-(x_872) * vec3<f32>(x_886.w, x_886.w, x_886.w)) + vec3<f32>(x_891.x, x_891.y, x_891.z));
    let x_894 : vec3<f32> = u_xlat19;
    let x_895 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_894, x_895);
    let x_897 : f32 = u_xlat37;
    u_xlat37 = max(x_897, 6.10351562e-05f);
    let x_900 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_900);
    let x_903 : f32 = u_xlat39;
    let x_905 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_903, x_903, x_903) * x_905);
    let x_907 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_907);
    let x_909 : f32 = u_xlat37;
    let x_910 : i32 = u_xlati23;
    let x_912 : f32 = x_883.x_AdditionalLightsAttenuation[x_910].x;
    u_xlat37 = (x_909 * x_912);
    let x_914 : f32 = u_xlat37;
    let x_916 : f32 = u_xlat37;
    u_xlat37 = ((-(x_914) * x_916) + 1.0f);
    let x_919 : f32 = u_xlat37;
    u_xlat37 = max(x_919, 0.0f);
    let x_921 : f32 = u_xlat37;
    let x_922 : f32 = u_xlat37;
    u_xlat37 = (x_921 * x_922);
    let x_924 : f32 = u_xlat37;
    let x_925 : f32 = u_xlat40;
    u_xlat37 = (x_924 * x_925);
    let x_927 : i32 = u_xlati23;
    let x_929 : vec4<f32> = x_883.x_AdditionalLightsSpotDir[x_927];
    let x_931 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_929.x, x_929.y, x_929.z), x_931);
    let x_933 : f32 = u_xlat40;
    let x_934 : i32 = u_xlati23;
    let x_936 : f32 = x_883.x_AdditionalLightsAttenuation[x_934].z;
    let x_938 : i32 = u_xlati23;
    let x_940 : f32 = x_883.x_AdditionalLightsAttenuation[x_938].w;
    u_xlat40 = ((x_933 * x_936) + x_940);
    let x_942 : f32 = u_xlat40;
    u_xlat40 = clamp(x_942, 0.0f, 1.0f);
    let x_944 : f32 = u_xlat40;
    let x_945 : f32 = u_xlat40;
    u_xlat40 = (x_944 * x_945);
    let x_947 : f32 = u_xlat37;
    let x_948 : f32 = u_xlat40;
    u_xlat37 = (x_947 * x_948);
    let x_951 : f32 = u_xlat38;
    let x_953 : i32 = u_xlati23;
    let x_955 : vec4<f32> = x_883.x_AdditionalLightsColor[x_953];
    u_xlat10 = (vec3<f32>(x_951, x_951, x_951) * vec3<f32>(x_955.x, x_955.y, x_955.z));
    let x_958 : vec4<f32> = u_xlat4;
    let x_960 : vec3<f32> = u_xlat9;
    u_xlat23.x = dot(vec3<f32>(x_958.x, x_958.y, x_958.z), x_960);
    let x_964 : f32 = u_xlat23.x;
    u_xlat23.x = clamp(x_964, 0.0f, 1.0f);
    let x_968 : f32 = u_xlat23.x;
    let x_969 : f32 = u_xlat37;
    u_xlat23.x = (x_968 * x_969);
    let x_972 : vec2<f32> = u_xlat23;
    let x_974 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_972.x, x_972.x, x_972.x) * x_974);
    let x_976 : vec3<f32> = u_xlat19;
    let x_977 : f32 = u_xlat39;
    let x_980 : vec3<f32> = u_xlat5;
    u_xlat19 = ((x_976 * vec3<f32>(x_977, x_977, x_977)) + x_980);
    let x_982 : vec3<f32> = u_xlat19;
    let x_983 : vec3<f32> = u_xlat19;
    u_xlat23.x = dot(x_982, x_983);
    let x_987 : f32 = u_xlat23.x;
    u_xlat23.x = max(x_987, 1.17549435e-37f);
    let x_991 : f32 = u_xlat23.x;
    u_xlat23.x = inverseSqrt(x_991);
    let x_994 : vec2<f32> = u_xlat23;
    let x_996 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_994.x, x_994.x, x_994.x) * x_996);
    let x_998 : vec4<f32> = u_xlat4;
    let x_1000 : vec3<f32> = u_xlat19;
    u_xlat23.x = dot(vec3<f32>(x_998.x, x_998.y, x_998.z), x_1000);
    let x_1004 : f32 = u_xlat23.x;
    u_xlat23.x = clamp(x_1004, 0.0f, 1.0f);
    let x_1007 : vec3<f32> = u_xlat9;
    let x_1008 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_1007, x_1008);
    let x_1010 : f32 = u_xlat37;
    u_xlat37 = clamp(x_1010, 0.0f, 1.0f);
    let x_1013 : f32 = u_xlat23.x;
    let x_1015 : f32 = u_xlat23.x;
    u_xlat23.x = (x_1013 * x_1015);
    let x_1019 : f32 = u_xlat23.x;
    let x_1021 : f32 = u_xlat8.x;
    u_xlat23.x = ((x_1019 * x_1021) + 1.000010014f);
    let x_1025 : f32 = u_xlat37;
    let x_1026 : f32 = u_xlat37;
    u_xlat37 = (x_1025 * x_1026);
    let x_1029 : f32 = u_xlat23.x;
    let x_1031 : f32 = u_xlat23.x;
    u_xlat23.x = (x_1029 * x_1031);
    let x_1034 : f32 = u_xlat37;
    u_xlat37 = max(x_1034, 0.100000001f);
    let x_1037 : f32 = u_xlat23.x;
    let x_1038 : f32 = u_xlat37;
    u_xlat23.x = (x_1037 * x_1038);
    let x_1041 : f32 = u_xlat34;
    let x_1043 : f32 = u_xlat23.x;
    u_xlat23.x = (x_1041 * x_1043);
    let x_1046 : f32 = u_xlat12;
    let x_1048 : f32 = u_xlat23.x;
    u_xlat23.x = (x_1046 / x_1048);
    let x_1051 : vec4<f32> = u_xlat0;
    let x_1053 : vec2<f32> = u_xlat23;
    let x_1056 : vec3<f32> = u_xlat13;
    u_xlat19 = ((vec3<f32>(x_1051.x, x_1051.y, x_1051.z) * vec3<f32>(x_1053.x, x_1053.x, x_1053.x)) + x_1056);
    let x_1058 : vec3<f32> = u_xlat19;
    let x_1059 : vec3<f32> = u_xlat10;
    let x_1061 : vec4<f32> = u_xlat7;
    let x_1063 : vec3<f32> = ((x_1058 * x_1059) + vec3<f32>(x_1061.x, x_1061.y, x_1061.z));
    let x_1064 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);

    continuing {
      let x_1066 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1066 + bitcast<u32>(1i));
    }
  }
  let x_1068 : vec3<f32> = u_xlat14;
  let x_1069 : vec3<f32> = u_xlat3;
  let x_1072 : vec3<f32> = u_xlat6;
  let x_1073 : vec3<f32> = ((x_1068 * vec3<f32>(x_1069.x, x_1069.x, x_1069.x)) + x_1072);
  let x_1074 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1078 : vec4<f32> = u_xlat7;
  let x_1080 : vec4<f32> = u_xlat0;
  let x_1082 : vec3<f32> = (vec3<f32>(x_1078.x, x_1078.y, x_1078.z) + vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
  let x_1083 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1088 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1088 == 1.0f);
  let x_1090 : bool = u_xlatb0;
  if (x_1090) {
    let x_1095 : f32 = u_xlat2.x;
    x_1091 = x_1095;
  } else {
    x_1091 = 1.0f;
  }
  let x_1097 : f32 = x_1091;
  SV_Target0.w = x_1097;
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

