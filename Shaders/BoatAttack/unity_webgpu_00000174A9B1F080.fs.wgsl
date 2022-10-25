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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(11) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(6) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(4) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_BumpMap : sampler;

@group(0) @binding(5) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_479 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_609 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_857 : AdditionalLights;

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
  var u_xlat7 : vec4<f32>;
  var u_xlat40 : f32;
  var u_xlat8 : vec2<f32>;
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
  var x_1064 : f32;
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
  u_xlat14 = (vec3<f32>(x_270, x_270, x_270) * x_272);
  let x_280 : vec2<f32> = vs_TEXCOORD8;
  let x_282 : f32 = x_44.x_GlobalMipBias.x;
  let x_283 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_280, x_282);
  u_xlat4 = x_283;
  let x_289 : vec2<f32> = vs_TEXCOORD8;
  let x_291 : f32 = x_44.x_GlobalMipBias.x;
  let x_292 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_289, x_291);
  u_xlat6 = vec3<f32>(x_292.x, x_292.y, x_292.z);
  let x_294 : vec4<f32> = u_xlat4;
  let x_298 : vec3<f32> = (vec3<f32>(x_294.x, x_294.y, x_294.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_299 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : vec3<f32> = u_xlat14;
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat33 = dot(x_301, vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : f32 = u_xlat33;
  u_xlat33 = (x_305 + 0.5f);
  let x_308 : f32 = u_xlat33;
  let x_310 : vec3<f32> = u_xlat6;
  let x_311 : vec3<f32> = (vec3<f32>(x_308, x_308, x_308) * x_310);
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_315 : f32 = u_xlat4.w;
  u_xlat33 = max(x_315, 0.0001f);
  let x_318 : vec4<f32> = u_xlat4;
  let x_320 : f32 = u_xlat33;
  let x_322 : vec3<f32> = (vec3<f32>(x_318.x, x_318.y, x_318.z) / vec3<f32>(x_320, x_320, x_320));
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_327 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_328 : vec2<f32> = vec2<f32>(x_327.x, x_327.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_328.x, x_328.y));
  let x_333 : vec2<f32> = u_xlat23;
  let x_334 : vec4<f32> = hlslcc_FragCoord;
  let x_336 : vec2<f32> = (x_333 * vec2<f32>(x_334.x, x_334.y));
  let x_337 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_336.x, x_336.y, x_337.z);
  let x_340 : f32 = u_xlat6.y;
  let x_342 : f32 = x_44.x_ScaleBiasRt.x;
  let x_345 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat33 = ((x_340 * x_342) + x_345);
  let x_347 : f32 = u_xlat33;
  u_xlat6.z = (-(x_347) + 1.0f);
  let x_352 : f32 = u_xlat1.x;
  u_xlat33 = ((-(x_352) * 0.959999979f) + 0.959999979f);
  let x_358 : f32 = u_xlat1.y;
  let x_360 : f32 = x_69.x_Smoothness;
  let x_362 : f32 = u_xlat33;
  u_xlat23.x = ((x_358 * x_360) + -(x_362));
  let x_367 : f32 = u_xlat33;
  let x_369 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_367, x_367, x_367) * vec3<f32>(x_369.y, x_369.z, x_369.w));
  let x_372 : vec4<f32> = u_xlat0;
  let x_375 : vec4<f32> = x_69.x_BaseColor;
  let x_380 : vec3<f32> = ((vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(x_375.x, x_375.y, x_375.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec2<f32> = u_xlat1;
  let x_385 : vec4<f32> = u_xlat0;
  let x_390 : vec3<f32> = ((vec3<f32>(x_383.x, x_383.x, x_383.x) * vec3<f32>(x_385.x, x_385.y, x_385.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_391 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : f32 = u_xlat1.y;
  let x_397 : f32 = x_69.x_Smoothness;
  u_xlat33 = ((-(x_394) * x_397) + 1.0f);
  let x_400 : f32 = u_xlat33;
  let x_401 : f32 = u_xlat33;
  u_xlat1.x = (x_400 * x_401);
  let x_405 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_405, 0.0078125f);
  let x_411 : f32 = u_xlat1.x;
  let x_413 : f32 = u_xlat1.x;
  u_xlat12 = (x_411 * x_413);
  let x_416 : f32 = u_xlat23.x;
  u_xlat23.x = (x_416 + 1.0f);
  let x_420 : f32 = u_xlat23.x;
  u_xlat23.x = clamp(x_420, 0.0f, 1.0f);
  let x_425 : f32 = u_xlat1.x;
  u_xlat34 = ((x_425 * 4.0f) + 2.0f);
  let x_435 : vec3<f32> = u_xlat6;
  let x_438 : f32 = x_44.x_GlobalMipBias.x;
  let x_439 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_435.x, x_435.z), x_438);
  u_xlat37 = x_439.x;
  let x_442 : f32 = u_xlat37;
  u_xlat38 = (x_442 + -1.0f);
  let x_446 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_447 : f32 = u_xlat38;
  u_xlat38 = ((x_446 * x_447) + 1.0f);
  let x_451 : f32 = u_xlat3.x;
  let x_452 : f32 = u_xlat37;
  u_xlat3.x = min(x_451, x_452);
  let x_457 : vec4<f32> = vs_TEXCOORD6;
  let x_458 : vec2<f32> = vec2<f32>(x_457.x, x_457.y);
  let x_460 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_458.x, x_458.y, x_460);
  let x_472 : vec3<f32> = txVec0;
  let x_474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_472.xy, x_472.z);
  u_xlat37 = x_474;
  let x_481 : f32 = x_479.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_481) + 1.0f);
  let x_485 : f32 = u_xlat37;
  let x_487 : f32 = x_479.x_MainLightShadowParams.x;
  let x_490 : f32 = u_xlat6.x;
  u_xlat37 = ((x_485 * x_487) + x_490);
  let x_494 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_494);
  let x_498 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_498 >= 1.0f);
  let x_500 : bool = u_xlatb17;
  let x_501 : bool = u_xlatb6;
  u_xlatb6 = (x_500 | x_501);
  let x_503 : bool = u_xlatb6;
  let x_504 : f32 = u_xlat37;
  u_xlat37 = select(x_504, 1.0f, x_503);
  let x_506 : vec3<f32> = vs_TEXCOORD1;
  let x_508 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat6 = (x_506 + -(x_508));
  let x_511 : vec3<f32> = u_xlat6;
  let x_512 : vec3<f32> = u_xlat6;
  u_xlat6.x = dot(x_511, x_512);
  let x_516 : f32 = u_xlat6.x;
  let x_518 : f32 = x_479.x_MainLightShadowParams.z;
  let x_521 : f32 = x_479.x_MainLightShadowParams.w;
  u_xlat6.x = ((x_516 * x_518) + x_521);
  let x_525 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_525, 0.0f, 1.0f);
  let x_529 : f32 = u_xlat37;
  u_xlat17 = (-(x_529) + 1.0f);
  let x_533 : f32 = u_xlat6.x;
  let x_534 : f32 = u_xlat17;
  let x_536 : f32 = u_xlat37;
  u_xlat37 = ((x_533 * x_534) + x_536);
  let x_538 : f32 = u_xlat38;
  let x_542 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat6 = (vec3<f32>(x_538, x_538, x_538) * vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_546 : vec3<f32> = u_xlat5;
  let x_548 : vec3<f32> = u_xlat14;
  u_xlat39 = dot(-(x_546), x_548);
  let x_550 : f32 = u_xlat39;
  let x_551 : f32 = u_xlat39;
  u_xlat39 = (x_550 + x_551);
  let x_554 : vec3<f32> = u_xlat14;
  let x_555 : f32 = u_xlat39;
  let x_559 : vec3<f32> = u_xlat5;
  let x_561 : vec3<f32> = ((x_554 * -(vec3<f32>(x_555, x_555, x_555))) + -(x_559));
  let x_562 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_564 : vec3<f32> = u_xlat14;
  let x_565 : vec3<f32> = u_xlat5;
  u_xlat39 = dot(x_564, x_565);
  let x_567 : f32 = u_xlat39;
  u_xlat39 = clamp(x_567, 0.0f, 1.0f);
  let x_569 : f32 = u_xlat39;
  u_xlat39 = (-(x_569) + 1.0f);
  let x_572 : f32 = u_xlat39;
  let x_573 : f32 = u_xlat39;
  u_xlat39 = (x_572 * x_573);
  let x_575 : f32 = u_xlat39;
  let x_576 : f32 = u_xlat39;
  u_xlat39 = (x_575 * x_576);
  let x_579 : f32 = u_xlat33;
  u_xlat40 = ((-(x_579) * 0.699999988f) + 1.700000048f);
  let x_585 : f32 = u_xlat33;
  let x_586 : f32 = u_xlat40;
  u_xlat33 = (x_585 * x_586);
  let x_588 : f32 = u_xlat33;
  u_xlat33 = (x_588 * 6.0f);
  let x_599 : vec4<f32> = u_xlat7;
  let x_601 : f32 = u_xlat33;
  let x_602 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_599.x, x_599.y, x_599.z), x_601);
  u_xlat7 = x_602;
  let x_604 : f32 = u_xlat7.w;
  u_xlat33 = (x_604 + -1.0f);
  let x_611 : f32 = x_609.unity_SpecCube0_HDR.w;
  let x_612 : f32 = u_xlat33;
  u_xlat33 = ((x_611 * x_612) + 1.0f);
  let x_615 : f32 = u_xlat33;
  u_xlat33 = max(x_615, 0.0f);
  let x_617 : f32 = u_xlat33;
  u_xlat33 = log2(x_617);
  let x_619 : f32 = u_xlat33;
  let x_621 : f32 = x_609.unity_SpecCube0_HDR.y;
  u_xlat33 = (x_619 * x_621);
  let x_623 : f32 = u_xlat33;
  u_xlat33 = exp2(x_623);
  let x_625 : f32 = u_xlat33;
  let x_627 : f32 = x_609.unity_SpecCube0_HDR.x;
  u_xlat33 = (x_625 * x_627);
  let x_629 : vec4<f32> = u_xlat7;
  let x_631 : f32 = u_xlat33;
  let x_633 : vec3<f32> = (vec3<f32>(x_629.x, x_629.y, x_629.z) * vec3<f32>(x_631, x_631, x_631));
  let x_634 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : vec2<f32> = u_xlat1;
  let x_639 : vec2<f32> = u_xlat1;
  u_xlat8 = ((vec2<f32>(x_637.x, x_637.x) * vec2<f32>(x_639.x, x_639.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_645 : f32 = u_xlat8.y;
  u_xlat33 = (1.0f / x_645);
  let x_648 : vec4<f32> = u_xlat0;
  let x_651 : vec2<f32> = u_xlat23;
  u_xlat19 = (-(vec3<f32>(x_648.x, x_648.y, x_648.z)) + vec3<f32>(x_651.x, x_651.x, x_651.x));
  let x_654 : f32 = u_xlat39;
  let x_656 : vec3<f32> = u_xlat19;
  let x_658 : vec4<f32> = u_xlat0;
  u_xlat19 = ((vec3<f32>(x_654, x_654, x_654) * x_656) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : f32 = u_xlat33;
  let x_663 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_661, x_661, x_661) * x_663);
  let x_665 : vec4<f32> = u_xlat7;
  let x_667 : vec3<f32> = u_xlat19;
  let x_668 : vec3<f32> = (vec3<f32>(x_665.x, x_665.y, x_665.z) * x_667);
  let x_669 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
  let x_671 : vec4<f32> = u_xlat4;
  let x_673 : vec3<f32> = u_xlat13;
  let x_675 : vec4<f32> = u_xlat7;
  let x_677 : vec3<f32> = ((vec3<f32>(x_671.x, x_671.y, x_671.z) * x_673) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : f32 = u_xlat37;
  let x_683 : f32 = x_609.unity_LightData.z;
  u_xlat33 = (x_680 * x_683);
  let x_685 : vec3<f32> = u_xlat14;
  let x_687 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(x_685, vec3<f32>(x_687.x, x_687.y, x_687.z));
  let x_692 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_692, 0.0f, 1.0f);
  let x_695 : f32 = u_xlat33;
  let x_697 : f32 = u_xlat1.x;
  u_xlat33 = (x_695 * x_697);
  let x_699 : f32 = u_xlat33;
  let x_701 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_699, x_699, x_699) * x_701);
  let x_703 : vec3<f32> = u_xlat5;
  let x_705 : vec4<f32> = x_44.x_MainLightPosition;
  let x_707 : vec3<f32> = (x_703 + vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat7;
  let x_712 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_710.x, x_710.y, x_710.z), vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : f32 = u_xlat33;
  u_xlat33 = max(x_715, 1.17549435e-37f);
  let x_718 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_718);
  let x_720 : f32 = u_xlat33;
  let x_722 : vec4<f32> = u_xlat7;
  let x_724 : vec3<f32> = (vec3<f32>(x_720, x_720, x_720) * vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec3<f32> = u_xlat14;
  let x_728 : vec4<f32> = u_xlat7;
  u_xlat33 = dot(x_727, vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_731 : f32 = u_xlat33;
  u_xlat33 = clamp(x_731, 0.0f, 1.0f);
  let x_734 : vec4<f32> = x_44.x_MainLightPosition;
  let x_736 : vec4<f32> = u_xlat7;
  u_xlat1.x = dot(vec3<f32>(x_734.x, x_734.y, x_734.z), vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_741 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_741, 0.0f, 1.0f);
  let x_744 : f32 = u_xlat33;
  let x_745 : f32 = u_xlat33;
  u_xlat33 = (x_744 * x_745);
  let x_747 : f32 = u_xlat33;
  let x_749 : f32 = u_xlat8.x;
  u_xlat33 = ((x_747 * x_749) + 1.000010014f);
  let x_754 : f32 = u_xlat1.x;
  let x_756 : f32 = u_xlat1.x;
  u_xlat1.x = (x_754 * x_756);
  let x_759 : f32 = u_xlat33;
  let x_760 : f32 = u_xlat33;
  u_xlat33 = (x_759 * x_760);
  let x_763 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_763, 0.100000001f);
  let x_767 : f32 = u_xlat33;
  let x_769 : f32 = u_xlat1.x;
  u_xlat33 = (x_767 * x_769);
  let x_771 : f32 = u_xlat34;
  let x_772 : f32 = u_xlat33;
  u_xlat33 = (x_771 * x_772);
  let x_774 : f32 = u_xlat12;
  let x_775 : f32 = u_xlat33;
  u_xlat33 = (x_774 / x_775);
  let x_777 : vec4<f32> = u_xlat0;
  let x_779 : f32 = u_xlat33;
  let x_782 : vec3<f32> = u_xlat13;
  let x_783 : vec3<f32> = ((vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(x_779, x_779, x_779)) + x_782);
  let x_784 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec3<f32> = u_xlat6;
  let x_787 : vec4<f32> = u_xlat7;
  u_xlat6 = (x_786 * vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_791 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_793 : f32 = x_609.unity_LightData.y;
  u_xlat33 = min(x_791, x_793);
  let x_797 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_797));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_809 : u32 = u_xlatu_loop_1;
    let x_810 : u32 = u_xlatu33;
    if ((x_809 < x_810)) {
    } else {
      break;
    }
    let x_813 : u32 = u_xlatu_loop_1;
    u_xlatu23 = (x_813 >> 2u);
    let x_817 : u32 = u_xlatu_loop_1;
    u_xlati37 = bitcast<i32>((x_817 & 3u));
    let x_820 : u32 = u_xlatu23;
    let x_823 : vec4<f32> = x_609.unity_LightIndices[bitcast<i32>(x_820)];
    let x_833 : i32 = u_xlati37;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_838 : vec4<u32> = indexable[x_833];
    u_xlat23.x = dot(x_823, bitcast<vec4<f32>>(x_838));
    let x_844 : f32 = u_xlat23.x;
    u_xlati23 = i32(x_844);
    let x_846 : vec3<f32> = vs_TEXCOORD1;
    let x_858 : i32 = u_xlati23;
    let x_860 : vec4<f32> = x_857.x_AdditionalLightsPosition[x_858];
    let x_863 : i32 = u_xlati23;
    let x_865 : vec4<f32> = x_857.x_AdditionalLightsPosition[x_863];
    u_xlat19 = ((-(x_846) * vec3<f32>(x_860.w, x_860.w, x_860.w)) + vec3<f32>(x_865.x, x_865.y, x_865.z));
    let x_868 : vec3<f32> = u_xlat19;
    let x_869 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_868, x_869);
    let x_871 : f32 = u_xlat37;
    u_xlat37 = max(x_871, 6.10351562e-05f);
    let x_874 : f32 = u_xlat37;
    u_xlat39 = inverseSqrt(x_874);
    let x_877 : f32 = u_xlat39;
    let x_879 : vec3<f32> = u_xlat19;
    u_xlat9 = (vec3<f32>(x_877, x_877, x_877) * x_879);
    let x_881 : f32 = u_xlat37;
    u_xlat40 = (1.0f / x_881);
    let x_883 : f32 = u_xlat37;
    let x_884 : i32 = u_xlati23;
    let x_886 : f32 = x_857.x_AdditionalLightsAttenuation[x_884].x;
    u_xlat37 = (x_883 * x_886);
    let x_888 : f32 = u_xlat37;
    let x_890 : f32 = u_xlat37;
    u_xlat37 = ((-(x_888) * x_890) + 1.0f);
    let x_893 : f32 = u_xlat37;
    u_xlat37 = max(x_893, 0.0f);
    let x_895 : f32 = u_xlat37;
    let x_896 : f32 = u_xlat37;
    u_xlat37 = (x_895 * x_896);
    let x_898 : f32 = u_xlat37;
    let x_899 : f32 = u_xlat40;
    u_xlat37 = (x_898 * x_899);
    let x_901 : i32 = u_xlati23;
    let x_903 : vec4<f32> = x_857.x_AdditionalLightsSpotDir[x_901];
    let x_905 : vec3<f32> = u_xlat9;
    u_xlat40 = dot(vec3<f32>(x_903.x, x_903.y, x_903.z), x_905);
    let x_907 : f32 = u_xlat40;
    let x_908 : i32 = u_xlati23;
    let x_910 : f32 = x_857.x_AdditionalLightsAttenuation[x_908].z;
    let x_912 : i32 = u_xlati23;
    let x_914 : f32 = x_857.x_AdditionalLightsAttenuation[x_912].w;
    u_xlat40 = ((x_907 * x_910) + x_914);
    let x_916 : f32 = u_xlat40;
    u_xlat40 = clamp(x_916, 0.0f, 1.0f);
    let x_918 : f32 = u_xlat40;
    let x_919 : f32 = u_xlat40;
    u_xlat40 = (x_918 * x_919);
    let x_921 : f32 = u_xlat37;
    let x_922 : f32 = u_xlat40;
    u_xlat37 = (x_921 * x_922);
    let x_925 : f32 = u_xlat38;
    let x_927 : i32 = u_xlati23;
    let x_929 : vec4<f32> = x_857.x_AdditionalLightsColor[x_927];
    u_xlat10 = (vec3<f32>(x_925, x_925, x_925) * vec3<f32>(x_929.x, x_929.y, x_929.z));
    let x_932 : vec3<f32> = u_xlat14;
    let x_933 : vec3<f32> = u_xlat9;
    u_xlat23.x = dot(x_932, x_933);
    let x_937 : f32 = u_xlat23.x;
    u_xlat23.x = clamp(x_937, 0.0f, 1.0f);
    let x_941 : f32 = u_xlat23.x;
    let x_942 : f32 = u_xlat37;
    u_xlat23.x = (x_941 * x_942);
    let x_945 : vec2<f32> = u_xlat23;
    let x_947 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_945.x, x_945.x, x_945.x) * x_947);
    let x_949 : vec3<f32> = u_xlat19;
    let x_950 : f32 = u_xlat39;
    let x_953 : vec3<f32> = u_xlat5;
    u_xlat19 = ((x_949 * vec3<f32>(x_950, x_950, x_950)) + x_953);
    let x_955 : vec3<f32> = u_xlat19;
    let x_956 : vec3<f32> = u_xlat19;
    u_xlat23.x = dot(x_955, x_956);
    let x_960 : f32 = u_xlat23.x;
    u_xlat23.x = max(x_960, 1.17549435e-37f);
    let x_964 : f32 = u_xlat23.x;
    u_xlat23.x = inverseSqrt(x_964);
    let x_967 : vec2<f32> = u_xlat23;
    let x_969 : vec3<f32> = u_xlat19;
    u_xlat19 = (vec3<f32>(x_967.x, x_967.x, x_967.x) * x_969);
    let x_971 : vec3<f32> = u_xlat14;
    let x_972 : vec3<f32> = u_xlat19;
    u_xlat23.x = dot(x_971, x_972);
    let x_976 : f32 = u_xlat23.x;
    u_xlat23.x = clamp(x_976, 0.0f, 1.0f);
    let x_979 : vec3<f32> = u_xlat9;
    let x_980 : vec3<f32> = u_xlat19;
    u_xlat37 = dot(x_979, x_980);
    let x_982 : f32 = u_xlat37;
    u_xlat37 = clamp(x_982, 0.0f, 1.0f);
    let x_985 : f32 = u_xlat23.x;
    let x_987 : f32 = u_xlat23.x;
    u_xlat23.x = (x_985 * x_987);
    let x_991 : f32 = u_xlat23.x;
    let x_993 : f32 = u_xlat8.x;
    u_xlat23.x = ((x_991 * x_993) + 1.000010014f);
    let x_997 : f32 = u_xlat37;
    let x_998 : f32 = u_xlat37;
    u_xlat37 = (x_997 * x_998);
    let x_1001 : f32 = u_xlat23.x;
    let x_1003 : f32 = u_xlat23.x;
    u_xlat23.x = (x_1001 * x_1003);
    let x_1006 : f32 = u_xlat37;
    u_xlat37 = max(x_1006, 0.100000001f);
    let x_1009 : f32 = u_xlat23.x;
    let x_1010 : f32 = u_xlat37;
    u_xlat23.x = (x_1009 * x_1010);
    let x_1013 : f32 = u_xlat34;
    let x_1015 : f32 = u_xlat23.x;
    u_xlat23.x = (x_1013 * x_1015);
    let x_1018 : f32 = u_xlat12;
    let x_1020 : f32 = u_xlat23.x;
    u_xlat23.x = (x_1018 / x_1020);
    let x_1023 : vec4<f32> = u_xlat0;
    let x_1025 : vec2<f32> = u_xlat23;
    let x_1028 : vec3<f32> = u_xlat13;
    u_xlat19 = ((vec3<f32>(x_1023.x, x_1023.y, x_1023.z) * vec3<f32>(x_1025.x, x_1025.x, x_1025.x)) + x_1028);
    let x_1030 : vec3<f32> = u_xlat19;
    let x_1031 : vec3<f32> = u_xlat10;
    let x_1033 : vec4<f32> = u_xlat7;
    let x_1035 : vec3<f32> = ((x_1030 * x_1031) + vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
    let x_1036 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);

    continuing {
      let x_1038 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1038 + bitcast<u32>(1i));
    }
  }
  let x_1040 : vec4<f32> = u_xlat4;
  let x_1042 : vec3<f32> = u_xlat3;
  let x_1045 : vec3<f32> = u_xlat6;
  let x_1046 : vec3<f32> = ((vec3<f32>(x_1040.x, x_1040.y, x_1040.z) * vec3<f32>(x_1042.x, x_1042.x, x_1042.x)) + x_1045);
  let x_1047 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1051 : vec4<f32> = u_xlat7;
  let x_1053 : vec4<f32> = u_xlat0;
  let x_1055 : vec3<f32> = (vec3<f32>(x_1051.x, x_1051.y, x_1051.z) + vec3<f32>(x_1053.x, x_1053.y, x_1053.z));
  let x_1056 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1056.w);
  let x_1061 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1061 == 1.0f);
  let x_1063 : bool = u_xlatb0;
  if (x_1063) {
    let x_1068 : f32 = u_xlat2.x;
    x_1064 = x_1068;
  } else {
    x_1064 = 1.0f;
  }
  let x_1070 : f32 = x_1064;
  SV_Target0.w = x_1070;
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

