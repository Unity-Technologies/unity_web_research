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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(5) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

@group(1) @binding(3) var<uniform> x_69 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_256 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(6) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(7) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_790 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1058 : AdditionalLights;

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
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu33 : u32;
  var u_xlati33 : i32;
  var u_xlat34 : f32;
  var u_xlat13 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat37 : f32;
  var u_xlat38 : f32;
  var u_xlat39 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlatb16 : bool;
  var u_xlatb27 : bool;
  var x_669 : f32;
  var u_xlat27 : f32;
  var u_xlat40 : f32;
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
  var x_1283 : f32;
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
  let x_251 : vec3<f32> = vs_TEXCOORD1;
  let x_258 : vec4<f32> = x_256.x_CascadeShadowSplitSpheres0;
  let x_261 : vec3<f32> = (x_251 + -(vec3<f32>(x_258.x, x_258.y, x_258.z)));
  let x_262 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_265 : vec3<f32> = vs_TEXCOORD1;
  let x_267 : vec4<f32> = x_256.x_CascadeShadowSplitSpheres1;
  let x_270 : vec3<f32> = (x_265 + -(vec3<f32>(x_267.x, x_267.y, x_267.z)));
  let x_271 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_274 : vec3<f32> = vs_TEXCOORD1;
  let x_277 : vec4<f32> = x_256.x_CascadeShadowSplitSpheres2;
  u_xlat7 = (x_274 + -(vec3<f32>(x_277.x, x_277.y, x_277.z)));
  let x_282 : vec3<f32> = vs_TEXCOORD1;
  let x_285 : vec4<f32> = x_256.x_CascadeShadowSplitSpheres3;
  let x_288 : vec3<f32> = (x_282 + -(vec3<f32>(x_285.x, x_285.y, x_285.z)));
  let x_289 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : vec4<f32> = u_xlat6;
  let x_299 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_297.x, x_297.y, x_297.z), vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_303 : vec3<f32> = u_xlat7;
  let x_304 : vec3<f32> = u_xlat7;
  u_xlat5.z = dot(x_303, x_304);
  let x_307 : vec4<f32> = u_xlat8;
  let x_309 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_307.x, x_307.y, x_307.z), vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_316 : vec4<f32> = u_xlat5;
  let x_319 : vec4<f32> = x_256.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_316 < x_319);
  let x_322 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_326);
  let x_330 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_330);
  let x_334 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_334);
  let x_338 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_338);
  let x_343 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_343);
  let x_347 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_347);
  let x_350 : vec4<f32> = u_xlat5;
  let x_352 : vec4<f32> = u_xlat6;
  let x_354 : vec3<f32> = (vec3<f32>(x_350.x, x_350.y, x_350.z) + vec3<f32>(x_352.y, x_352.z, x_352.w));
  let x_355 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_354.x, x_354.y, x_354.z, x_355.w);
  let x_357 : vec4<f32> = u_xlat5;
  let x_360 : vec3<f32> = max(vec3<f32>(x_357.x, x_357.y, x_357.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_361 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_361.x, x_360.x, x_360.y, x_360.z);
  let x_363 : vec4<f32> = u_xlat6;
  u_xlat33 = dot(x_363, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_368 : f32 = u_xlat33;
  u_xlat33 = (-(x_368) + 4.0f);
  let x_373 : f32 = u_xlat33;
  u_xlatu33 = u32(x_373);
  let x_377 : u32 = u_xlatu33;
  u_xlati33 = (bitcast<i32>(x_377) << bitcast<u32>(2i));
  let x_380 : vec3<f32> = vs_TEXCOORD1;
  let x_382 : i32 = u_xlati33;
  let x_385 : i32 = u_xlati33;
  let x_389 : vec4<f32> = x_256.x_MainLightWorldToShadow[((x_382 + 1i) / 4i)][((x_385 + 1i) % 4i)];
  let x_391 : vec3<f32> = (vec3<f32>(x_380.y, x_380.y, x_380.y) * vec3<f32>(x_389.x, x_389.y, x_389.z));
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
  let x_394 : i32 = u_xlati33;
  let x_396 : i32 = u_xlati33;
  let x_399 : vec4<f32> = x_256.x_MainLightWorldToShadow[(x_394 / 4i)][(x_396 % 4i)];
  let x_401 : vec3<f32> = vs_TEXCOORD1;
  let x_404 : vec4<f32> = u_xlat5;
  let x_406 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_401.x, x_401.x, x_401.x)) + vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_409 : i32 = u_xlati33;
  let x_412 : i32 = u_xlati33;
  let x_416 : vec4<f32> = x_256.x_MainLightWorldToShadow[((x_409 + 2i) / 4i)][((x_412 + 2i) % 4i)];
  let x_418 : vec3<f32> = vs_TEXCOORD1;
  let x_421 : vec4<f32> = u_xlat5;
  let x_423 : vec3<f32> = ((vec3<f32>(x_416.x, x_416.y, x_416.z) * vec3<f32>(x_418.z, x_418.z, x_418.z)) + vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec4<f32> = u_xlat5;
  let x_428 : i32 = u_xlati33;
  let x_431 : i32 = u_xlati33;
  let x_435 : vec4<f32> = x_256.x_MainLightWorldToShadow[((x_428 + 3i) / 4i)][((x_431 + 3i) % 4i)];
  let x_437 : vec3<f32> = (vec3<f32>(x_426.x, x_426.y, x_426.z) + vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_438 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
  let x_441 : f32 = vs_TEXCOORD1.y;
  let x_443 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat33 = (x_441 * x_443);
  let x_446 : f32 = x_44.unity_MatrixV[0i].z;
  let x_448 : f32 = vs_TEXCOORD1.x;
  let x_450 : f32 = u_xlat33;
  u_xlat33 = ((x_446 * x_448) + x_450);
  let x_453 : f32 = x_44.unity_MatrixV[2i].z;
  let x_455 : f32 = vs_TEXCOORD1.z;
  let x_457 : f32 = u_xlat33;
  u_xlat33 = ((x_453 * x_455) + x_457);
  let x_459 : f32 = u_xlat33;
  let x_461 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat33 = (x_459 + x_461);
  let x_463 : f32 = u_xlat33;
  let x_467 : f32 = x_44.x_ProjectionParams.y;
  u_xlat33 = (-(x_463) + -(x_467));
  let x_470 : f32 = u_xlat33;
  u_xlat33 = max(x_470, 0.0f);
  let x_472 : f32 = u_xlat33;
  let x_474 : f32 = x_44.unity_FogParams.x;
  u_xlat33 = (x_472 * x_474);
  let x_482 : vec2<f32> = vs_TEXCOORD8;
  let x_484 : f32 = x_44.x_GlobalMipBias.x;
  let x_485 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_482, x_484);
  let x_486 : vec3<f32> = vec3<f32>(x_485.x, x_485.y, x_485.z);
  let x_487 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_491 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_492 : vec2<f32> = vec2<f32>(x_491.x, x_491.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_492.x, x_492.y));
  let x_497 : vec2<f32> = u_xlat23;
  let x_498 : vec4<f32> = hlslcc_FragCoord;
  let x_500 : vec2<f32> = (x_497 * vec2<f32>(x_498.x, x_498.y));
  let x_501 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_500.x, x_500.y, x_501.z);
  let x_504 : f32 = u_xlat7.y;
  let x_507 : f32 = x_44.x_ScaleBiasRt.x;
  let x_510 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_504 * x_507) + x_510);
  let x_514 : f32 = u_xlat23.x;
  u_xlat7.z = (-(x_514) + 1.0f);
  let x_519 : f32 = u_xlat1.x;
  u_xlat23.x = ((-(x_519) * 0.959999979f) + 0.959999979f);
  let x_527 : f32 = u_xlat1.y;
  let x_529 : f32 = x_69.x_Smoothness;
  let x_532 : f32 = u_xlat23.x;
  u_xlat34 = ((x_527 * x_529) + -(x_532));
  let x_536 : vec2<f32> = u_xlat23;
  let x_538 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_536.x, x_536.x, x_536.x) * vec3<f32>(x_538.y, x_538.z, x_538.w));
  let x_541 : vec4<f32> = u_xlat0;
  let x_544 : vec4<f32> = x_69.x_BaseColor;
  let x_549 : vec3<f32> = ((vec3<f32>(x_541.x, x_541.y, x_541.z) * vec3<f32>(x_544.x, x_544.y, x_544.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_550 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
  let x_552 : vec2<f32> = u_xlat1;
  let x_554 : vec4<f32> = u_xlat0;
  let x_559 : vec3<f32> = ((vec3<f32>(x_552.x, x_552.x, x_552.x) * vec3<f32>(x_554.x, x_554.y, x_554.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_560 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_563 : f32 = u_xlat1.y;
  let x_566 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_563) * x_566) + 1.0f);
  let x_572 : f32 = u_xlat1.x;
  let x_574 : f32 = u_xlat1.x;
  u_xlat12.x = (x_572 * x_574);
  let x_578 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_578, 0.0078125f);
  let x_583 : f32 = u_xlat12.x;
  let x_585 : f32 = u_xlat12.x;
  u_xlat23.x = (x_583 * x_585);
  let x_588 : f32 = u_xlat34;
  u_xlat34 = (x_588 + 1.0f);
  let x_590 : f32 = u_xlat34;
  u_xlat34 = clamp(x_590, 0.0f, 1.0f);
  let x_594 : f32 = u_xlat12.x;
  u_xlat37 = ((x_594 * 4.0f) + 2.0f);
  let x_603 : vec3<f32> = u_xlat7;
  let x_606 : f32 = x_44.x_GlobalMipBias.x;
  let x_607 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_603.x, x_603.z), x_606);
  u_xlat38 = x_607.x;
  let x_610 : f32 = u_xlat38;
  u_xlat39 = (x_610 + -1.0f);
  let x_613 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_614 : f32 = u_xlat39;
  u_xlat39 = ((x_613 * x_614) + 1.0f);
  let x_618 : f32 = u_xlat3.x;
  let x_619 : f32 = u_xlat38;
  u_xlat3.x = min(x_618, x_619);
  let x_623 : vec4<f32> = u_xlat5;
  let x_624 : vec2<f32> = vec2<f32>(x_623.x, x_623.y);
  let x_626 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_624.x, x_624.y, x_626);
  let x_638 : vec3<f32> = txVec0;
  let x_640 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_638.xy, x_638.z);
  u_xlat5.x = x_640;
  let x_644 : f32 = x_256.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_644) + 1.0f);
  let x_649 : f32 = u_xlat5.x;
  let x_651 : f32 = x_256.x_MainLightShadowParams.x;
  let x_654 : f32 = u_xlat16.x;
  u_xlat5.x = ((x_649 * x_651) + x_654);
  let x_659 : f32 = u_xlat5.z;
  u_xlatb16 = (0.0f >= x_659);
  let x_663 : f32 = u_xlat5.z;
  u_xlatb27 = (x_663 >= 1.0f);
  let x_665 : bool = u_xlatb27;
  let x_666 : bool = u_xlatb16;
  u_xlatb16 = (x_665 | x_666);
  let x_668 : bool = u_xlatb16;
  if (x_668) {
    x_669 = 1.0f;
  } else {
    let x_674 : f32 = u_xlat5.x;
    x_669 = x_674;
  }
  let x_675 : f32 = x_669;
  u_xlat5.x = x_675;
  let x_677 : vec3<f32> = vs_TEXCOORD1;
  let x_679 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_677 + -(x_679));
  let x_682 : vec3<f32> = u_xlat16;
  let x_683 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_682, x_683);
  let x_687 : f32 = u_xlat16.x;
  let x_689 : f32 = x_256.x_MainLightShadowParams.z;
  let x_692 : f32 = x_256.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_687 * x_689) + x_692);
  let x_696 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_696, 0.0f, 1.0f);
  let x_701 : f32 = u_xlat5.x;
  u_xlat27 = (-(x_701) + 1.0f);
  let x_705 : f32 = u_xlat16.x;
  let x_706 : f32 = u_xlat27;
  let x_709 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_705 * x_706) + x_709);
  let x_712 : f32 = u_xlat39;
  let x_715 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_712, x_712, x_712) * vec3<f32>(x_715.x, x_715.y, x_715.z));
  let x_718 : vec3<f32> = u_xlat14;
  let x_720 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_718), x_720);
  let x_724 : f32 = u_xlat7.x;
  let x_726 : f32 = u_xlat7.x;
  u_xlat7.x = (x_724 + x_726);
  let x_729 : vec3<f32> = u_xlat4;
  let x_730 : vec3<f32> = u_xlat7;
  let x_734 : vec3<f32> = u_xlat14;
  u_xlat7 = ((x_729 * -(vec3<f32>(x_730.x, x_730.x, x_730.x))) + -(x_734));
  let x_738 : vec3<f32> = u_xlat4;
  let x_739 : vec3<f32> = u_xlat14;
  u_xlat40 = dot(x_738, x_739);
  let x_741 : f32 = u_xlat40;
  u_xlat40 = clamp(x_741, 0.0f, 1.0f);
  let x_743 : f32 = u_xlat40;
  u_xlat40 = (-(x_743) + 1.0f);
  let x_746 : f32 = u_xlat40;
  let x_747 : f32 = u_xlat40;
  u_xlat40 = (x_746 * x_747);
  let x_749 : f32 = u_xlat40;
  let x_750 : f32 = u_xlat40;
  u_xlat40 = (x_749 * x_750);
  let x_753 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_753) * 0.699999988f) + 1.700000048f);
  let x_761 : f32 = u_xlat1.x;
  let x_763 : f32 = u_xlat8.x;
  u_xlat1.x = (x_761 * x_763);
  let x_767 : f32 = u_xlat1.x;
  u_xlat1.x = (x_767 * 6.0f);
  let x_779 : vec3<f32> = u_xlat7;
  let x_781 : f32 = u_xlat1.x;
  let x_782 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_779, x_781);
  u_xlat8 = x_782;
  let x_784 : f32 = u_xlat8.w;
  u_xlat1.x = (x_784 + -1.0f);
  let x_792 : f32 = x_790.unity_SpecCube0_HDR.w;
  let x_794 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_792 * x_794) + 1.0f);
  let x_799 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_799, 0.0f);
  let x_803 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_803);
  let x_807 : f32 = u_xlat1.x;
  let x_809 : f32 = x_790.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_807 * x_809);
  let x_813 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_813);
  let x_817 : f32 = u_xlat1.x;
  let x_819 : f32 = x_790.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_817 * x_819);
  let x_822 : vec4<f32> = u_xlat8;
  let x_824 : vec2<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_822.x, x_822.y, x_822.z) * vec3<f32>(x_824.x, x_824.x, x_824.x));
  let x_827 : vec3<f32> = u_xlat12;
  let x_829 : vec3<f32> = u_xlat12;
  u_xlat1 = ((vec2<f32>(x_827.x, x_827.x) * vec2<f32>(x_829.x, x_829.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_835 : f32 = u_xlat1.y;
  u_xlat12.x = (1.0f / x_835);
  let x_838 : vec4<f32> = u_xlat0;
  let x_841 : f32 = u_xlat34;
  let x_843 : vec3<f32> = (-(vec3<f32>(x_838.x, x_838.y, x_838.z)) + vec3<f32>(x_841, x_841, x_841));
  let x_844 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : f32 = u_xlat40;
  let x_848 : vec4<f32> = u_xlat8;
  let x_851 : vec4<f32> = u_xlat0;
  let x_853 : vec3<f32> = ((vec3<f32>(x_846, x_846, x_846) * vec3<f32>(x_848.x, x_848.y, x_848.z)) + vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec3<f32> = u_xlat12;
  let x_858 : vec4<f32> = u_xlat8;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.x, x_856.x, x_856.x) * vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec3<f32> = u_xlat7;
  let x_864 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_863 * vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_867 : vec4<f32> = u_xlat6;
  let x_869 : vec3<f32> = u_xlat13;
  let x_871 : vec3<f32> = u_xlat7;
  let x_872 : vec3<f32> = ((vec3<f32>(x_867.x, x_867.y, x_867.z) * x_869) + x_871);
  let x_873 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
  let x_876 : f32 = u_xlat5.x;
  let x_878 : f32 = x_790.unity_LightData.z;
  u_xlat12.x = (x_876 * x_878);
  let x_881 : vec3<f32> = u_xlat4;
  let x_883 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(x_881, vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_886 : f32 = u_xlat34;
  u_xlat34 = clamp(x_886, 0.0f, 1.0f);
  let x_888 : f32 = u_xlat34;
  let x_890 : f32 = u_xlat12.x;
  u_xlat12.x = (x_888 * x_890);
  let x_893 : vec3<f32> = u_xlat12;
  let x_895 : vec3<f32> = u_xlat16;
  let x_896 : vec3<f32> = (vec3<f32>(x_893.x, x_893.x, x_893.x) * x_895);
  let x_897 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec3<f32> = u_xlat14;
  let x_901 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_899 + vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec3<f32> = u_xlat7;
  let x_905 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_904, x_905);
  let x_909 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_909, 1.17549435e-37f);
  let x_914 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_914);
  let x_917 : vec3<f32> = u_xlat12;
  let x_919 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_917.x, x_917.x, x_917.x) * x_919);
  let x_921 : vec3<f32> = u_xlat4;
  let x_922 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_921, x_922);
  let x_926 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_926, 0.0f, 1.0f);
  let x_930 : vec4<f32> = x_44.x_MainLightPosition;
  let x_932 : vec3<f32> = u_xlat7;
  u_xlat12.z = dot(vec3<f32>(x_930.x, x_930.y, x_930.z), x_932);
  let x_936 : f32 = u_xlat12.z;
  u_xlat12.z = clamp(x_936, 0.0f, 1.0f);
  let x_939 : vec3<f32> = u_xlat12;
  let x_941 : vec3<f32> = u_xlat12;
  let x_943 : vec2<f32> = (vec2<f32>(x_939.x, x_939.z) * vec2<f32>(x_941.x, x_941.z));
  let x_944 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_943.x, x_944.y, x_943.y);
  let x_947 : f32 = u_xlat12.x;
  let x_949 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_947 * x_949) + 1.000010014f);
  let x_955 : f32 = u_xlat12.x;
  let x_957 : f32 = u_xlat12.x;
  u_xlat12.x = (x_955 * x_957);
  let x_961 : f32 = u_xlat12.z;
  u_xlat34 = max(x_961, 0.100000001f);
  let x_964 : f32 = u_xlat34;
  let x_966 : f32 = u_xlat12.x;
  u_xlat12.x = (x_964 * x_966);
  let x_969 : f32 = u_xlat37;
  let x_971 : f32 = u_xlat12.x;
  u_xlat12.x = (x_969 * x_971);
  let x_975 : f32 = u_xlat23.x;
  let x_977 : f32 = u_xlat12.x;
  u_xlat12.x = (x_975 / x_977);
  let x_980 : vec4<f32> = u_xlat0;
  let x_982 : vec3<f32> = u_xlat12;
  let x_985 : vec3<f32> = u_xlat13;
  u_xlat7 = ((vec3<f32>(x_980.x, x_980.y, x_980.z) * vec3<f32>(x_982.x, x_982.x, x_982.x)) + x_985);
  let x_987 : vec4<f32> = u_xlat5;
  let x_989 : vec3<f32> = u_xlat7;
  let x_990 : vec3<f32> = (vec3<f32>(x_987.x, x_987.y, x_987.z) * x_989);
  let x_991 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_994 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_996 : f32 = x_790.unity_LightData.y;
  u_xlat12.x = min(x_994, x_996);
  let x_1001 : f32 = u_xlat12.x;
  u_xlatu12 = bitcast<u32>(i32(x_1001));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1013 : u32 = u_xlatu_loop_1;
    let x_1014 : u32 = u_xlatu12;
    if ((x_1013 < x_1014)) {
    } else {
      break;
    }
    let x_1017 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1017 >> 2u);
    let x_1020 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1020 & 3u));
    let x_1023 : u32 = u_xlatu38;
    let x_1026 : vec4<f32> = x_790.unity_LightIndices[bitcast<i32>(x_1023)];
    let x_1036 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1041 : vec4<u32> = indexable[x_1036];
    u_xlat38 = dot(x_1026, bitcast<vec4<f32>>(x_1041));
    let x_1045 : f32 = u_xlat38;
    u_xlati38 = i32(x_1045);
    let x_1047 : vec3<f32> = vs_TEXCOORD1;
    let x_1059 : i32 = u_xlati38;
    let x_1061 : vec4<f32> = x_1058.x_AdditionalLightsPosition[x_1059];
    let x_1064 : i32 = u_xlati38;
    let x_1066 : vec4<f32> = x_1058.x_AdditionalLightsPosition[x_1064];
    let x_1068 : vec3<f32> = ((-(x_1047) * vec3<f32>(x_1061.w, x_1061.w, x_1061.w)) + vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
    let x_1069 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
    let x_1071 : vec4<f32> = u_xlat8;
    let x_1073 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1071.x, x_1071.y, x_1071.z), vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
    let x_1076 : f32 = u_xlat40;
    u_xlat40 = max(x_1076, 6.10351562e-05f);
    let x_1080 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1080);
    let x_1083 : f32 = u_xlat41;
    let x_1085 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1083, x_1083, x_1083) * vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
    let x_1089 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1089);
    let x_1091 : f32 = u_xlat40;
    let x_1092 : i32 = u_xlati38;
    let x_1094 : f32 = x_1058.x_AdditionalLightsAttenuation[x_1092].x;
    u_xlat40 = (x_1091 * x_1094);
    let x_1096 : f32 = u_xlat40;
    let x_1098 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1096) * x_1098) + 1.0f);
    let x_1101 : f32 = u_xlat40;
    u_xlat40 = max(x_1101, 0.0f);
    let x_1103 : f32 = u_xlat40;
    let x_1104 : f32 = u_xlat40;
    u_xlat40 = (x_1103 * x_1104);
    let x_1106 : f32 = u_xlat40;
    let x_1107 : f32 = u_xlat42;
    u_xlat40 = (x_1106 * x_1107);
    let x_1109 : i32 = u_xlati38;
    let x_1111 : vec4<f32> = x_1058.x_AdditionalLightsSpotDir[x_1109];
    let x_1113 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1111.x, x_1111.y, x_1111.z), x_1113);
    let x_1115 : f32 = u_xlat42;
    let x_1116 : i32 = u_xlati38;
    let x_1118 : f32 = x_1058.x_AdditionalLightsAttenuation[x_1116].z;
    let x_1120 : i32 = u_xlati38;
    let x_1122 : f32 = x_1058.x_AdditionalLightsAttenuation[x_1120].w;
    u_xlat42 = ((x_1115 * x_1118) + x_1122);
    let x_1124 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1124, 0.0f, 1.0f);
    let x_1126 : f32 = u_xlat42;
    let x_1127 : f32 = u_xlat42;
    u_xlat42 = (x_1126 * x_1127);
    let x_1129 : f32 = u_xlat40;
    let x_1130 : f32 = u_xlat42;
    u_xlat40 = (x_1129 * x_1130);
    let x_1133 : f32 = u_xlat39;
    let x_1135 : i32 = u_xlati38;
    let x_1137 : vec4<f32> = x_1058.x_AdditionalLightsColor[x_1135];
    u_xlat10 = (vec3<f32>(x_1133, x_1133, x_1133) * vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
    let x_1140 : vec3<f32> = u_xlat4;
    let x_1141 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_1140, x_1141);
    let x_1143 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1143, 0.0f, 1.0f);
    let x_1145 : f32 = u_xlat38;
    let x_1146 : f32 = u_xlat40;
    u_xlat38 = (x_1145 * x_1146);
    let x_1148 : f32 = u_xlat38;
    let x_1150 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1148, x_1148, x_1148) * x_1150);
    let x_1152 : vec4<f32> = u_xlat8;
    let x_1154 : f32 = u_xlat41;
    let x_1157 : vec3<f32> = u_xlat14;
    let x_1158 : vec3<f32> = ((vec3<f32>(x_1152.x, x_1152.y, x_1152.z) * vec3<f32>(x_1154, x_1154, x_1154)) + x_1157);
    let x_1159 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
    let x_1161 : vec4<f32> = u_xlat8;
    let x_1163 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1161.x, x_1161.y, x_1161.z), vec3<f32>(x_1163.x, x_1163.y, x_1163.z));
    let x_1166 : f32 = u_xlat38;
    u_xlat38 = max(x_1166, 1.17549435e-37f);
    let x_1168 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1168);
    let x_1170 : f32 = u_xlat38;
    let x_1172 : vec4<f32> = u_xlat8;
    let x_1174 : vec3<f32> = (vec3<f32>(x_1170, x_1170, x_1170) * vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
    let x_1175 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
    let x_1177 : vec3<f32> = u_xlat4;
    let x_1178 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1177, vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
    let x_1181 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1181, 0.0f, 1.0f);
    let x_1183 : vec3<f32> = u_xlat9;
    let x_1184 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1183, vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
    let x_1187 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1187, 0.0f, 1.0f);
    let x_1189 : f32 = u_xlat38;
    let x_1190 : f32 = u_xlat38;
    u_xlat38 = (x_1189 * x_1190);
    let x_1192 : f32 = u_xlat38;
    let x_1194 : f32 = u_xlat1.x;
    u_xlat38 = ((x_1192 * x_1194) + 1.000010014f);
    let x_1197 : f32 = u_xlat40;
    let x_1198 : f32 = u_xlat40;
    u_xlat40 = (x_1197 * x_1198);
    let x_1200 : f32 = u_xlat38;
    let x_1201 : f32 = u_xlat38;
    u_xlat38 = (x_1200 * x_1201);
    let x_1203 : f32 = u_xlat40;
    u_xlat40 = max(x_1203, 0.100000001f);
    let x_1205 : f32 = u_xlat38;
    let x_1206 : f32 = u_xlat40;
    u_xlat38 = (x_1205 * x_1206);
    let x_1208 : f32 = u_xlat37;
    let x_1209 : f32 = u_xlat38;
    u_xlat38 = (x_1208 * x_1209);
    let x_1212 : f32 = u_xlat23.x;
    let x_1213 : f32 = u_xlat38;
    u_xlat38 = (x_1212 / x_1213);
    let x_1215 : vec4<f32> = u_xlat0;
    let x_1217 : f32 = u_xlat38;
    let x_1220 : vec3<f32> = u_xlat13;
    let x_1221 : vec3<f32> = ((vec3<f32>(x_1215.x, x_1215.y, x_1215.z) * vec3<f32>(x_1217, x_1217, x_1217)) + x_1220);
    let x_1222 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1221.x, x_1221.y, x_1221.z, x_1222.w);
    let x_1224 : vec4<f32> = u_xlat8;
    let x_1226 : vec3<f32> = u_xlat10;
    let x_1228 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1224.x, x_1224.y, x_1224.z) * x_1226) + x_1228);

    continuing {
      let x_1230 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1230 + bitcast<u32>(1i));
    }
  }
  let x_1232 : vec4<f32> = u_xlat6;
  let x_1234 : vec3<f32> = u_xlat3;
  let x_1237 : vec4<f32> = u_xlat5;
  let x_1239 : vec3<f32> = ((vec3<f32>(x_1232.x, x_1232.y, x_1232.z) * vec3<f32>(x_1234.x, x_1234.x, x_1234.x)) + vec3<f32>(x_1237.x, x_1237.y, x_1237.z));
  let x_1240 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : vec3<f32> = u_xlat7;
  let x_1243 : vec4<f32> = u_xlat0;
  let x_1245 : vec3<f32> = (x_1242 + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1248 : f32 = u_xlat33;
  let x_1249 : f32 = u_xlat33;
  u_xlat33 = (x_1248 * -(x_1249));
  let x_1252 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1252);
  let x_1254 : vec4<f32> = u_xlat0;
  let x_1258 : vec4<f32> = x_44.unity_FogColor;
  let x_1261 : vec3<f32> = (vec3<f32>(x_1254.x, x_1254.y, x_1254.z) + -(vec3<f32>(x_1258.x, x_1258.y, x_1258.z)));
  let x_1262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
  let x_1266 : f32 = u_xlat33;
  let x_1268 : vec4<f32> = u_xlat0;
  let x_1272 : vec4<f32> = x_44.unity_FogColor;
  let x_1274 : vec3<f32> = ((vec3<f32>(x_1266, x_1266, x_1266) * vec3<f32>(x_1268.x, x_1268.y, x_1268.z)) + vec3<f32>(x_1272.x, x_1272.y, x_1272.z));
  let x_1275 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1274.x, x_1274.y, x_1274.z, x_1275.w);
  let x_1280 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1280 == 1.0f);
  let x_1282 : bool = u_xlatb0;
  if (x_1282) {
    let x_1287 : f32 = u_xlat2.x;
    x_1283 = x_1287;
  } else {
    x_1283 = 1.0f;
  }
  let x_1289 : f32 = x_1283;
  SV_Target0.w = x_1289;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD8_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  main_1();
  return main_out(SV_Target0);
}

