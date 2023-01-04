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

@group(1) @binding(4) var<uniform> x_256 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD8 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(8) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(16) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_831 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1099 : AdditionalLights;

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
  var x_710 : f32;
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
  var x_1324 : f32;
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
  let x_485 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_482, x_484);
  u_xlat6 = x_485;
  let x_490 : vec2<f32> = vs_TEXCOORD8;
  let x_492 : f32 = x_44.x_GlobalMipBias.x;
  let x_493 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_490, x_492);
  u_xlat7 = vec3<f32>(x_493.x, x_493.y, x_493.z);
  let x_495 : vec4<f32> = u_xlat6;
  let x_499 : vec3<f32> = (vec3<f32>(x_495.x, x_495.y, x_495.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_500 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec3<f32> = u_xlat4;
  let x_503 : vec4<f32> = u_xlat6;
  u_xlat23.x = dot(x_502, vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_508 : f32 = u_xlat23.x;
  u_xlat23.x = (x_508 + 0.5f);
  let x_512 : vec2<f32> = u_xlat23;
  let x_514 : vec3<f32> = u_xlat7;
  let x_515 : vec3<f32> = (vec3<f32>(x_512.x, x_512.x, x_512.x) * x_514);
  let x_516 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_519 : f32 = u_xlat6.w;
  u_xlat23.x = max(x_519, 0.0001f);
  let x_523 : vec4<f32> = u_xlat6;
  let x_525 : vec2<f32> = u_xlat23;
  let x_527 : vec3<f32> = (vec3<f32>(x_523.x, x_523.y, x_523.z) / vec3<f32>(x_525.x, x_525.x, x_525.x));
  let x_528 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
  let x_532 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_533 : vec2<f32> = vec2<f32>(x_532.x, x_532.y);
  u_xlat23 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_533.x, x_533.y));
  let x_538 : vec2<f32> = u_xlat23;
  let x_539 : vec4<f32> = hlslcc_FragCoord;
  let x_541 : vec2<f32> = (x_538 * vec2<f32>(x_539.x, x_539.y));
  let x_542 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_541.x, x_541.y, x_542.z);
  let x_545 : f32 = u_xlat7.y;
  let x_548 : f32 = x_44.x_ScaleBiasRt.x;
  let x_551 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23.x = ((x_545 * x_548) + x_551);
  let x_555 : f32 = u_xlat23.x;
  u_xlat7.z = (-(x_555) + 1.0f);
  let x_560 : f32 = u_xlat1.x;
  u_xlat23.x = ((-(x_560) * 0.959999979f) + 0.959999979f);
  let x_568 : f32 = u_xlat1.y;
  let x_570 : f32 = x_69.x_Smoothness;
  let x_573 : f32 = u_xlat23.x;
  u_xlat34 = ((x_568 * x_570) + -(x_573));
  let x_577 : vec2<f32> = u_xlat23;
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat13 = (vec3<f32>(x_577.x, x_577.x, x_577.x) * vec3<f32>(x_579.y, x_579.z, x_579.w));
  let x_582 : vec4<f32> = u_xlat0;
  let x_585 : vec4<f32> = x_69.x_BaseColor;
  let x_590 : vec3<f32> = ((vec3<f32>(x_582.x, x_582.y, x_582.z) * vec3<f32>(x_585.x, x_585.y, x_585.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_593 : vec2<f32> = u_xlat1;
  let x_595 : vec4<f32> = u_xlat0;
  let x_600 : vec3<f32> = ((vec3<f32>(x_593.x, x_593.x, x_593.x) * vec3<f32>(x_595.x, x_595.y, x_595.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_601 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
  let x_604 : f32 = u_xlat1.y;
  let x_607 : f32 = x_69.x_Smoothness;
  u_xlat1.x = ((-(x_604) * x_607) + 1.0f);
  let x_613 : f32 = u_xlat1.x;
  let x_615 : f32 = u_xlat1.x;
  u_xlat12.x = (x_613 * x_615);
  let x_619 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_619, 0.0078125f);
  let x_624 : f32 = u_xlat12.x;
  let x_626 : f32 = u_xlat12.x;
  u_xlat23.x = (x_624 * x_626);
  let x_629 : f32 = u_xlat34;
  u_xlat34 = (x_629 + 1.0f);
  let x_631 : f32 = u_xlat34;
  u_xlat34 = clamp(x_631, 0.0f, 1.0f);
  let x_635 : f32 = u_xlat12.x;
  u_xlat37 = ((x_635 * 4.0f) + 2.0f);
  let x_644 : vec3<f32> = u_xlat7;
  let x_647 : f32 = x_44.x_GlobalMipBias.x;
  let x_648 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_644.x, x_644.z), x_647);
  u_xlat38 = x_648.x;
  let x_651 : f32 = u_xlat38;
  u_xlat39 = (x_651 + -1.0f);
  let x_654 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_655 : f32 = u_xlat39;
  u_xlat39 = ((x_654 * x_655) + 1.0f);
  let x_659 : f32 = u_xlat3.x;
  let x_660 : f32 = u_xlat38;
  u_xlat3.x = min(x_659, x_660);
  let x_664 : vec4<f32> = u_xlat5;
  let x_665 : vec2<f32> = vec2<f32>(x_664.x, x_664.y);
  let x_667 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_665.x, x_665.y, x_667);
  let x_679 : vec3<f32> = txVec0;
  let x_681 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_679.xy, x_679.z);
  u_xlat5.x = x_681;
  let x_685 : f32 = x_256.x_MainLightShadowParams.x;
  u_xlat16.x = (-(x_685) + 1.0f);
  let x_690 : f32 = u_xlat5.x;
  let x_692 : f32 = x_256.x_MainLightShadowParams.x;
  let x_695 : f32 = u_xlat16.x;
  u_xlat5.x = ((x_690 * x_692) + x_695);
  let x_700 : f32 = u_xlat5.z;
  u_xlatb16 = (0.0f >= x_700);
  let x_704 : f32 = u_xlat5.z;
  u_xlatb27 = (x_704 >= 1.0f);
  let x_706 : bool = u_xlatb27;
  let x_707 : bool = u_xlatb16;
  u_xlatb16 = (x_706 | x_707);
  let x_709 : bool = u_xlatb16;
  if (x_709) {
    x_710 = 1.0f;
  } else {
    let x_715 : f32 = u_xlat5.x;
    x_710 = x_715;
  }
  let x_716 : f32 = x_710;
  u_xlat5.x = x_716;
  let x_718 : vec3<f32> = vs_TEXCOORD1;
  let x_720 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat16 = (x_718 + -(x_720));
  let x_723 : vec3<f32> = u_xlat16;
  let x_724 : vec3<f32> = u_xlat16;
  u_xlat16.x = dot(x_723, x_724);
  let x_728 : f32 = u_xlat16.x;
  let x_730 : f32 = x_256.x_MainLightShadowParams.z;
  let x_733 : f32 = x_256.x_MainLightShadowParams.w;
  u_xlat16.x = ((x_728 * x_730) + x_733);
  let x_737 : f32 = u_xlat16.x;
  u_xlat16.x = clamp(x_737, 0.0f, 1.0f);
  let x_742 : f32 = u_xlat5.x;
  u_xlat27 = (-(x_742) + 1.0f);
  let x_746 : f32 = u_xlat16.x;
  let x_747 : f32 = u_xlat27;
  let x_750 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_746 * x_747) + x_750);
  let x_753 : f32 = u_xlat39;
  let x_756 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat16 = (vec3<f32>(x_753, x_753, x_753) * vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec3<f32> = u_xlat14;
  let x_761 : vec3<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_759), x_761);
  let x_765 : f32 = u_xlat7.x;
  let x_767 : f32 = u_xlat7.x;
  u_xlat7.x = (x_765 + x_767);
  let x_770 : vec3<f32> = u_xlat4;
  let x_771 : vec3<f32> = u_xlat7;
  let x_775 : vec3<f32> = u_xlat14;
  u_xlat7 = ((x_770 * -(vec3<f32>(x_771.x, x_771.x, x_771.x))) + -(x_775));
  let x_779 : vec3<f32> = u_xlat4;
  let x_780 : vec3<f32> = u_xlat14;
  u_xlat40 = dot(x_779, x_780);
  let x_782 : f32 = u_xlat40;
  u_xlat40 = clamp(x_782, 0.0f, 1.0f);
  let x_784 : f32 = u_xlat40;
  u_xlat40 = (-(x_784) + 1.0f);
  let x_787 : f32 = u_xlat40;
  let x_788 : f32 = u_xlat40;
  u_xlat40 = (x_787 * x_788);
  let x_790 : f32 = u_xlat40;
  let x_791 : f32 = u_xlat40;
  u_xlat40 = (x_790 * x_791);
  let x_794 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_794) * 0.699999988f) + 1.700000048f);
  let x_802 : f32 = u_xlat1.x;
  let x_804 : f32 = u_xlat8.x;
  u_xlat1.x = (x_802 * x_804);
  let x_808 : f32 = u_xlat1.x;
  u_xlat1.x = (x_808 * 6.0f);
  let x_820 : vec3<f32> = u_xlat7;
  let x_822 : f32 = u_xlat1.x;
  let x_823 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_820, x_822);
  u_xlat8 = x_823;
  let x_825 : f32 = u_xlat8.w;
  u_xlat1.x = (x_825 + -1.0f);
  let x_833 : f32 = x_831.unity_SpecCube0_HDR.w;
  let x_835 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_833 * x_835) + 1.0f);
  let x_840 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_840, 0.0f);
  let x_844 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_844);
  let x_848 : f32 = u_xlat1.x;
  let x_850 : f32 = x_831.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_848 * x_850);
  let x_854 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_854);
  let x_858 : f32 = u_xlat1.x;
  let x_860 : f32 = x_831.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_858 * x_860);
  let x_863 : vec4<f32> = u_xlat8;
  let x_865 : vec2<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(x_865.x, x_865.x, x_865.x));
  let x_868 : vec3<f32> = u_xlat12;
  let x_870 : vec3<f32> = u_xlat12;
  u_xlat1 = ((vec2<f32>(x_868.x, x_868.x) * vec2<f32>(x_870.x, x_870.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_876 : f32 = u_xlat1.y;
  u_xlat12.x = (1.0f / x_876);
  let x_879 : vec4<f32> = u_xlat0;
  let x_882 : f32 = u_xlat34;
  let x_884 : vec3<f32> = (-(vec3<f32>(x_879.x, x_879.y, x_879.z)) + vec3<f32>(x_882, x_882, x_882));
  let x_885 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : f32 = u_xlat40;
  let x_889 : vec4<f32> = u_xlat8;
  let x_892 : vec4<f32> = u_xlat0;
  let x_894 : vec3<f32> = ((vec3<f32>(x_887, x_887, x_887) * vec3<f32>(x_889.x, x_889.y, x_889.z)) + vec3<f32>(x_892.x, x_892.y, x_892.z));
  let x_895 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec3<f32> = u_xlat12;
  let x_899 : vec4<f32> = u_xlat8;
  let x_901 : vec3<f32> = (vec3<f32>(x_897.x, x_897.x, x_897.x) * vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec3<f32> = u_xlat7;
  let x_905 : vec4<f32> = u_xlat8;
  u_xlat7 = (x_904 * vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec4<f32> = u_xlat6;
  let x_910 : vec3<f32> = u_xlat13;
  let x_912 : vec3<f32> = u_xlat7;
  let x_913 : vec3<f32> = ((vec3<f32>(x_908.x, x_908.y, x_908.z) * x_910) + x_912);
  let x_914 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_917 : f32 = u_xlat5.x;
  let x_919 : f32 = x_831.unity_LightData.z;
  u_xlat12.x = (x_917 * x_919);
  let x_922 : vec3<f32> = u_xlat4;
  let x_924 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat34 = dot(x_922, vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : f32 = u_xlat34;
  u_xlat34 = clamp(x_927, 0.0f, 1.0f);
  let x_929 : f32 = u_xlat34;
  let x_931 : f32 = u_xlat12.x;
  u_xlat12.x = (x_929 * x_931);
  let x_934 : vec3<f32> = u_xlat12;
  let x_936 : vec3<f32> = u_xlat16;
  let x_937 : vec3<f32> = (vec3<f32>(x_934.x, x_934.x, x_934.x) * x_936);
  let x_938 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec3<f32> = u_xlat14;
  let x_942 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = (x_940 + vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : vec3<f32> = u_xlat7;
  let x_946 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_945, x_946);
  let x_950 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_950, 1.17549435e-37f);
  let x_955 : f32 = u_xlat12.x;
  u_xlat12.x = inverseSqrt(x_955);
  let x_958 : vec3<f32> = u_xlat12;
  let x_960 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_958.x, x_958.x, x_958.x) * x_960);
  let x_962 : vec3<f32> = u_xlat4;
  let x_963 : vec3<f32> = u_xlat7;
  u_xlat12.x = dot(x_962, x_963);
  let x_967 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_967, 0.0f, 1.0f);
  let x_971 : vec4<f32> = x_44.x_MainLightPosition;
  let x_973 : vec3<f32> = u_xlat7;
  u_xlat12.z = dot(vec3<f32>(x_971.x, x_971.y, x_971.z), x_973);
  let x_977 : f32 = u_xlat12.z;
  u_xlat12.z = clamp(x_977, 0.0f, 1.0f);
  let x_980 : vec3<f32> = u_xlat12;
  let x_982 : vec3<f32> = u_xlat12;
  let x_984 : vec2<f32> = (vec2<f32>(x_980.x, x_980.z) * vec2<f32>(x_982.x, x_982.z));
  let x_985 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_984.x, x_985.y, x_984.y);
  let x_988 : f32 = u_xlat12.x;
  let x_990 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_988 * x_990) + 1.000010014f);
  let x_996 : f32 = u_xlat12.x;
  let x_998 : f32 = u_xlat12.x;
  u_xlat12.x = (x_996 * x_998);
  let x_1002 : f32 = u_xlat12.z;
  u_xlat34 = max(x_1002, 0.100000001f);
  let x_1005 : f32 = u_xlat34;
  let x_1007 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1005 * x_1007);
  let x_1010 : f32 = u_xlat37;
  let x_1012 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1010 * x_1012);
  let x_1016 : f32 = u_xlat23.x;
  let x_1018 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1016 / x_1018);
  let x_1021 : vec4<f32> = u_xlat0;
  let x_1023 : vec3<f32> = u_xlat12;
  let x_1026 : vec3<f32> = u_xlat13;
  u_xlat7 = ((vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * vec3<f32>(x_1023.x, x_1023.x, x_1023.x)) + x_1026);
  let x_1028 : vec4<f32> = u_xlat5;
  let x_1030 : vec3<f32> = u_xlat7;
  let x_1031 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * x_1030);
  let x_1032 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1035 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1037 : f32 = x_831.unity_LightData.y;
  u_xlat12.x = min(x_1035, x_1037);
  let x_1042 : f32 = u_xlat12.x;
  u_xlatu12 = bitcast<u32>(i32(x_1042));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1054 : u32 = u_xlatu_loop_1;
    let x_1055 : u32 = u_xlatu12;
    if ((x_1054 < x_1055)) {
    } else {
      break;
    }
    let x_1058 : u32 = u_xlatu_loop_1;
    u_xlatu38 = (x_1058 >> 2u);
    let x_1061 : u32 = u_xlatu_loop_1;
    u_xlati40 = bitcast<i32>((x_1061 & 3u));
    let x_1064 : u32 = u_xlatu38;
    let x_1067 : vec4<f32> = x_831.unity_LightIndices[bitcast<i32>(x_1064)];
    let x_1077 : i32 = u_xlati40;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1082 : vec4<u32> = indexable[x_1077];
    u_xlat38 = dot(x_1067, bitcast<vec4<f32>>(x_1082));
    let x_1086 : f32 = u_xlat38;
    u_xlati38 = i32(x_1086);
    let x_1088 : vec3<f32> = vs_TEXCOORD1;
    let x_1100 : i32 = u_xlati38;
    let x_1102 : vec4<f32> = x_1099.x_AdditionalLightsPosition[x_1100];
    let x_1105 : i32 = u_xlati38;
    let x_1107 : vec4<f32> = x_1099.x_AdditionalLightsPosition[x_1105];
    let x_1109 : vec3<f32> = ((-(x_1088) * vec3<f32>(x_1102.w, x_1102.w, x_1102.w)) + vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
    let x_1110 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
    let x_1112 : vec4<f32> = u_xlat8;
    let x_1114 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(vec3<f32>(x_1112.x, x_1112.y, x_1112.z), vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
    let x_1117 : f32 = u_xlat40;
    u_xlat40 = max(x_1117, 6.10351562e-05f);
    let x_1121 : f32 = u_xlat40;
    u_xlat41 = inverseSqrt(x_1121);
    let x_1124 : f32 = u_xlat41;
    let x_1126 : vec4<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_1124, x_1124, x_1124) * vec3<f32>(x_1126.x, x_1126.y, x_1126.z));
    let x_1130 : f32 = u_xlat40;
    u_xlat42 = (1.0f / x_1130);
    let x_1132 : f32 = u_xlat40;
    let x_1133 : i32 = u_xlati38;
    let x_1135 : f32 = x_1099.x_AdditionalLightsAttenuation[x_1133].x;
    u_xlat40 = (x_1132 * x_1135);
    let x_1137 : f32 = u_xlat40;
    let x_1139 : f32 = u_xlat40;
    u_xlat40 = ((-(x_1137) * x_1139) + 1.0f);
    let x_1142 : f32 = u_xlat40;
    u_xlat40 = max(x_1142, 0.0f);
    let x_1144 : f32 = u_xlat40;
    let x_1145 : f32 = u_xlat40;
    u_xlat40 = (x_1144 * x_1145);
    let x_1147 : f32 = u_xlat40;
    let x_1148 : f32 = u_xlat42;
    u_xlat40 = (x_1147 * x_1148);
    let x_1150 : i32 = u_xlati38;
    let x_1152 : vec4<f32> = x_1099.x_AdditionalLightsSpotDir[x_1150];
    let x_1154 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(vec3<f32>(x_1152.x, x_1152.y, x_1152.z), x_1154);
    let x_1156 : f32 = u_xlat42;
    let x_1157 : i32 = u_xlati38;
    let x_1159 : f32 = x_1099.x_AdditionalLightsAttenuation[x_1157].z;
    let x_1161 : i32 = u_xlati38;
    let x_1163 : f32 = x_1099.x_AdditionalLightsAttenuation[x_1161].w;
    u_xlat42 = ((x_1156 * x_1159) + x_1163);
    let x_1165 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1165, 0.0f, 1.0f);
    let x_1167 : f32 = u_xlat42;
    let x_1168 : f32 = u_xlat42;
    u_xlat42 = (x_1167 * x_1168);
    let x_1170 : f32 = u_xlat40;
    let x_1171 : f32 = u_xlat42;
    u_xlat40 = (x_1170 * x_1171);
    let x_1174 : f32 = u_xlat39;
    let x_1176 : i32 = u_xlati38;
    let x_1178 : vec4<f32> = x_1099.x_AdditionalLightsColor[x_1176];
    u_xlat10 = (vec3<f32>(x_1174, x_1174, x_1174) * vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
    let x_1181 : vec3<f32> = u_xlat4;
    let x_1182 : vec3<f32> = u_xlat9;
    u_xlat38 = dot(x_1181, x_1182);
    let x_1184 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1184, 0.0f, 1.0f);
    let x_1186 : f32 = u_xlat38;
    let x_1187 : f32 = u_xlat40;
    u_xlat38 = (x_1186 * x_1187);
    let x_1189 : f32 = u_xlat38;
    let x_1191 : vec3<f32> = u_xlat10;
    u_xlat10 = (vec3<f32>(x_1189, x_1189, x_1189) * x_1191);
    let x_1193 : vec4<f32> = u_xlat8;
    let x_1195 : f32 = u_xlat41;
    let x_1198 : vec3<f32> = u_xlat14;
    let x_1199 : vec3<f32> = ((vec3<f32>(x_1193.x, x_1193.y, x_1193.z) * vec3<f32>(x_1195, x_1195, x_1195)) + x_1198);
    let x_1200 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
    let x_1202 : vec4<f32> = u_xlat8;
    let x_1204 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
    let x_1207 : f32 = u_xlat38;
    u_xlat38 = max(x_1207, 1.17549435e-37f);
    let x_1209 : f32 = u_xlat38;
    u_xlat38 = inverseSqrt(x_1209);
    let x_1211 : f32 = u_xlat38;
    let x_1213 : vec4<f32> = u_xlat8;
    let x_1215 : vec3<f32> = (vec3<f32>(x_1211, x_1211, x_1211) * vec3<f32>(x_1213.x, x_1213.y, x_1213.z));
    let x_1216 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1216.w);
    let x_1218 : vec3<f32> = u_xlat4;
    let x_1219 : vec4<f32> = u_xlat8;
    u_xlat38 = dot(x_1218, vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
    let x_1222 : f32 = u_xlat38;
    u_xlat38 = clamp(x_1222, 0.0f, 1.0f);
    let x_1224 : vec3<f32> = u_xlat9;
    let x_1225 : vec4<f32> = u_xlat8;
    u_xlat40 = dot(x_1224, vec3<f32>(x_1225.x, x_1225.y, x_1225.z));
    let x_1228 : f32 = u_xlat40;
    u_xlat40 = clamp(x_1228, 0.0f, 1.0f);
    let x_1230 : f32 = u_xlat38;
    let x_1231 : f32 = u_xlat38;
    u_xlat38 = (x_1230 * x_1231);
    let x_1233 : f32 = u_xlat38;
    let x_1235 : f32 = u_xlat1.x;
    u_xlat38 = ((x_1233 * x_1235) + 1.000010014f);
    let x_1238 : f32 = u_xlat40;
    let x_1239 : f32 = u_xlat40;
    u_xlat40 = (x_1238 * x_1239);
    let x_1241 : f32 = u_xlat38;
    let x_1242 : f32 = u_xlat38;
    u_xlat38 = (x_1241 * x_1242);
    let x_1244 : f32 = u_xlat40;
    u_xlat40 = max(x_1244, 0.100000001f);
    let x_1246 : f32 = u_xlat38;
    let x_1247 : f32 = u_xlat40;
    u_xlat38 = (x_1246 * x_1247);
    let x_1249 : f32 = u_xlat37;
    let x_1250 : f32 = u_xlat38;
    u_xlat38 = (x_1249 * x_1250);
    let x_1253 : f32 = u_xlat23.x;
    let x_1254 : f32 = u_xlat38;
    u_xlat38 = (x_1253 / x_1254);
    let x_1256 : vec4<f32> = u_xlat0;
    let x_1258 : f32 = u_xlat38;
    let x_1261 : vec3<f32> = u_xlat13;
    let x_1262 : vec3<f32> = ((vec3<f32>(x_1256.x, x_1256.y, x_1256.z) * vec3<f32>(x_1258, x_1258, x_1258)) + x_1261);
    let x_1263 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
    let x_1265 : vec4<f32> = u_xlat8;
    let x_1267 : vec3<f32> = u_xlat10;
    let x_1269 : vec3<f32> = u_xlat7;
    u_xlat7 = ((vec3<f32>(x_1265.x, x_1265.y, x_1265.z) * x_1267) + x_1269);

    continuing {
      let x_1271 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1271 + bitcast<u32>(1i));
    }
  }
  let x_1273 : vec4<f32> = u_xlat6;
  let x_1275 : vec3<f32> = u_xlat3;
  let x_1278 : vec4<f32> = u_xlat5;
  let x_1280 : vec3<f32> = ((vec3<f32>(x_1273.x, x_1273.y, x_1273.z) * vec3<f32>(x_1275.x, x_1275.x, x_1275.x)) + vec3<f32>(x_1278.x, x_1278.y, x_1278.z));
  let x_1281 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
  let x_1283 : vec3<f32> = u_xlat7;
  let x_1284 : vec4<f32> = u_xlat0;
  let x_1286 : vec3<f32> = (x_1283 + vec3<f32>(x_1284.x, x_1284.y, x_1284.z));
  let x_1287 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1286.x, x_1286.y, x_1286.z, x_1287.w);
  let x_1289 : f32 = u_xlat33;
  let x_1290 : f32 = u_xlat33;
  u_xlat33 = (x_1289 * -(x_1290));
  let x_1293 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1293);
  let x_1295 : vec4<f32> = u_xlat0;
  let x_1299 : vec4<f32> = x_44.unity_FogColor;
  let x_1302 : vec3<f32> = (vec3<f32>(x_1295.x, x_1295.y, x_1295.z) + -(vec3<f32>(x_1299.x, x_1299.y, x_1299.z)));
  let x_1303 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
  let x_1307 : f32 = u_xlat33;
  let x_1309 : vec4<f32> = u_xlat0;
  let x_1313 : vec4<f32> = x_44.unity_FogColor;
  let x_1315 : vec3<f32> = ((vec3<f32>(x_1307, x_1307, x_1307) * vec3<f32>(x_1309.x, x_1309.y, x_1309.z)) + vec3<f32>(x_1313.x, x_1313.y, x_1313.z));
  let x_1316 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1321 : f32 = x_69.x_Surface;
  u_xlatb0 = (x_1321 == 1.0f);
  let x_1323 : bool = u_xlatb0;
  if (x_1323) {
    let x_1328 : f32 = u_xlat2.x;
    x_1324 = x_1328;
  } else {
    x_1324 = 1.0f;
  }
  let x_1330 : f32 = x_1324;
  SV_Target0.w = x_1330;
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

