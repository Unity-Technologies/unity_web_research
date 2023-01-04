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

@group(1) @binding(4) var<uniform> x_505 : MainLightShadows;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_644 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_909 : AdditionalLights;

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
  var u_xlat4 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat5 : vec4<f32>;
  var x_198 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
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
  var u_xlat7 : vec3<f32>;
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
  var x_1133 : f32;
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
  u_xlat4 = (-(x_168) + x_173);
  let x_176 : vec3<f32> = u_xlat4;
  let x_177 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_176, x_177);
  let x_179 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_179);
  let x_181 : f32 = u_xlat25;
  let x_183 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_181, x_181, x_181) * x_183);
  let x_189 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat5.x = x_189;
  let x_192 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat5.y = x_192;
  let x_195 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat5.z = x_195;
  let x_197 : bool = u_xlatb14;
  if (x_197) {
    let x_201 : vec3<f32> = u_xlat4;
    x_198 = x_201;
  } else {
    let x_203 : vec4<f32> = u_xlat5;
    x_198 = vec3<f32>(x_203.x, x_203.y, x_203.z);
  }
  let x_205 : vec3<f32> = x_198;
  u_xlat14 = x_205;
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
  let x_225 : vec2<f32> = u_xlat23;
  let x_227 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_225.y, x_225.y, x_225.y) * x_227);
  let x_229 : vec2<f32> = u_xlat23;
  let x_231 : vec4<f32> = vs_TEXCOORD3;
  let x_234 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_229.x, x_229.x, x_229.x) * vec3<f32>(x_231.x, x_231.y, x_231.z)) + x_234);
  let x_236 : f32 = u_xlat33;
  let x_238 : vec3<f32> = vs_TEXCOORD2;
  let x_240 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_236, x_236, x_236) * x_238) + x_240);
  let x_242 : vec3<f32> = u_xlat4;
  let x_243 : vec3<f32> = u_xlat4;
  u_xlat33 = dot(x_242, x_243);
  let x_245 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_245);
  let x_247 : f32 = u_xlat33;
  let x_249 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_247, x_247, x_247) * x_249);
  let x_252 : f32 = vs_TEXCOORD1.y;
  let x_254 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_252 * x_254);
  let x_257 : f32 = x_44.unity_MatrixV[0i].z;
  let x_259 : f32 = vs_TEXCOORD1.x;
  let x_261 : f32 = u_xlat33;
  u_xlat33 = ((x_257 * x_259) + x_261);
  let x_264 : f32 = x_44.unity_MatrixV[2i].z;
  let x_266 : f32 = vs_TEXCOORD1.z;
  let x_268 : f32 = u_xlat33;
  u_xlat33 = ((x_264 * x_266) + x_268);
  let x_270 : f32 = u_xlat33;
  let x_273 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_270 + x_273);
  let x_275 : f32 = u_xlat33;
  let x_279 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_275) + -(x_279));
  let x_282 : f32 = u_xlat33;
  u_xlat33 = max(x_282, 0.0f);
  let x_284 : f32 = u_xlat33;
  let x_286 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_284 * x_286);
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
  u_xlat23.x = dot(x_315, vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_321 : f32 = u_xlat23.x;
  u_xlat23.x = (x_321 + 0.5f);
  let x_325 : vec2<f32> = u_xlat23;
  let x_327 : vec3<f32> = u_xlat6;
  let x_328 : vec3<f32> = (vec3<f32>(x_325.x, x_325.x, x_325.x) * x_327);
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_332 : f32 = u_xlat5.w;
  u_xlat23.x = max(x_332, 0.0001f);
  let x_336 : vec4<f32> = u_xlat5;
  let x_338 : vec2<f32> = u_xlat23;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) / vec3<f32>(x_338.x, x_338.x, x_338.x));
  let x_341 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_345 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_346 : vec2<f32> = vec2<f32>(x_345.x, x_345.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_346.x, x_346.y));
  let x_351 : vec2<f32> = u_xlat23;
  let x_352 : vec4<f32> = hlslcc_FragCoord;
  let x_354 : vec2<f32> = (x_351 * vec2<f32>(x_352.x, x_352.y));
  let x_355 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_354.x, x_354.y, x_355.z);
  let x_358 : f32 = u_xlat6.y;
  let x_361 : f32 = x_44.x_ScaleBiasRt.x;
  let x_364 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_358 * x_361) + x_364);
  let x_368 : f32 = u_xlat23.x;
  u_xlat6.z = (-(x_368) + 1.0f);
  let x_373 : f32 = u_xlat1.x;
  u_xlat23.x = ((-(x_373) * 0.959999979f) + 0.959999979f);
  let x_381 : f32 = u_xlat1.y;
  let x_383 : f32 = x_69.x_Smoothness;
  let x_386 : f32 = u_xlat23.x;
  u_xlat34 = ((x_381 * x_383) + -(x_386));
  let x_390 : vec2<f32> = u_xlat23;
  let x_392 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.y, x_392.z, x_392.w));
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
  u_xlat12.x = (x_426 * x_428);
  let x_432 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_432, 0.0078125f);
  let x_437 : f32 = u_xlat12.x;
  let x_439 : f32 = u_xlat12.x;
  u_xlat23.x = (x_437 * x_439);
  let x_442 : f32 = u_xlat34;
  u_xlat34 = (x_442 + 1.0f);
  let x_444 : f32 = u_xlat34;
  u_xlat34 = clamp(x_444, 0.0f, 1.0f);
  let x_448 : f32 = u_xlat12.x;
  u_xlat37 = ((x_448 * 4.0f) + 2.0f);
  let x_458 : vec3<f32> = u_xlat6;
  let x_461 : f32 = x_44.x_GlobalMipBias.x;
  let x_462 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_458.x, x_458.z), x_461);
  u_xlat38 = x_462.x;
  let x_464 : f32 = u_xlat38;
  u_xlat6.x = (x_464 + -1.0f);
  let x_469 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_471 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_469 * x_471) + 1.0f);
  let x_476 : f32 = u_xlat3.x;
  let x_477 : f32 = u_xlat38;
  u_xlat3.x = min(x_476, x_477);
  let x_482 : vec4<f32> = vs_TEXCOORD6;
  let x_483 : vec2<f32> = vec2<f32>(x_482.x, x_482.y);
  let x_485 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_483.x, x_483.y, x_485);
  let x_497 : vec3<f32> = txVec0;
  let x_499 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_497.xy, x_497.z);
  u_xlat38 = x_499;
  let x_507 : f32 = x_505.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_507) + 1.0f);
  let x_511 : f32 = u_xlat38;
  let x_513 : f32 = x_505.x_MainLightShadowParams.x;
  let x_516 : f32 = u_xlat17.x;
  u_xlat38 = ((x_511 * x_513) + x_516);
  let x_520 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_520);
  let x_524 : f32 = vs_TEXCOORD6.z;
  u_xlatb28 = (x_524 >= 1.0f);
  let x_526 : bool = u_xlatb28;
  let x_527 : bool = u_xlatb17;
  u_xlatb17 = (x_526 | x_527);
  let x_529 : bool = u_xlatb17;
  let x_530 : f32 = u_xlat38;
  u_xlat38 = select(x_530, 1.0f, x_529);
  let x_532 : vec3<f32> = vs_TEXCOORD1;
  let x_534 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat17 = (x_532 + -(x_534));
  let x_537 : vec3<f32> = u_xlat17;
  let x_538 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_537, x_538);
  let x_542 : f32 = u_xlat17.x;
  let x_544 : f32 = x_505.x_MainLightShadowParams.z;
  let x_547 : f32 = x_505.x_MainLightShadowParams.w;
  u_xlat17.x = ((x_542 * x_544) + x_547);
  let x_551 : f32 = u_xlat17.x;
  u_xlat17.x = clamp(x_551, 0.0f, 1.0f);
  let x_555 : f32 = u_xlat38;
  u_xlat28 = (-(x_555) + 1.0f);
  let x_559 : f32 = u_xlat17.x;
  let x_560 : f32 = u_xlat28;
  let x_562 : f32 = u_xlat38;
  u_xlat38 = ((x_559 * x_560) + x_562);
  let x_564 : vec3<f32> = u_xlat6;
  let x_567 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat17 = (vec3<f32>(x_564.x, x_564.x, x_564.x) * vec3<f32>(x_567.x, x_567.y, x_567.z));
  let x_571 : vec3<f32> = u_xlat14;
  let x_573 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_571), x_573);
  let x_577 : f32 = u_xlat7.x;
  let x_579 : f32 = u_xlat7.x;
  u_xlat7.x = (x_577 + x_579);
  let x_582 : vec3<f32> = u_xlat4;
  let x_583 : vec3<f32> = u_xlat7;
  let x_587 : vec3<f32> = u_xlat14;
  u_xlat7 = ((x_582 * -(vec3<f32>(x_583.x, x_583.x, x_583.x))) + -(x_587));
  let x_591 : vec3<f32> = u_xlat4;
  let x_592 : vec3<f32> = u_xlat14;
  u_xlat40 = dot(x_591, x_592);
  let x_594 : f32 = u_xlat40;
  u_xlat40 = clamp(x_594, 0.0f, 1.0f);
  let x_596 : f32 = u_xlat40;
  u_xlat40 = (-(x_596) + 1.0f);
  let x_599 : f32 = u_xlat40;
  let x_600 : f32 = u_xlat40;
  u_xlat40 = (x_599 * x_600);
  let x_602 : f32 = u_xlat40;
  let x_603 : f32 = u_xlat40;
  u_xlat40 = (x_602 * x_603);
  let x_607 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_607) * 0.699999988f) + 1.700000048f);
  let x_615 : f32 = u_xlat1.x;
  let x_617 : f32 = u_xlat8.x;
  u_xlat1.x = (x_615 * x_617);
  let x_621 : f32 = u_xlat1.x;
  u_xlat1.x = (x_621 * 6.0f);
  let x_633 : vec3<f32> = u_xlat7;
  let x_635 : f32 = u_xlat1.x;
  let x_636 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_633, x_635);
  u_xlat8 = x_636;
  let x_638 : f32 = u_xlat8.w;
  u_xlat1.x = (x_638 + -1.0f);
  let x_646 : f32 = x_644.unity_SpecCube0_HDR.w;
  let x_648 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_646 * x_648) + 1.0f);
  let x_653 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_653, 0.0f);
  let x_657 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_657);
  let x_661 : f32 = u_xlat1.x;
  let x_663 : f32 = x_644.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_661 * x_663);
  let x_667 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_667);
  let x_671 : f32 = u_xlat1.x;
  let x_673 : f32 = x_644.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_671 * x_673);
  let x_676 : vec4<f32> = u_xlat8;
  let x_678 : vec2<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678.x, x_678.x, x_678.x));
  let x_681 : vec3<f32> = u_xlat12;
  let x_683 : vec3<f32> = u_xlat12;
  u_xlat1 = ((vec2<f32>(x_681.x, x_681.x) * vec2<f32>(x_683.x, x_683.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_689 : f32 = u_xlat1.y;
  u_xlat12.x = (1.0f / x_689);
  let x_692 : vec4<f32> = u_xlat0;
  let x_695 : f32 = u_xlat34;
  let x_697 : vec3<f32> = (-(vec3<f32>(x_692.x, x_692.y, x_692.z)) + vec3<f32>(x_695, x_695, x_695));
  let x_698 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : f32 = u_xlat40;
  let x_702 : vec4<f32> = u_xlat8;
  let x_705 : vec4<f32> = u_xlat0;
  let x_707 : vec3<f32> = ((vec3<f32>(x_700, x_700, x_700) * vec3<f32>(x_702.x, x_702.y, x_702.z)) + vec3<f32>(x_705.x, x_705.y, x_705.z));
  let x_708 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec3<f32> = u_xlat12;
  let x_712 : vec4<f32> = u_xlat8;
  let x_714 : vec3<f32> = (vec3<f32>(x_710.x, x_710.x, x_710.x) * vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec3<f32> = u_xlat7;
  let x_718 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_717 * vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat5;
  let x_723 : vec3<f32> = u_xlat13;
  let x_725 : vec3<f32> = u_xlat7;
  let x_726 : vec3<f32> = ((vec3<f32>(x_721.x, x_721.y, x_721.z) * x_723) + x_725);
  let x_727 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : f32 = u_xlat38;
  let x_732 : f32 = x_644.unity_LightData.z;
  u_xlat12.x = (x_729 * x_732);
  let x_735 : vec3<f32> = u_xlat4;
  let x_737 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(x_735, vec3<f32>(x_737.x, x_737.y, x_737.z));
  let x_740 : f32 = u_xlat34;
  u_xlat34 = clamp(x_740, 0.0f, 1.0f);
  let x_742 : f32 = u_xlat34;
  let x_744 : f32 = u_xlat12.x;
  u_xlat12.x = (x_742 * x_744);
  let x_747 : vec3<f32> = u_xlat12;
  let x_749 : vec3<f32> = u_xlat17;
  u_xlat17 = (vec3<f32>(x_747.x, x_747.x, x_747.x) * x_749);
  let x_751 : vec3<f32> = u_xlat14;
  let x_753 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_751 + vec3<f32>(x_753.x, x_753.y, x_753.z));
  let x_756 : vec3<f32> = u_xlat7;
  let x_757 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_756, x_757);
  let x_761 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_761, 1.17549435e-37f);
  let x_766 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_766);
  let x_769 : vec3<f32> = u_xlat12;
  let x_771 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_769.x, x_769.x, x_769.x) * x_771);
  let x_773 : vec3<f32> = u_xlat4;
  let x_774 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_773, x_774);
  let x_778 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_778, 0.0f, 1.0f);
  let x_782 : vec4<f32> = x_44.x_MainLightPosition;
  let x_784 : vec3<f32> = u_xlat7;
  u_xlat12.z = dot(vec3<f32>(x_782.x, x_782.y, x_782.z), x_784);
  let x_788 : f32 = u_xlat12.z;
  u_xlat12.z = clamp(x_788, 0.0f, 1.0f);
  let x_791 : vec3<f32> = u_xlat12;
  let x_793 : vec3<f32> = u_xlat12;
  let x_795 : vec2<f32> = (vec2<f32>(x_791.x, x_791.z) * vec2<f32>(x_793.x, x_793.z));
  let x_796 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_795.x, x_796.y, x_795.y);
  let x_799 : f32 = u_xlat12.x;
  let x_801 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_799 * x_801) + 1.000010014f);
  let x_807 : f32 = u_xlat12.x;
  let x_809 : f32 = u_xlat12.x;
  u_xlat12.x = (x_807 * x_809);
  let x_813 : f32 = u_xlat12.z;
  u_xlat34 = max(x_813, 0.100000001f);
  let x_816 : f32 = u_xlat34;
  let x_818 : f32 = u_xlat12.x;
  u_xlat12.x = (x_816 * x_818);
  let x_821 : f32 = u_xlat37;
  let x_823 : f32 = u_xlat12.x;
  u_xlat12.x = (x_821 * x_823);
  let x_827 : f32 = u_xlat23.x;
  let x_829 : f32 = u_xlat12.x;
  u_xlat12.x = (x_827 / x_829);
  let x_832 : vec4<f32> = u_xlat0;
  let x_834 : vec3<f32> = u_xlat12;
  let x_837 : vec3<f32> = u_xlat13;
  u_xlat7 = ((vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(x_834.x, x_834.x, x_834.x)) + x_837);
  let x_839 : vec3<f32> = u_xlat17;
  let x_840 : vec3<f32> = u_xlat7;
  u_xlat17 = (x_839 * x_840);
  let x_843 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_845 : f32 = x_644.unity_LightData.y;
  u_xlat12.x = min(x_843, x_845);
  let x_851 : f32 = u_xlat12.x;
  u_xlatu12 = bitcast<u32>(i32(x_851));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_863 : u32 = u_xlatu_loop_1;
    let x_864 : u32 = u_xlatu12;
    if ((x_863 < x_864)) {
    } else {
      break;
    }
    let x_867 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_867 >> 2u);
    let x_871 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_871 & 3u));
    let x_874 : u32 = u_xlatu38;
    let x_877 : vec4<f32> = x_644.unity_LightIndices[bitcast<i32>(x_874)];
    let x_887 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_892 : vec4<u32> = indexable[x_887];
    u_xlat38 = dot(x_877, bitcast<vec4<f32>>(x_892));
    let x_896 : f32 = u_xlat38;
    u_xlati38 = i32(x_896);
    let x_898 : vec3<f32> = vs_TEXCOORD1;
    let x_910 : i32 = u_xlati38;
    let x_912 : vec4<f32> = x_909.x_AdditionalLightsPosition[x_910];
    let x_915 : i32 = u_xlati38;
    let x_917 : vec4<f32> = x_909.x_AdditionalLightsPosition[x_915];
    let x_919 : vec3<f32> = ((-(x_898) * vec3<f32>(x_912.w, x_912.w, x_912.w)) + vec3<f32>(x_917.x, x_917.y, x_917.z));
    let x_920 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
    let x_922 : vec4<f32> = u_xlat8;
    let x_924 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_922.x, x_922.y, x_922.z), vec3<f32>(x_924.x, x_924.y, x_924.z));
    let x_927 : f32 = u_xlat40;
    u_xlat40 = max(x_927, 6.10351562e-05f);
    let x_931 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_931);
    let x_934 : f32 = u_xlat41;
    let x_936 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_934, x_934, x_934) * vec3<f32>(x_936.x, x_936.y, x_936.z));
    let x_940 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_940);
    let x_942 : f32 = u_xlat40;
    let x_943 : i32 = u_xlati38;
    let x_945 : f32 = x_909.x_AdditionalLightsAttenuation[x_943].x;
    u_xlat40 = (x_942 * x_945);
    let x_947 : f32 = u_xlat40;
    let x_949 : f32 = u_xlat40;
    u_xlat40 = ((-(x_947) * x_949) + 1.0f);
    let x_952 : f32 = u_xlat40;
    u_xlat40 = max(x_952, 0.0f);
    let x_954 : f32 = u_xlat40;
    let x_955 : f32 = u_xlat40;
    u_xlat40 = (x_954 * x_955);
    let x_957 : f32 = u_xlat40;
    let x_958 : f32 = u_xlat42;
    u_xlat40 = (x_957 * x_958);
    let x_960 : i32 = u_xlati38;
    let x_962 : vec4<f32> = x_909.x_AdditionalLightsSpotDir[x_960];
    let x_964 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_962.x, x_962.y, x_962.z), x_964);
    let x_966 : f32 = u_xlat42;
    let x_967 : i32 = u_xlati38;
    let x_969 : f32 = x_909.x_AdditionalLightsAttenuation[x_967].z;
    let x_971 : i32 = u_xlati38;
    let x_973 : f32 = x_909.x_AdditionalLightsAttenuation[x_971].w;
    u_xlat42 = ((x_966 * x_969) + x_973);
    let x_975 : f32 = u_xlat42;
    u_xlat42 = clamp(x_975, 0.0f, 1.0f);
    let x_977 : f32 = u_xlat42;
    let x_978 : f32 = u_xlat42;
    u_xlat42 = (x_977 * x_978);
    let x_980 : f32 = u_xlat40;
    let x_981 : f32 = u_xlat42;
    u_xlat40 = (x_980 * x_981);
    let x_984 : vec3<f32> = u_xlat6;
    let x_986 : i32 = u_xlati38;
    let x_988 : vec4<f32> = x_909.x_AdditionalLightsColor[x_986];
    u_xlat10 = (vec3<f32>(x_984.x, x_984.x, x_984.x) * vec3<f32>(x_988.x, x_988.y, x_988.z));
    let x_991 : vec3<f32> = u_xlat4;
    let x_992 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_991, x_992);
    let x_994 : f32 = u_xlat38;
    u_xlat38 = clamp(x_994, 0.0f, 1.0f);
    let x_996 : f32 = u_xlat38;
    let x_997 : f32 = u_xlat40;
    u_xlat38 = (x_996 * x_997);
    let x_999 : f32 = u_xlat38;
    let x_1001 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_999, x_999, x_999) * x_1001);
    let x_1003 : vec4<f32> = u_xlat8;
    let x_1005 : f32 = u_xlat41;
    let x_1008 : vec3<f32> = u_xlat14;
    let x_1009 : vec3<f32> = ((vec3<f32>(x_1003.x, x_1003.y, x_1003.z) * vec3<f32>(x_1005, x_1005, x_1005)) + x_1008);
    let x_1010 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1010.w);
    let x_1012 : vec4<f32> = u_xlat8;
    let x_1014 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1012.x, x_1012.y, x_1012.z), vec3<f32>(x_1014.x, x_1014.y, x_1014.z));
    let x_1017 : f32 = u_xlat38;
    u_xlat38 = max(x_1017, 1.17549435e-37f);
    let x_1019 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1019);
    let x_1021 : f32 = u_xlat38;
    let x_1023 : vec4<f32> = u_xlat8;
    let x_1025 : vec3<f32> = (vec3<f32>(x_1021, x_1021, x_1021) * vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
    let x_1026 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
    let x_1028 : vec3<f32> = u_xlat4;
    let x_1029 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1028, vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
    let x_1032 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1032, 0.0f, 1.0f);
    let x_1034 : vec3<f32> = u_xlat9;
    let x_1035 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1034, vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
    let x_1038 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1038, 0.0f, 1.0f);
    let x_1040 : f32 = u_xlat38;
    let x_1041 : f32 = u_xlat38;
    u_xlat38 = (x_1040 * x_1041);
    let x_1043 : f32 = u_xlat38;
    let x_1045 : f32 = u_xlat1.x;
    u_xlat38 = ((x_1043 * x_1045) + 1.000010014f);
    let x_1048 : f32 = u_xlat40;
    let x_1049 : f32 = u_xlat40;
    u_xlat40 = (x_1048 * x_1049);
    let x_1051 : f32 = u_xlat38;
    let x_1052 : f32 = u_xlat38;
    u_xlat38 = (x_1051 * x_1052);
    let x_1054 : f32 = u_xlat40;
    u_xlat40 = max(x_1054, 0.100000001f);
    let x_1056 : f32 = u_xlat38;
    let x_1057 : f32 = u_xlat40;
    u_xlat38 = (x_1056 * x_1057);
    let x_1059 : f32 = u_xlat37;
    let x_1060 : f32 = u_xlat38;
    u_xlat38 = (x_1059 * x_1060);
    let x_1063 : f32 = u_xlat23.x;
    let x_1064 : f32 = u_xlat38;
    u_xlat38 = (x_1063 / x_1064);
    let x_1066 : vec4<f32> = u_xlat0;
    let x_1068 : f32 = u_xlat38;
    let x_1071 : vec3<f32> = u_xlat13;
    let x_1072 : vec3<f32> = ((vec3<f32>(x_1066.x, x_1066.y, x_1066.z) * vec3<f32>(x_1068, x_1068, x_1068)) + x_1071);
    let x_1073 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
    let x_1075 : vec4<f32> = u_xlat8;
    let x_1077 : vec3<f32> = u_xlat10;
    let x_1079 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1075.x, x_1075.y, x_1075.z) * x_1077) + x_1079);

    continuing {
      let x_1081 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1081 + bitcast<u32>(1i));
    }
  }
  let x_1083 : vec4<f32> = u_xlat5;
  let x_1085 : vec3<f32> = u_xlat3;
  let x_1088 : vec3<f32> = u_xlat17;
  let x_1089 : vec3<f32> = ((vec3<f32>(x_1083.x, x_1083.y, x_1083.z) * vec3<f32>(x_1085.x, x_1085.x, x_1085.x)) + x_1088);
  let x_1090 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : vec3<f32> = u_xlat7;
  let x_1093 : vec4<f32> = u_xlat0;
  let x_1095 : vec3<f32> = (x_1092 + vec3<f32>(x_1093.x, x_1093.y, x_1093.z));
  let x_1096 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1098 : f32 = u_xlat33;
  let x_1099 : f32 = u_xlat33;
  u_xlat33 = (x_1098 * -(x_1099));
  let x_1102 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1102);
  let x_1104 : vec4<f32> = u_xlat0;
  let x_1108 : vec4<f32> = x_44.unity_FogColor;
  let x_1111 : vec3<f32> = (vec3<f32>(x_1104.x, x_1104.y, x_1104.z) + -(vec3<f32>(x_1108.x, x_1108.y, x_1108.z)));
  let x_1112 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
  let x_1116 : f32 = u_xlat33;
  let x_1118 : vec4<f32> = u_xlat0;
  let x_1122 : vec4<f32> = x_44.unity_FogColor;
  let x_1124 : vec3<f32> = ((vec3<f32>(x_1116, x_1116, x_1116) * vec3<f32>(x_1118.x, x_1118.y, x_1118.z)) + vec3<f32>(x_1122.x, x_1122.y, x_1122.z));
  let x_1125 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  let x_1130 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1130 == 1.0f);
  let x_1132 : bool = u_xlatb0;
  if (x_1132) {
    let x_1137 : f32 = u_xlat2.x;
    x_1133 = x_1137;
  } else {
    x_1133 = 1.0f;
  }
  let x_1139 : f32 = x_1133;
  SV_Target0.w = x_1139;
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

