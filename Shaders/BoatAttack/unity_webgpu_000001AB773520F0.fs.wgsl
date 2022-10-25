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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(2) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_147 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_378 : UnityPerDraw;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2225 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb66 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat68 : f32;
  var u_xlat4 : vec4<f32>;
  var x_120 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb5 : vec4<bool>;
  var u_xlatu66 : u32;
  var u_xlati66 : i32;
  var u_xlat69 : f32;
  var u_xlat23 : vec3<f32>;
  var u_xlat70 : f32;
  var u_xlat71 : f32;
  var u_xlat72 : f32;
  var u_xlat29 : f32;
  var u_xlatb51 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlatb73 : bool;
  var u_xlat52 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat73 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat30 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat31 : vec3<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat32 : vec2<f32>;
  var u_xlat60 : vec2<f32>;
  var u_xlat55 : vec2<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
  var u_xlat21 : vec4<f32>;
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
  var u_xlatb27 : bool;
  var u_xlatb49 : bool;
  var x_1869 : f32;
  var u_xlat27 : f32;
  var u_xlat49 : f32;
  var u_xlatu68 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu70 : u32;
  var u_xlati73 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati70 : i32;
  var u_xlat74 : f32;
  var u_xlat75 : f32;
  var u_xlatb0 : bool;
  var x_2474 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : f32 = x_44.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(x_EmissionMap, sampler_EmissionMap, x_71, x_73);
  u_xlat2 = vec3<f32>(x_74.x, x_74.y, x_74.z);
  let x_81 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb66 = (x_81 == 0.0f);
  let x_87 : vec3<f32> = vs_TEXCOORD1;
  let x_92 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat3 = (-(x_87) + x_92);
  let x_96 : vec3<f32> = u_xlat3;
  let x_97 : vec3<f32> = u_xlat3;
  u_xlat68 = dot(x_96, x_97);
  let x_99 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_99);
  let x_101 : f32 = u_xlat68;
  let x_103 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_101, x_101, x_101) * x_103);
  let x_110 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat4.x = x_110;
  let x_113 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat4.y = x_113;
  let x_117 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat4.z = x_117;
  let x_119 : bool = u_xlatb66;
  if (x_119) {
    let x_123 : vec3<f32> = u_xlat3;
    x_120 = x_123;
  } else {
    let x_125 : vec4<f32> = u_xlat4;
    x_120 = vec3<f32>(x_125.x, x_125.y, x_125.z);
  }
  let x_127 : vec3<f32> = x_120;
  u_xlat3 = x_127;
  let x_130 : vec3<f32> = vs_TEXCOORD2;
  let x_131 : vec3<f32> = vs_TEXCOORD2;
  u_xlat66 = dot(x_130, x_131);
  let x_133 : f32 = u_xlat66;
  u_xlat66 = inverseSqrt(x_133);
  let x_135 : f32 = u_xlat66;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = (vec3<f32>(x_135, x_135, x_135) * x_137);
  let x_139 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec3<f32> = vs_TEXCOORD1;
  let x_149 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres0;
  let x_152 : vec3<f32> = (x_142 + -(vec3<f32>(x_149.x, x_149.y, x_149.z)));
  let x_153 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_156 : vec3<f32> = vs_TEXCOORD1;
  let x_158 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres1;
  let x_161 : vec3<f32> = (x_156 + -(vec3<f32>(x_158.x, x_158.y, x_158.z)));
  let x_162 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_161.x, x_161.y, x_161.z, x_162.w);
  let x_165 : vec3<f32> = vs_TEXCOORD1;
  let x_168 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres2;
  let x_171 : vec3<f32> = (x_165 + -(vec3<f32>(x_168.x, x_168.y, x_168.z)));
  let x_172 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_175 : vec3<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = x_147.x_CascadeShadowSplitSpheres3;
  let x_181 : vec3<f32> = (x_175 + -(vec3<f32>(x_178.x, x_178.y, x_178.z)));
  let x_182 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_184 : vec4<f32> = u_xlat5;
  let x_186 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_184.x, x_184.y, x_184.z), vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_190 : vec4<f32> = u_xlat6;
  let x_192 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_190.x, x_190.y, x_190.z), vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_196 : vec4<f32> = u_xlat7;
  let x_198 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = u_xlat8;
  let x_204 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_202.x, x_202.y, x_202.z), vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_211 : vec4<f32> = u_xlat5;
  let x_214 : vec4<f32> = x_147.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_211 < x_214);
  let x_217 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_217);
  let x_221 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_221);
  let x_225 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_229);
  let x_233 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_233);
  let x_239 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_239);
  let x_243 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_243);
  let x_246 : vec4<f32> = u_xlat5;
  let x_248 : vec4<f32> = u_xlat6;
  let x_250 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) + vec3<f32>(x_248.y, x_248.z, x_248.w));
  let x_251 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat5;
  let x_256 : vec3<f32> = max(vec3<f32>(x_253.x, x_253.y, x_253.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_257 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_257.x, x_256.x, x_256.y, x_256.z);
  let x_259 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_259, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_265 : f32 = u_xlat66;
  u_xlat66 = (-(x_265) + 4.0f);
  let x_270 : f32 = u_xlat66;
  u_xlatu66 = u32(x_270);
  let x_274 : u32 = u_xlatu66;
  u_xlati66 = (bitcast<i32>(x_274) << bitcast<u32>(2i));
  let x_277 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : i32 = u_xlati66;
  let x_282 : i32 = u_xlati66;
  let x_286 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_279 + 1i) / 4i)][((x_282 + 1i) % 4i)];
  let x_288 : vec3<f32> = (vec3<f32>(x_277.y, x_277.y, x_277.y) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_291 : i32 = u_xlati66;
  let x_293 : i32 = u_xlati66;
  let x_296 : vec4<f32> = x_147.x_MainLightWorldToShadow[(x_291 / 4i)][(x_293 % 4i)];
  let x_298 : vec3<f32> = vs_TEXCOORD1;
  let x_301 : vec4<f32> = u_xlat5;
  let x_303 : vec3<f32> = ((vec3<f32>(x_296.x, x_296.y, x_296.z) * vec3<f32>(x_298.x, x_298.x, x_298.x)) + vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_304 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : i32 = u_xlati66;
  let x_309 : i32 = u_xlati66;
  let x_313 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_306 + 2i) / 4i)][((x_309 + 2i) % 4i)];
  let x_315 : vec3<f32> = vs_TEXCOORD1;
  let x_318 : vec4<f32> = u_xlat5;
  let x_320 : vec3<f32> = ((vec3<f32>(x_313.x, x_313.y, x_313.z) * vec3<f32>(x_315.z, x_315.z, x_315.z)) + vec3<f32>(x_318.x, x_318.y, x_318.z));
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_323 : vec4<f32> = u_xlat5;
  let x_325 : i32 = u_xlati66;
  let x_328 : i32 = u_xlati66;
  let x_332 : vec4<f32> = x_147.x_MainLightWorldToShadow[((x_325 + 3i) / 4i)][((x_328 + 3i) % 4i)];
  let x_334 : vec3<f32> = (vec3<f32>(x_323.x, x_323.y, x_323.z) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : f32 = vs_TEXCOORD1.y;
  let x_340 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat66 = (x_338 * x_340);
  let x_343 : f32 = x_44.unity_MatrixV[0i].z;
  let x_345 : f32 = vs_TEXCOORD1.x;
  let x_347 : f32 = u_xlat66;
  u_xlat66 = ((x_343 * x_345) + x_347);
  let x_350 : f32 = x_44.unity_MatrixV[2i].z;
  let x_352 : f32 = vs_TEXCOORD1.z;
  let x_354 : f32 = u_xlat66;
  u_xlat66 = ((x_350 * x_352) + x_354);
  let x_356 : f32 = u_xlat66;
  let x_358 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat66 = (x_356 + x_358);
  let x_360 : f32 = u_xlat66;
  let x_364 : f32 = x_44.x_ProjectionParams.y;
  u_xlat66 = (-(x_360) + -(x_364));
  let x_367 : f32 = u_xlat66;
  u_xlat66 = max(x_367, 0.0f);
  let x_369 : f32 = u_xlat66;
  let x_372 : f32 = x_44.unity_FogParams.x;
  u_xlat66 = (x_369 * x_372);
  u_xlat4.w = 1.0f;
  let x_381 : vec4<f32> = x_378.unity_SHAr;
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_381, x_382);
  let x_387 : vec4<f32> = x_378.unity_SHAg;
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_387, x_388);
  let x_393 : vec4<f32> = x_378.unity_SHAb;
  let x_394 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_393, x_394);
  let x_397 : vec4<f32> = u_xlat4;
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_397.y, x_397.z, x_397.z, x_397.x) * vec4<f32>(x_399.x, x_399.y, x_399.z, x_399.z));
  let x_404 : vec4<f32> = x_378.unity_SHBr;
  let x_405 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_404, x_405);
  let x_410 : vec4<f32> = x_378.unity_SHBg;
  let x_411 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_410, x_411);
  let x_416 : vec4<f32> = x_378.unity_SHBb;
  let x_417 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_416, x_417);
  let x_421 : f32 = u_xlat4.y;
  let x_423 : f32 = u_xlat4.y;
  u_xlat68 = (x_421 * x_423);
  let x_426 : f32 = u_xlat4.x;
  let x_428 : f32 = u_xlat4.x;
  let x_430 : f32 = u_xlat68;
  u_xlat68 = ((x_426 * x_428) + -(x_430));
  let x_435 : vec4<f32> = x_378.unity_SHC;
  let x_437 : f32 = u_xlat68;
  let x_440 : vec4<f32> = u_xlat8;
  let x_442 : vec3<f32> = ((vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_437, x_437, x_437)) + vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec4<f32> = u_xlat6;
  let x_447 : vec4<f32> = u_xlat7;
  let x_449 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) + vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_450 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_452 : vec4<f32> = u_xlat6;
  let x_454 : vec3<f32> = max(vec3<f32>(x_452.x, x_452.y, x_452.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_455 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_459 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_460 : vec2<f32> = vec2<f32>(x_459.x, x_459.y);
  let x_464 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_460.x, x_460.y));
  let x_465 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_464.x, x_464.y, x_465.z, x_465.w);
  let x_467 : vec4<f32> = u_xlat7;
  let x_469 : vec4<f32> = hlslcc_FragCoord;
  let x_471 : vec2<f32> = (vec2<f32>(x_467.x, x_467.y) * vec2<f32>(x_469.x, x_469.y));
  let x_472 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
  let x_475 : f32 = u_xlat7.y;
  let x_478 : f32 = x_44.x_ScaleBiasRt.x;
  let x_481 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat68 = ((x_475 * x_478) + x_481);
  let x_483 : f32 = u_xlat68;
  u_xlat7.z = (-(x_483) + 1.0f);
  let x_488 : f32 = x_57.x_Metallic;
  u_xlat68 = ((-(x_488) * 0.959999979f) + 0.959999979f);
  let x_494 : f32 = u_xlat68;
  u_xlat69 = (-(x_494) + 1.0f);
  let x_498 : vec4<f32> = u_xlat1;
  let x_500 : f32 = u_xlat68;
  u_xlat23 = (vec3<f32>(x_498.y, x_498.z, x_498.w) * vec3<f32>(x_500, x_500, x_500));
  let x_503 : vec4<f32> = u_xlat0;
  let x_506 : vec4<f32> = x_57.x_BaseColor;
  let x_511 : vec3<f32> = ((vec3<f32>(x_503.x, x_503.y, x_503.z) * vec3<f32>(x_506.x, x_506.y, x_506.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_512 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_515 : f32 = x_57.x_Metallic;
  let x_517 : f32 = x_57.x_Metallic;
  let x_519 : f32 = x_57.x_Metallic;
  let x_520 : vec3<f32> = vec3<f32>(x_515, x_517, x_519);
  let x_525 : vec4<f32> = u_xlat0;
  let x_530 : vec3<f32> = ((vec3<f32>(x_520.x, x_520.y, x_520.z) * vec3<f32>(x_525.x, x_525.y, x_525.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_531 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_534 : f32 = x_57.x_Smoothness;
  u_xlat68 = (-(x_534) + 1.0f);
  let x_538 : f32 = u_xlat68;
  let x_539 : f32 = u_xlat68;
  u_xlat70 = (x_538 * x_539);
  let x_541 : f32 = u_xlat70;
  u_xlat70 = max(x_541, 0.0078125f);
  let x_545 : f32 = u_xlat70;
  let x_546 : f32 = u_xlat70;
  u_xlat71 = (x_545 * x_546);
  let x_548 : f32 = u_xlat69;
  let x_550 : f32 = x_57.x_Smoothness;
  u_xlat69 = (x_548 + x_550);
  let x_552 : f32 = u_xlat69;
  u_xlat69 = clamp(x_552, 0.0f, 1.0f);
  let x_555 : f32 = u_xlat70;
  u_xlat72 = ((x_555 * 4.0f) + 2.0f);
  let x_563 : vec4<f32> = u_xlat7;
  let x_566 : f32 = x_44.x_GlobalMipBias.x;
  let x_567 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_563.x, x_563.z), x_566);
  u_xlat7.x = x_567.x;
  let x_572 : f32 = u_xlat7.x;
  u_xlat29 = (x_572 + -1.0f);
  let x_575 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_576 : f32 = u_xlat29;
  u_xlat29 = ((x_575 * x_576) + 1.0f);
  let x_580 : f32 = u_xlat7.x;
  u_xlat7.x = min(x_580, 1.0f);
  let x_585 : f32 = x_147.x_MainLightShadowParams.y;
  u_xlatb51 = (0.0f < x_585);
  let x_587 : bool = u_xlatb51;
  if (x_587) {
    let x_591 : f32 = x_147.x_MainLightShadowParams.y;
    u_xlatb51 = (x_591 == 1.0f);
    let x_593 : bool = u_xlatb51;
    if (x_593) {
      let x_596 : vec4<f32> = u_xlat5;
      let x_599 : vec4<f32> = x_147.x_MainLightShadowOffset0;
      u_xlat8 = (vec4<f32>(x_596.x, x_596.y, x_596.x, x_596.y) + x_599);
      let x_602 : vec4<f32> = u_xlat8;
      let x_603 : vec2<f32> = vec2<f32>(x_602.x, x_602.y);
      let x_605 : f32 = u_xlat5.z;
      txVec0 = vec3<f32>(x_603.x, x_603.y, x_605);
      let x_618 : vec3<f32> = txVec0;
      let x_620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_618.xy, x_618.z);
      u_xlat9.x = x_620;
      let x_623 : vec4<f32> = u_xlat8;
      let x_624 : vec2<f32> = vec2<f32>(x_623.z, x_623.w);
      let x_626 : f32 = u_xlat5.z;
      txVec1 = vec3<f32>(x_624.x, x_624.y, x_626);
      let x_633 : vec3<f32> = txVec1;
      let x_635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_633.xy, x_633.z);
      u_xlat9.y = x_635;
      let x_637 : vec4<f32> = u_xlat5;
      let x_640 : vec4<f32> = x_147.x_MainLightShadowOffset1;
      u_xlat8 = (vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y) + x_640);
      let x_643 : vec4<f32> = u_xlat8;
      let x_644 : vec2<f32> = vec2<f32>(x_643.x, x_643.y);
      let x_646 : f32 = u_xlat5.z;
      txVec2 = vec3<f32>(x_644.x, x_644.y, x_646);
      let x_653 : vec3<f32> = txVec2;
      let x_655 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_653.xy, x_653.z);
      u_xlat9.z = x_655;
      let x_658 : vec4<f32> = u_xlat8;
      let x_659 : vec2<f32> = vec2<f32>(x_658.z, x_658.w);
      let x_661 : f32 = u_xlat5.z;
      txVec3 = vec3<f32>(x_659.x, x_659.y, x_661);
      let x_668 : vec3<f32> = txVec3;
      let x_670 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_668.xy, x_668.z);
      u_xlat9.w = x_670;
      let x_674 : vec4<f32> = u_xlat9;
      u_xlat51.x = dot(x_674, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_682 : f32 = x_147.x_MainLightShadowParams.y;
      u_xlatb73 = (x_682 == 2.0f);
      let x_684 : bool = u_xlatb73;
      if (x_684) {
        let x_687 : vec4<f32> = u_xlat5;
        let x_690 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_695 : vec2<f32> = ((vec2<f32>(x_687.x, x_687.y) * vec2<f32>(x_690.z, x_690.w)) + vec2<f32>(0.5f, 0.5f));
        let x_696 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_695.x, x_695.y, x_696.z, x_696.w);
        let x_698 : vec4<f32> = u_xlat8;
        let x_700 : vec2<f32> = floor(vec2<f32>(x_698.x, x_698.y));
        let x_701 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_700.x, x_700.y, x_701.z, x_701.w);
        let x_704 : vec4<f32> = u_xlat5;
        let x_707 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_710 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_704.x, x_704.y) * vec2<f32>(x_707.z, x_707.w)) + -(vec2<f32>(x_710.x, x_710.y)));
        let x_714 : vec2<f32> = u_xlat52;
        u_xlat9 = (vec4<f32>(x_714.x, x_714.x, x_714.y, x_714.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_719 : vec4<f32> = u_xlat9;
        let x_721 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_719.x, x_719.x, x_719.z, x_719.z) * vec4<f32>(x_721.x, x_721.x, x_721.z, x_721.z));
        let x_724 : vec4<f32> = u_xlat10;
        let x_728 : vec2<f32> = (vec2<f32>(x_724.y, x_724.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_729 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_728.x, x_729.y, x_728.y, x_729.w);
        let x_731 : vec4<f32> = u_xlat10;
        let x_734 : vec2<f32> = u_xlat52;
        let x_736 : vec2<f32> = ((vec2<f32>(x_731.x, x_731.z) * vec2<f32>(0.5f, 0.5f)) + -(x_734));
        let x_737 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_736.x, x_736.y, x_737.z, x_737.w);
        let x_740 : vec2<f32> = u_xlat52;
        u_xlat54 = (-(x_740) + vec2<f32>(1.0f, 1.0f));
        let x_744 : vec2<f32> = u_xlat52;
        let x_746 : vec2<f32> = min(x_744, vec2<f32>(0.0f, 0.0f));
        let x_747 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_746.x, x_746.y, x_747.z, x_747.w);
        let x_749 : vec4<f32> = u_xlat11;
        let x_752 : vec4<f32> = u_xlat11;
        let x_755 : vec2<f32> = u_xlat54;
        let x_756 : vec2<f32> = ((-(vec2<f32>(x_749.x, x_749.y)) * vec2<f32>(x_752.x, x_752.y)) + x_755);
        let x_757 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_756.x, x_756.y, x_757.z, x_757.w);
        let x_759 : vec2<f32> = u_xlat52;
        u_xlat52 = max(x_759, vec2<f32>(0.0f, 0.0f));
        let x_761 : vec2<f32> = u_xlat52;
        let x_763 : vec2<f32> = u_xlat52;
        let x_765 : vec4<f32> = u_xlat9;
        u_xlat52 = ((-(x_761) * x_763) + vec2<f32>(x_765.y, x_765.w));
        let x_768 : vec4<f32> = u_xlat11;
        let x_770 : vec2<f32> = (vec2<f32>(x_768.x, x_768.y) + vec2<f32>(1.0f, 1.0f));
        let x_771 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_770.x, x_770.y, x_771.z, x_771.w);
        let x_773 : vec2<f32> = u_xlat52;
        u_xlat52 = (x_773 + vec2<f32>(1.0f, 1.0f));
        let x_776 : vec4<f32> = u_xlat10;
        let x_780 : vec2<f32> = (vec2<f32>(x_776.x, x_776.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_781 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
        let x_783 : vec2<f32> = u_xlat54;
        let x_784 : vec2<f32> = (x_783 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_785 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
        let x_787 : vec4<f32> = u_xlat11;
        let x_789 : vec2<f32> = (vec2<f32>(x_787.x, x_787.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_790 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
        let x_793 : vec2<f32> = u_xlat52;
        let x_794 : vec2<f32> = (x_793 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_795 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_794.x, x_794.y, x_795.z, x_795.w);
        let x_797 : vec4<f32> = u_xlat9;
        u_xlat52 = (vec2<f32>(x_797.y, x_797.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_801 : f32 = u_xlat11.x;
        u_xlat12.z = x_801;
        let x_804 : f32 = u_xlat52.x;
        u_xlat12.w = x_804;
        let x_807 : f32 = u_xlat13.x;
        u_xlat10.z = x_807;
        let x_810 : f32 = u_xlat9.x;
        u_xlat10.w = x_810;
        let x_813 : vec4<f32> = u_xlat10;
        let x_815 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_813.z, x_813.w, x_813.x, x_813.z) + vec4<f32>(x_815.z, x_815.w, x_815.x, x_815.z));
        let x_819 : f32 = u_xlat12.y;
        u_xlat11.z = x_819;
        let x_822 : f32 = u_xlat52.y;
        u_xlat11.w = x_822;
        let x_825 : f32 = u_xlat10.y;
        u_xlat13.z = x_825;
        let x_828 : f32 = u_xlat9.z;
        u_xlat13.w = x_828;
        let x_830 : vec4<f32> = u_xlat11;
        let x_832 : vec4<f32> = u_xlat13;
        let x_834 : vec3<f32> = (vec3<f32>(x_830.z, x_830.y, x_830.w) + vec3<f32>(x_832.z, x_832.y, x_832.w));
        let x_835 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat10;
        let x_839 : vec4<f32> = u_xlat14;
        let x_841 : vec3<f32> = (vec3<f32>(x_837.x, x_837.z, x_837.w) / vec3<f32>(x_839.z, x_839.w, x_839.y));
        let x_842 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat10;
        let x_850 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_851 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
        let x_853 : vec4<f32> = u_xlat13;
        let x_855 : vec4<f32> = u_xlat9;
        let x_857 : vec3<f32> = (vec3<f32>(x_853.z, x_853.y, x_853.w) / vec3<f32>(x_855.x, x_855.y, x_855.z));
        let x_858 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
        let x_860 : vec4<f32> = u_xlat11;
        let x_862 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_863 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat10;
        let x_868 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_870 : vec3<f32> = (vec3<f32>(x_865.y, x_865.x, x_865.z) * vec3<f32>(x_868.x, x_868.x, x_868.x));
        let x_871 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
        let x_873 : vec4<f32> = u_xlat11;
        let x_876 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_878 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_876.y, x_876.y, x_876.y));
        let x_879 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
        let x_882 : f32 = u_xlat11.x;
        u_xlat10.w = x_882;
        let x_884 : vec4<f32> = u_xlat8;
        let x_887 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_890 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_884.x, x_884.y, x_884.x, x_884.y) * vec4<f32>(x_887.x, x_887.y, x_887.x, x_887.y)) + vec4<f32>(x_890.y, x_890.w, x_890.x, x_890.w));
        let x_893 : vec4<f32> = u_xlat8;
        let x_896 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_899 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_893.x, x_893.y) * vec2<f32>(x_896.x, x_896.y)) + vec2<f32>(x_899.z, x_899.w));
        let x_903 : f32 = u_xlat10.y;
        u_xlat11.w = x_903;
        let x_905 : vec4<f32> = u_xlat11;
        let x_906 : vec2<f32> = vec2<f32>(x_905.y, x_905.z);
        let x_907 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_907.x, x_906.x, x_907.z, x_906.y);
        let x_909 : vec4<f32> = u_xlat8;
        let x_912 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_915 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_909.x, x_909.y, x_909.x, x_909.y) * vec4<f32>(x_912.x, x_912.y, x_912.x, x_912.y)) + vec4<f32>(x_915.x, x_915.y, x_915.z, x_915.y));
        let x_918 : vec4<f32> = u_xlat8;
        let x_921 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_924 : vec4<f32> = u_xlat11;
        u_xlat11 = ((vec4<f32>(x_918.x, x_918.y, x_918.x, x_918.y) * vec4<f32>(x_921.x, x_921.y, x_921.x, x_921.y)) + vec4<f32>(x_924.w, x_924.y, x_924.w, x_924.z));
        let x_927 : vec4<f32> = u_xlat8;
        let x_930 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_933 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_927.x, x_927.y, x_927.x, x_927.y) * vec4<f32>(x_930.x, x_930.y, x_930.x, x_930.y)) + vec4<f32>(x_933.x, x_933.w, x_933.z, x_933.w));
        let x_937 : vec4<f32> = u_xlat9;
        let x_939 : vec4<f32> = u_xlat14;
        u_xlat15 = (vec4<f32>(x_937.x, x_937.x, x_937.x, x_937.y) * vec4<f32>(x_939.z, x_939.w, x_939.y, x_939.z));
        let x_943 : vec4<f32> = u_xlat9;
        let x_945 : vec4<f32> = u_xlat14;
        u_xlat16 = (vec4<f32>(x_943.y, x_943.y, x_943.z, x_943.z) * x_945);
        let x_949 : f32 = u_xlat9.z;
        let x_951 : f32 = u_xlat14.y;
        u_xlat73 = (x_949 * x_951);
        let x_954 : vec4<f32> = u_xlat12;
        let x_955 : vec2<f32> = vec2<f32>(x_954.x, x_954.y);
        let x_957 : f32 = u_xlat5.z;
        txVec4 = vec3<f32>(x_955.x, x_955.y, x_957);
        let x_964 : vec3<f32> = txVec4;
        let x_966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_964.xy, x_964.z);
        u_xlat8.x = x_966;
        let x_969 : vec4<f32> = u_xlat12;
        let x_970 : vec2<f32> = vec2<f32>(x_969.z, x_969.w);
        let x_972 : f32 = u_xlat5.z;
        txVec5 = vec3<f32>(x_970.x, x_970.y, x_972);
        let x_980 : vec3<f32> = txVec5;
        let x_982 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_980.xy, x_980.z);
        u_xlat30 = x_982;
        let x_983 : f32 = u_xlat30;
        let x_985 : f32 = u_xlat15.y;
        u_xlat30 = (x_983 * x_985);
        let x_988 : f32 = u_xlat15.x;
        let x_990 : f32 = u_xlat8.x;
        let x_992 : f32 = u_xlat30;
        u_xlat8.x = ((x_988 * x_990) + x_992);
        let x_996 : vec2<f32> = u_xlat52;
        let x_998 : f32 = u_xlat5.z;
        txVec6 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec6;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1005.xy, x_1005.z);
        u_xlat30 = x_1007;
        let x_1009 : f32 = u_xlat15.z;
        let x_1010 : f32 = u_xlat30;
        let x_1013 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1009 * x_1010) + x_1013);
        let x_1017 : vec4<f32> = u_xlat11;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.x, x_1017.y);
        let x_1020 : f32 = u_xlat5.z;
        txVec7 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec7;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1027.xy, x_1027.z);
        u_xlat30 = x_1029;
        let x_1031 : f32 = u_xlat15.w;
        let x_1032 : f32 = u_xlat30;
        let x_1035 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1031 * x_1032) + x_1035);
        let x_1039 : vec4<f32> = u_xlat13;
        let x_1040 : vec2<f32> = vec2<f32>(x_1039.x, x_1039.y);
        let x_1042 : f32 = u_xlat5.z;
        txVec8 = vec3<f32>(x_1040.x, x_1040.y, x_1042);
        let x_1049 : vec3<f32> = txVec8;
        let x_1051 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1049.xy, x_1049.z);
        u_xlat30 = x_1051;
        let x_1053 : f32 = u_xlat16.x;
        let x_1054 : f32 = u_xlat30;
        let x_1057 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1053 * x_1054) + x_1057);
        let x_1061 : vec4<f32> = u_xlat13;
        let x_1062 : vec2<f32> = vec2<f32>(x_1061.z, x_1061.w);
        let x_1064 : f32 = u_xlat5.z;
        txVec9 = vec3<f32>(x_1062.x, x_1062.y, x_1064);
        let x_1071 : vec3<f32> = txVec9;
        let x_1073 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1071.xy, x_1071.z);
        u_xlat30 = x_1073;
        let x_1075 : f32 = u_xlat16.y;
        let x_1076 : f32 = u_xlat30;
        let x_1079 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1075 * x_1076) + x_1079);
        let x_1083 : vec4<f32> = u_xlat11;
        let x_1084 : vec2<f32> = vec2<f32>(x_1083.z, x_1083.w);
        let x_1086 : f32 = u_xlat5.z;
        txVec10 = vec3<f32>(x_1084.x, x_1084.y, x_1086);
        let x_1093 : vec3<f32> = txVec10;
        let x_1095 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1093.xy, x_1093.z);
        u_xlat30 = x_1095;
        let x_1097 : f32 = u_xlat16.z;
        let x_1098 : f32 = u_xlat30;
        let x_1101 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1097 * x_1098) + x_1101);
        let x_1105 : vec4<f32> = u_xlat10;
        let x_1106 : vec2<f32> = vec2<f32>(x_1105.x, x_1105.y);
        let x_1108 : f32 = u_xlat5.z;
        txVec11 = vec3<f32>(x_1106.x, x_1106.y, x_1108);
        let x_1115 : vec3<f32> = txVec11;
        let x_1117 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1115.xy, x_1115.z);
        u_xlat30 = x_1117;
        let x_1119 : f32 = u_xlat16.w;
        let x_1120 : f32 = u_xlat30;
        let x_1123 : f32 = u_xlat8.x;
        u_xlat8.x = ((x_1119 * x_1120) + x_1123);
        let x_1127 : vec4<f32> = u_xlat10;
        let x_1128 : vec2<f32> = vec2<f32>(x_1127.z, x_1127.w);
        let x_1130 : f32 = u_xlat5.z;
        txVec12 = vec3<f32>(x_1128.x, x_1128.y, x_1130);
        let x_1137 : vec3<f32> = txVec12;
        let x_1139 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1137.xy, x_1137.z);
        u_xlat30 = x_1139;
        let x_1140 : f32 = u_xlat73;
        let x_1141 : f32 = u_xlat30;
        let x_1144 : f32 = u_xlat8.x;
        u_xlat51.x = ((x_1140 * x_1141) + x_1144);
      } else {
        let x_1148 : vec4<f32> = u_xlat5;
        let x_1151 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1154 : vec2<f32> = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.z, x_1151.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
        let x_1157 : vec4<f32> = u_xlat8;
        let x_1159 : vec2<f32> = floor(vec2<f32>(x_1157.x, x_1157.y));
        let x_1160 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1159.x, x_1159.y, x_1160.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat5;
        let x_1165 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1168 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(x_1165.z, x_1165.w)) + -(vec2<f32>(x_1168.x, x_1168.y)));
        let x_1172 : vec2<f32> = u_xlat52;
        u_xlat9 = (vec4<f32>(x_1172.x, x_1172.x, x_1172.y, x_1172.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1175 : vec4<f32> = u_xlat9;
        let x_1177 : vec4<f32> = u_xlat9;
        u_xlat10 = (vec4<f32>(x_1175.x, x_1175.x, x_1175.z, x_1175.z) * vec4<f32>(x_1177.x, x_1177.x, x_1177.z, x_1177.z));
        let x_1180 : vec4<f32> = u_xlat10;
        let x_1184 : vec2<f32> = (vec2<f32>(x_1180.y, x_1180.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1185 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1185.x, x_1184.x, x_1185.z, x_1184.y);
        let x_1187 : vec4<f32> = u_xlat10;
        let x_1190 : vec2<f32> = u_xlat52;
        let x_1192 : vec2<f32> = ((vec2<f32>(x_1187.x, x_1187.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1190));
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1192.x, x_1193.y, x_1192.y, x_1193.w);
        let x_1195 : vec2<f32> = u_xlat52;
        let x_1197 : vec2<f32> = (-(x_1195) + vec2<f32>(1.0f, 1.0f));
        let x_1198 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1197.x, x_1197.y, x_1198.z, x_1198.w);
        let x_1200 : vec2<f32> = u_xlat52;
        u_xlat54 = min(x_1200, vec2<f32>(0.0f, 0.0f));
        let x_1202 : vec2<f32> = u_xlat54;
        let x_1204 : vec2<f32> = u_xlat54;
        let x_1206 : vec4<f32> = u_xlat10;
        let x_1208 : vec2<f32> = ((-(x_1202) * x_1204) + vec2<f32>(x_1206.x, x_1206.y));
        let x_1209 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1211 : vec2<f32> = u_xlat52;
        u_xlat54 = max(x_1211, vec2<f32>(0.0f, 0.0f));
        let x_1214 : vec2<f32> = u_xlat54;
        let x_1216 : vec2<f32> = u_xlat54;
        let x_1218 : vec4<f32> = u_xlat9;
        let x_1220 : vec2<f32> = ((-(x_1214) * x_1216) + vec2<f32>(x_1218.y, x_1218.w));
        let x_1221 : vec3<f32> = u_xlat31;
        u_xlat31 = vec3<f32>(x_1220.x, x_1221.y, x_1220.y);
        let x_1223 : vec4<f32> = u_xlat10;
        let x_1226 : vec2<f32> = (vec2<f32>(x_1223.x, x_1223.y) + vec2<f32>(2.0f, 2.0f));
        let x_1227 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1226.x, x_1226.y, x_1227.z, x_1227.w);
        let x_1229 : vec3<f32> = u_xlat31;
        let x_1231 : vec2<f32> = (vec2<f32>(x_1229.x, x_1229.z) + vec2<f32>(2.0f, 2.0f));
        let x_1232 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1232.x, x_1231.x, x_1232.z, x_1231.y);
        let x_1235 : f32 = u_xlat9.y;
        u_xlat12.z = (x_1235 * 0.081632003f);
        let x_1239 : vec4<f32> = u_xlat9;
        let x_1242 : vec3<f32> = (vec3<f32>(x_1239.z, x_1239.x, x_1239.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1243 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1243.w);
        let x_1245 : vec4<f32> = u_xlat10;
        let x_1248 : vec2<f32> = (vec2<f32>(x_1245.x, x_1245.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1249 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1248.x, x_1248.y, x_1249.z, x_1249.w);
        let x_1252 : f32 = u_xlat13.y;
        u_xlat12.x = x_1252;
        let x_1254 : vec2<f32> = u_xlat52;
        let x_1261 : vec2<f32> = ((vec2<f32>(x_1254.x, x_1254.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1262 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1262.x, x_1261.x, x_1262.z, x_1261.y);
        let x_1264 : vec2<f32> = u_xlat52;
        let x_1268 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1269 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1268.x, x_1269.y, x_1268.y, x_1269.w);
        let x_1272 : f32 = u_xlat9.x;
        u_xlat10.y = x_1272;
        let x_1275 : f32 = u_xlat11.y;
        u_xlat10.w = x_1275;
        let x_1277 : vec4<f32> = u_xlat10;
        let x_1278 : vec4<f32> = u_xlat12;
        u_xlat12 = (x_1277 + x_1278);
        let x_1280 : vec2<f32> = u_xlat52;
        let x_1283 : vec2<f32> = ((vec2<f32>(x_1280.y, x_1280.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1284 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1284.x, x_1283.x, x_1284.z, x_1283.y);
        let x_1286 : vec2<f32> = u_xlat52;
        let x_1289 : vec2<f32> = ((vec2<f32>(x_1286.y, x_1286.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1290 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1289.x, x_1290.y, x_1289.y, x_1290.w);
        let x_1293 : f32 = u_xlat9.y;
        u_xlat11.y = x_1293;
        let x_1295 : vec4<f32> = u_xlat11;
        let x_1296 : vec4<f32> = u_xlat13;
        u_xlat9 = (x_1295 + x_1296);
        let x_1298 : vec4<f32> = u_xlat10;
        let x_1299 : vec4<f32> = u_xlat12;
        u_xlat10 = (x_1298 / x_1299);
        let x_1301 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1301 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1307 : vec4<f32> = u_xlat11;
        let x_1308 : vec4<f32> = u_xlat9;
        u_xlat11 = (x_1307 / x_1308);
        let x_1310 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1310 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1312 : vec4<f32> = u_xlat10;
        let x_1315 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1312.w, x_1312.x, x_1312.y, x_1312.z) * vec4<f32>(x_1315.x, x_1315.x, x_1315.x, x_1315.x));
        let x_1318 : vec4<f32> = u_xlat11;
        let x_1321 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        u_xlat11 = (vec4<f32>(x_1318.x, x_1318.w, x_1318.y, x_1318.z) * vec4<f32>(x_1321.y, x_1321.y, x_1321.y, x_1321.y));
        let x_1324 : vec4<f32> = u_xlat10;
        let x_1325 : vec3<f32> = vec3<f32>(x_1324.y, x_1324.z, x_1324.w);
        let x_1326 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1325.x, x_1326.y, x_1325.y, x_1325.z);
        let x_1329 : f32 = u_xlat11.x;
        u_xlat13.y = x_1329;
        let x_1331 : vec4<f32> = u_xlat8;
        let x_1334 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat13;
        u_xlat14 = ((vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y) * vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y)) + vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1337.y));
        let x_1340 : vec4<f32> = u_xlat8;
        let x_1343 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1346 : vec4<f32> = u_xlat13;
        u_xlat52 = ((vec2<f32>(x_1340.x, x_1340.y) * vec2<f32>(x_1343.x, x_1343.y)) + vec2<f32>(x_1346.w, x_1346.y));
        let x_1350 : f32 = u_xlat13.y;
        u_xlat10.y = x_1350;
        let x_1353 : f32 = u_xlat11.z;
        u_xlat13.y = x_1353;
        let x_1355 : vec4<f32> = u_xlat8;
        let x_1358 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1361 : vec4<f32> = u_xlat13;
        u_xlat15 = ((vec4<f32>(x_1355.x, x_1355.y, x_1355.x, x_1355.y) * vec4<f32>(x_1358.x, x_1358.y, x_1358.x, x_1358.y)) + vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1361.y));
        let x_1364 : vec4<f32> = u_xlat8;
        let x_1367 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1370 : vec4<f32> = u_xlat13;
        let x_1372 : vec2<f32> = ((vec2<f32>(x_1364.x, x_1364.y) * vec2<f32>(x_1367.x, x_1367.y)) + vec2<f32>(x_1370.w, x_1370.y));
        let x_1373 : vec4<f32> = u_xlat16;
        u_xlat16 = vec4<f32>(x_1372.x, x_1372.y, x_1373.z, x_1373.w);
        let x_1376 : f32 = u_xlat13.y;
        u_xlat10.z = x_1376;
        let x_1379 : vec4<f32> = u_xlat8;
        let x_1382 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1385 : vec4<f32> = u_xlat10;
        u_xlat17 = ((vec4<f32>(x_1379.x, x_1379.y, x_1379.x, x_1379.y) * vec4<f32>(x_1382.x, x_1382.y, x_1382.x, x_1382.y)) + vec4<f32>(x_1385.x, x_1385.y, x_1385.x, x_1385.z));
        let x_1389 : f32 = u_xlat11.w;
        u_xlat13.y = x_1389;
        let x_1392 : vec4<f32> = u_xlat8;
        let x_1395 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1398 : vec4<f32> = u_xlat13;
        u_xlat18 = ((vec4<f32>(x_1392.x, x_1392.y, x_1392.x, x_1392.y) * vec4<f32>(x_1395.x, x_1395.y, x_1395.x, x_1395.y)) + vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1398.y));
        let x_1402 : vec4<f32> = u_xlat8;
        let x_1405 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1408 : vec4<f32> = u_xlat13;
        u_xlat32 = ((vec2<f32>(x_1402.x, x_1402.y) * vec2<f32>(x_1405.x, x_1405.y)) + vec2<f32>(x_1408.w, x_1408.y));
        let x_1412 : f32 = u_xlat13.y;
        u_xlat10.w = x_1412;
        let x_1415 : vec4<f32> = u_xlat8;
        let x_1418 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1421 : vec4<f32> = u_xlat10;
        u_xlat60 = ((vec2<f32>(x_1415.x, x_1415.y) * vec2<f32>(x_1418.x, x_1418.y)) + vec2<f32>(x_1421.x, x_1421.w));
        let x_1424 : vec4<f32> = u_xlat13;
        let x_1425 : vec3<f32> = vec3<f32>(x_1424.x, x_1424.z, x_1424.w);
        let x_1426 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1425.x, x_1426.y, x_1425.y, x_1425.z);
        let x_1428 : vec4<f32> = u_xlat8;
        let x_1431 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1434 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1428.x, x_1428.y, x_1428.x, x_1428.y) * vec4<f32>(x_1431.x, x_1431.y, x_1431.x, x_1431.y)) + vec4<f32>(x_1434.x, x_1434.y, x_1434.z, x_1434.y));
        let x_1438 : vec4<f32> = u_xlat8;
        let x_1441 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1444 : vec4<f32> = u_xlat11;
        u_xlat55 = ((vec2<f32>(x_1438.x, x_1438.y) * vec2<f32>(x_1441.x, x_1441.y)) + vec2<f32>(x_1444.w, x_1444.y));
        let x_1448 : f32 = u_xlat10.x;
        u_xlat11.x = x_1448;
        let x_1450 : vec4<f32> = u_xlat8;
        let x_1453 : vec4<f32> = x_147.x_MainLightShadowmapSize;
        let x_1456 : vec4<f32> = u_xlat11;
        let x_1458 : vec2<f32> = ((vec2<f32>(x_1450.x, x_1450.y) * vec2<f32>(x_1453.x, x_1453.y)) + vec2<f32>(x_1456.x, x_1456.y));
        let x_1459 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1458.x, x_1458.y, x_1459.z, x_1459.w);
        let x_1462 : vec4<f32> = u_xlat9;
        let x_1464 : vec4<f32> = u_xlat12;
        u_xlat19 = (vec4<f32>(x_1462.x, x_1462.x, x_1462.x, x_1462.x) * x_1464);
        let x_1467 : vec4<f32> = u_xlat9;
        let x_1469 : vec4<f32> = u_xlat12;
        u_xlat20 = (vec4<f32>(x_1467.y, x_1467.y, x_1467.y, x_1467.y) * x_1469);
        let x_1472 : vec4<f32> = u_xlat9;
        let x_1474 : vec4<f32> = u_xlat12;
        u_xlat21 = (vec4<f32>(x_1472.z, x_1472.z, x_1472.z, x_1472.z) * x_1474);
        let x_1476 : vec4<f32> = u_xlat9;
        let x_1478 : vec4<f32> = u_xlat12;
        u_xlat9 = (vec4<f32>(x_1476.w, x_1476.w, x_1476.w, x_1476.w) * x_1478);
        let x_1481 : vec4<f32> = u_xlat14;
        let x_1482 : vec2<f32> = vec2<f32>(x_1481.x, x_1481.y);
        let x_1484 : f32 = u_xlat5.z;
        txVec13 = vec3<f32>(x_1482.x, x_1482.y, x_1484);
        let x_1491 : vec3<f32> = txVec13;
        let x_1493 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1491.xy, x_1491.z);
        u_xlat73 = x_1493;
        let x_1495 : vec4<f32> = u_xlat14;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.z, x_1495.w);
        let x_1498 : f32 = u_xlat5.z;
        txVec14 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec14;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1505.xy, x_1505.z);
        u_xlat10.x = x_1507;
        let x_1510 : f32 = u_xlat10.x;
        let x_1512 : f32 = u_xlat19.y;
        u_xlat10.x = (x_1510 * x_1512);
        let x_1516 : f32 = u_xlat19.x;
        let x_1517 : f32 = u_xlat73;
        let x_1520 : f32 = u_xlat10.x;
        u_xlat73 = ((x_1516 * x_1517) + x_1520);
        let x_1523 : vec2<f32> = u_xlat52;
        let x_1525 : f32 = u_xlat5.z;
        txVec15 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec15;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1532.xy, x_1532.z);
        u_xlat52.x = x_1534;
        let x_1537 : f32 = u_xlat19.z;
        let x_1539 : f32 = u_xlat52.x;
        let x_1541 : f32 = u_xlat73;
        u_xlat73 = ((x_1537 * x_1539) + x_1541);
        let x_1544 : vec4<f32> = u_xlat17;
        let x_1545 : vec2<f32> = vec2<f32>(x_1544.x, x_1544.y);
        let x_1547 : f32 = u_xlat5.z;
        txVec16 = vec3<f32>(x_1545.x, x_1545.y, x_1547);
        let x_1554 : vec3<f32> = txVec16;
        let x_1556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1554.xy, x_1554.z);
        u_xlat52.x = x_1556;
        let x_1559 : f32 = u_xlat19.w;
        let x_1561 : f32 = u_xlat52.x;
        let x_1563 : f32 = u_xlat73;
        u_xlat73 = ((x_1559 * x_1561) + x_1563);
        let x_1566 : vec4<f32> = u_xlat15;
        let x_1567 : vec2<f32> = vec2<f32>(x_1566.x, x_1566.y);
        let x_1569 : f32 = u_xlat5.z;
        txVec17 = vec3<f32>(x_1567.x, x_1567.y, x_1569);
        let x_1576 : vec3<f32> = txVec17;
        let x_1578 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1576.xy, x_1576.z);
        u_xlat52.x = x_1578;
        let x_1581 : f32 = u_xlat20.x;
        let x_1583 : f32 = u_xlat52.x;
        let x_1585 : f32 = u_xlat73;
        u_xlat73 = ((x_1581 * x_1583) + x_1585);
        let x_1588 : vec4<f32> = u_xlat15;
        let x_1589 : vec2<f32> = vec2<f32>(x_1588.z, x_1588.w);
        let x_1591 : f32 = u_xlat5.z;
        txVec18 = vec3<f32>(x_1589.x, x_1589.y, x_1591);
        let x_1598 : vec3<f32> = txVec18;
        let x_1600 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1598.xy, x_1598.z);
        u_xlat52.x = x_1600;
        let x_1603 : f32 = u_xlat20.y;
        let x_1605 : f32 = u_xlat52.x;
        let x_1607 : f32 = u_xlat73;
        u_xlat73 = ((x_1603 * x_1605) + x_1607);
        let x_1610 : vec4<f32> = u_xlat16;
        let x_1611 : vec2<f32> = vec2<f32>(x_1610.x, x_1610.y);
        let x_1613 : f32 = u_xlat5.z;
        txVec19 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec19;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1620.xy, x_1620.z);
        u_xlat52.x = x_1622;
        let x_1625 : f32 = u_xlat20.z;
        let x_1627 : f32 = u_xlat52.x;
        let x_1629 : f32 = u_xlat73;
        u_xlat73 = ((x_1625 * x_1627) + x_1629);
        let x_1632 : vec4<f32> = u_xlat17;
        let x_1633 : vec2<f32> = vec2<f32>(x_1632.z, x_1632.w);
        let x_1635 : f32 = u_xlat5.z;
        txVec20 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1642 : vec3<f32> = txVec20;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1642.xy, x_1642.z);
        u_xlat52.x = x_1644;
        let x_1647 : f32 = u_xlat20.w;
        let x_1649 : f32 = u_xlat52.x;
        let x_1651 : f32 = u_xlat73;
        u_xlat73 = ((x_1647 * x_1649) + x_1651);
        let x_1654 : vec4<f32> = u_xlat18;
        let x_1655 : vec2<f32> = vec2<f32>(x_1654.x, x_1654.y);
        let x_1657 : f32 = u_xlat5.z;
        txVec21 = vec3<f32>(x_1655.x, x_1655.y, x_1657);
        let x_1664 : vec3<f32> = txVec21;
        let x_1666 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1664.xy, x_1664.z);
        u_xlat52.x = x_1666;
        let x_1669 : f32 = u_xlat21.x;
        let x_1671 : f32 = u_xlat52.x;
        let x_1673 : f32 = u_xlat73;
        u_xlat73 = ((x_1669 * x_1671) + x_1673);
        let x_1676 : vec4<f32> = u_xlat18;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.z, x_1676.w);
        let x_1679 : f32 = u_xlat5.z;
        txVec22 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec22;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1686.xy, x_1686.z);
        u_xlat52.x = x_1688;
        let x_1691 : f32 = u_xlat21.y;
        let x_1693 : f32 = u_xlat52.x;
        let x_1695 : f32 = u_xlat73;
        u_xlat73 = ((x_1691 * x_1693) + x_1695);
        let x_1698 : vec2<f32> = u_xlat32;
        let x_1700 : f32 = u_xlat5.z;
        txVec23 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec23;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1707.xy, x_1707.z);
        u_xlat52.x = x_1709;
        let x_1712 : f32 = u_xlat21.z;
        let x_1714 : f32 = u_xlat52.x;
        let x_1716 : f32 = u_xlat73;
        u_xlat73 = ((x_1712 * x_1714) + x_1716);
        let x_1719 : vec2<f32> = u_xlat60;
        let x_1721 : f32 = u_xlat5.z;
        txVec24 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec24;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1728.xy, x_1728.z);
        u_xlat52.x = x_1730;
        let x_1733 : f32 = u_xlat21.w;
        let x_1735 : f32 = u_xlat52.x;
        let x_1737 : f32 = u_xlat73;
        u_xlat73 = ((x_1733 * x_1735) + x_1737);
        let x_1740 : vec4<f32> = u_xlat13;
        let x_1741 : vec2<f32> = vec2<f32>(x_1740.x, x_1740.y);
        let x_1743 : f32 = u_xlat5.z;
        txVec25 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec25;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1750.xy, x_1750.z);
        u_xlat52.x = x_1752;
        let x_1755 : f32 = u_xlat9.x;
        let x_1757 : f32 = u_xlat52.x;
        let x_1759 : f32 = u_xlat73;
        u_xlat73 = ((x_1755 * x_1757) + x_1759);
        let x_1762 : vec4<f32> = u_xlat13;
        let x_1763 : vec2<f32> = vec2<f32>(x_1762.z, x_1762.w);
        let x_1765 : f32 = u_xlat5.z;
        txVec26 = vec3<f32>(x_1763.x, x_1763.y, x_1765);
        let x_1772 : vec3<f32> = txVec26;
        let x_1774 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1772.xy, x_1772.z);
        u_xlat52.x = x_1774;
        let x_1777 : f32 = u_xlat9.y;
        let x_1779 : f32 = u_xlat52.x;
        let x_1781 : f32 = u_xlat73;
        u_xlat73 = ((x_1777 * x_1779) + x_1781);
        let x_1784 : vec2<f32> = u_xlat55;
        let x_1786 : f32 = u_xlat5.z;
        txVec27 = vec3<f32>(x_1784.x, x_1784.y, x_1786);
        let x_1793 : vec3<f32> = txVec27;
        let x_1795 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1793.xy, x_1793.z);
        u_xlat52.x = x_1795;
        let x_1798 : f32 = u_xlat9.z;
        let x_1800 : f32 = u_xlat52.x;
        let x_1802 : f32 = u_xlat73;
        u_xlat73 = ((x_1798 * x_1800) + x_1802);
        let x_1805 : vec4<f32> = u_xlat8;
        let x_1806 : vec2<f32> = vec2<f32>(x_1805.x, x_1805.y);
        let x_1808 : f32 = u_xlat5.z;
        txVec28 = vec3<f32>(x_1806.x, x_1806.y, x_1808);
        let x_1815 : vec3<f32> = txVec28;
        let x_1817 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1815.xy, x_1815.z);
        u_xlat8.x = x_1817;
        let x_1820 : f32 = u_xlat9.w;
        let x_1822 : f32 = u_xlat8.x;
        let x_1824 : f32 = u_xlat73;
        u_xlat51.x = ((x_1820 * x_1822) + x_1824);
      }
    }
  } else {
    let x_1829 : vec4<f32> = u_xlat5;
    let x_1830 : vec2<f32> = vec2<f32>(x_1829.x, x_1829.y);
    let x_1832 : f32 = u_xlat5.z;
    txVec29 = vec3<f32>(x_1830.x, x_1830.y, x_1832);
    let x_1839 : vec3<f32> = txVec29;
    let x_1841 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1839.xy, x_1839.z);
    u_xlat51.x = x_1841;
  }
  let x_1844 : f32 = x_147.x_MainLightShadowParams.x;
  u_xlat5.x = (-(x_1844) + 1.0f);
  let x_1849 : f32 = u_xlat51.x;
  let x_1851 : f32 = x_147.x_MainLightShadowParams.x;
  let x_1854 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1849 * x_1851) + x_1854);
  let x_1859 : f32 = u_xlat5.z;
  u_xlatb27 = (0.0f >= x_1859);
  let x_1863 : f32 = u_xlat5.z;
  u_xlatb49 = (x_1863 >= 1.0f);
  let x_1865 : bool = u_xlatb49;
  let x_1866 : bool = u_xlatb27;
  u_xlatb27 = (x_1865 | x_1866);
  let x_1868 : bool = u_xlatb27;
  if (x_1868) {
    x_1869 = 1.0f;
  } else {
    let x_1874 : f32 = u_xlat5.x;
    x_1869 = x_1874;
  }
  let x_1875 : f32 = x_1869;
  u_xlat5.x = x_1875;
  let x_1877 : vec3<f32> = vs_TEXCOORD1;
  let x_1879 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1881 : vec3<f32> = (x_1877 + -(x_1879));
  let x_1882 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1881.x, x_1881.y, x_1881.z, x_1882.w);
  let x_1885 : vec4<f32> = u_xlat8;
  let x_1887 : vec4<f32> = u_xlat8;
  u_xlat27 = dot(vec3<f32>(x_1885.x, x_1885.y, x_1885.z), vec3<f32>(x_1887.x, x_1887.y, x_1887.z));
  let x_1890 : f32 = u_xlat27;
  let x_1892 : f32 = x_147.x_MainLightShadowParams.z;
  let x_1895 : f32 = x_147.x_MainLightShadowParams.w;
  u_xlat27 = ((x_1890 * x_1892) + x_1895);
  let x_1897 : f32 = u_xlat27;
  u_xlat27 = clamp(x_1897, 0.0f, 1.0f);
  let x_1901 : f32 = u_xlat5.x;
  u_xlat49 = (-(x_1901) + 1.0f);
  let x_1904 : f32 = u_xlat27;
  let x_1905 : f32 = u_xlat49;
  let x_1908 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1904 * x_1905) + x_1908);
  let x_1911 : f32 = u_xlat29;
  let x_1914 : vec4<f32> = x_44.x_MainLightColor;
  let x_1916 : vec3<f32> = (vec3<f32>(x_1911, x_1911, x_1911) * vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
  let x_1917 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1916.x, x_1916.y, x_1916.z, x_1917.w);
  let x_1919 : vec3<f32> = u_xlat3;
  let x_1921 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(-(x_1919), vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
  let x_1924 : f32 = u_xlat27;
  let x_1925 : f32 = u_xlat27;
  u_xlat27 = (x_1924 + x_1925);
  let x_1927 : vec4<f32> = u_xlat4;
  let x_1929 : f32 = u_xlat27;
  let x_1933 : vec3<f32> = u_xlat3;
  let x_1935 : vec3<f32> = ((vec3<f32>(x_1927.x, x_1927.y, x_1927.z) * -(vec3<f32>(x_1929, x_1929, x_1929))) + -(x_1933));
  let x_1936 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
  let x_1938 : vec4<f32> = u_xlat4;
  let x_1940 : vec3<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_1938.x, x_1938.y, x_1938.z), x_1940);
  let x_1942 : f32 = u_xlat27;
  u_xlat27 = clamp(x_1942, 0.0f, 1.0f);
  let x_1944 : f32 = u_xlat27;
  u_xlat27 = (-(x_1944) + 1.0f);
  let x_1947 : f32 = u_xlat27;
  let x_1948 : f32 = u_xlat27;
  u_xlat27 = (x_1947 * x_1948);
  let x_1950 : f32 = u_xlat27;
  let x_1951 : f32 = u_xlat27;
  u_xlat27 = (x_1950 * x_1951);
  let x_1953 : f32 = u_xlat68;
  u_xlat49 = ((-(x_1953) * 0.699999988f) + 1.700000048f);
  let x_1959 : f32 = u_xlat68;
  let x_1960 : f32 = u_xlat49;
  u_xlat68 = (x_1959 * x_1960);
  let x_1962 : f32 = u_xlat68;
  u_xlat68 = (x_1962 * 6.0f);
  let x_1973 : vec4<f32> = u_xlat9;
  let x_1975 : f32 = u_xlat68;
  let x_1976 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1973.x, x_1973.y, x_1973.z), x_1975);
  u_xlat9 = x_1976;
  let x_1978 : f32 = u_xlat9.w;
  u_xlat68 = (x_1978 + -1.0f);
  let x_1981 : f32 = x_378.unity_SpecCube0_HDR.w;
  let x_1982 : f32 = u_xlat68;
  u_xlat68 = ((x_1981 * x_1982) + 1.0f);
  let x_1985 : f32 = u_xlat68;
  u_xlat68 = max(x_1985, 0.0f);
  let x_1987 : f32 = u_xlat68;
  u_xlat68 = log2(x_1987);
  let x_1989 : f32 = u_xlat68;
  let x_1991 : f32 = x_378.unity_SpecCube0_HDR.y;
  u_xlat68 = (x_1989 * x_1991);
  let x_1993 : f32 = u_xlat68;
  u_xlat68 = exp2(x_1993);
  let x_1995 : f32 = u_xlat68;
  let x_1997 : f32 = x_378.unity_SpecCube0_HDR.x;
  u_xlat68 = (x_1995 * x_1997);
  let x_1999 : vec4<f32> = u_xlat9;
  let x_2001 : f32 = u_xlat68;
  let x_2003 : vec3<f32> = (vec3<f32>(x_1999.x, x_1999.y, x_1999.z) * vec3<f32>(x_2001, x_2001, x_2001));
  let x_2004 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2003.x, x_2003.y, x_2003.z, x_2004.w);
  let x_2006 : f32 = u_xlat70;
  let x_2008 : f32 = u_xlat70;
  u_xlat51 = ((vec2<f32>(x_2006, x_2006) * vec2<f32>(x_2008, x_2008)) + vec2<f32>(-1.0f, 1.0f));
  let x_2014 : f32 = u_xlat51.y;
  u_xlat68 = (1.0f / x_2014);
  let x_2016 : vec4<f32> = u_xlat0;
  let x_2019 : f32 = u_xlat69;
  let x_2021 : vec3<f32> = (-(vec3<f32>(x_2016.x, x_2016.y, x_2016.z)) + vec3<f32>(x_2019, x_2019, x_2019));
  let x_2022 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2021.x, x_2021.y, x_2021.z, x_2022.w);
  let x_2024 : f32 = u_xlat27;
  let x_2026 : vec4<f32> = u_xlat10;
  let x_2029 : vec4<f32> = u_xlat0;
  let x_2031 : vec3<f32> = ((vec3<f32>(x_2024, x_2024, x_2024) * vec3<f32>(x_2026.x, x_2026.y, x_2026.z)) + vec3<f32>(x_2029.x, x_2029.y, x_2029.z));
  let x_2032 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2031.x, x_2031.y, x_2031.z, x_2032.w);
  let x_2034 : f32 = u_xlat68;
  let x_2036 : vec4<f32> = u_xlat10;
  let x_2038 : vec3<f32> = (vec3<f32>(x_2034, x_2034, x_2034) * vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
  let x_2039 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
  let x_2041 : vec4<f32> = u_xlat9;
  let x_2043 : vec4<f32> = u_xlat10;
  let x_2045 : vec3<f32> = (vec3<f32>(x_2041.x, x_2041.y, x_2041.z) * vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
  let x_2046 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2045.x, x_2045.y, x_2045.z, x_2046.w);
  let x_2048 : vec4<f32> = u_xlat6;
  let x_2050 : vec3<f32> = u_xlat23;
  let x_2052 : vec4<f32> = u_xlat9;
  let x_2054 : vec3<f32> = ((vec3<f32>(x_2048.x, x_2048.y, x_2048.z) * x_2050) + vec3<f32>(x_2052.x, x_2052.y, x_2052.z));
  let x_2055 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2054.x, x_2054.y, x_2054.z, x_2055.w);
  let x_2058 : f32 = u_xlat5.x;
  let x_2060 : f32 = x_378.unity_LightData.z;
  u_xlat68 = (x_2058 * x_2060);
  let x_2062 : vec4<f32> = u_xlat4;
  let x_2065 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat69 = dot(vec3<f32>(x_2062.x, x_2062.y, x_2062.z), vec3<f32>(x_2065.x, x_2065.y, x_2065.z));
  let x_2068 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2068, 0.0f, 1.0f);
  let x_2070 : f32 = u_xlat68;
  let x_2071 : f32 = u_xlat69;
  u_xlat68 = (x_2070 * x_2071);
  let x_2073 : f32 = u_xlat68;
  let x_2075 : vec4<f32> = u_xlat8;
  let x_2077 : vec3<f32> = (vec3<f32>(x_2073, x_2073, x_2073) * vec3<f32>(x_2075.x, x_2075.y, x_2075.z));
  let x_2078 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2077.x, x_2077.y, x_2077.z, x_2078.w);
  let x_2080 : vec3<f32> = u_xlat3;
  let x_2082 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2084 : vec3<f32> = (x_2080 + vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
  let x_2085 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2084.x, x_2084.y, x_2084.z, x_2085.w);
  let x_2087 : vec4<f32> = u_xlat8;
  let x_2089 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2087.x, x_2087.y, x_2087.z), vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
  let x_2092 : f32 = u_xlat68;
  u_xlat68 = max(x_2092, 1.17549435e-37f);
  let x_2095 : f32 = u_xlat68;
  u_xlat68 = inverseSqrt(x_2095);
  let x_2097 : f32 = u_xlat68;
  let x_2099 : vec4<f32> = u_xlat8;
  let x_2101 : vec3<f32> = (vec3<f32>(x_2097, x_2097, x_2097) * vec3<f32>(x_2099.x, x_2099.y, x_2099.z));
  let x_2102 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2101.x, x_2101.y, x_2101.z, x_2102.w);
  let x_2104 : vec4<f32> = u_xlat4;
  let x_2106 : vec4<f32> = u_xlat8;
  u_xlat68 = dot(vec3<f32>(x_2104.x, x_2104.y, x_2104.z), vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
  let x_2109 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2109, 0.0f, 1.0f);
  let x_2112 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2114 : vec4<f32> = u_xlat8;
  u_xlat69 = dot(vec3<f32>(x_2112.x, x_2112.y, x_2112.z), vec3<f32>(x_2114.x, x_2114.y, x_2114.z));
  let x_2117 : f32 = u_xlat69;
  u_xlat69 = clamp(x_2117, 0.0f, 1.0f);
  let x_2119 : f32 = u_xlat68;
  let x_2120 : f32 = u_xlat68;
  u_xlat68 = (x_2119 * x_2120);
  let x_2122 : f32 = u_xlat68;
  let x_2124 : f32 = u_xlat51.x;
  u_xlat68 = ((x_2122 * x_2124) + 1.000010014f);
  let x_2128 : f32 = u_xlat69;
  let x_2129 : f32 = u_xlat69;
  u_xlat69 = (x_2128 * x_2129);
  let x_2131 : f32 = u_xlat68;
  let x_2132 : f32 = u_xlat68;
  u_xlat68 = (x_2131 * x_2132);
  let x_2134 : f32 = u_xlat69;
  u_xlat69 = max(x_2134, 0.100000001f);
  let x_2137 : f32 = u_xlat68;
  let x_2138 : f32 = u_xlat69;
  u_xlat68 = (x_2137 * x_2138);
  let x_2140 : f32 = u_xlat72;
  let x_2141 : f32 = u_xlat68;
  u_xlat68 = (x_2140 * x_2141);
  let x_2143 : f32 = u_xlat71;
  let x_2144 : f32 = u_xlat68;
  u_xlat68 = (x_2143 / x_2144);
  let x_2146 : vec4<f32> = u_xlat0;
  let x_2148 : f32 = u_xlat68;
  let x_2151 : vec3<f32> = u_xlat23;
  let x_2152 : vec3<f32> = ((vec3<f32>(x_2146.x, x_2146.y, x_2146.z) * vec3<f32>(x_2148, x_2148, x_2148)) + x_2151);
  let x_2153 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2152.x, x_2152.y, x_2152.z, x_2153.w);
  let x_2155 : vec4<f32> = u_xlat5;
  let x_2157 : vec4<f32> = u_xlat8;
  let x_2159 : vec3<f32> = (vec3<f32>(x_2155.x, x_2155.y, x_2155.z) * vec3<f32>(x_2157.x, x_2157.y, x_2157.z));
  let x_2160 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2159.x, x_2159.y, x_2159.z, x_2160.w);
  let x_2163 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2165 : f32 = x_378.unity_LightData.y;
  u_xlat68 = min(x_2163, x_2165);
  let x_2168 : f32 = u_xlat68;
  u_xlatu68 = bitcast<u32>(i32(x_2168));
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2180 : u32 = u_xlatu_loop_1;
    let x_2181 : u32 = u_xlatu68;
    if ((x_2180 < x_2181)) {
    } else {
      break;
    }
    let x_2184 : u32 = u_xlatu_loop_1;
    u_xlatu70 = (x_2184 >> 2u);
    let x_2187 : u32 = u_xlatu_loop_1;
    u_xlati73 = bitcast<i32>((x_2187 & 3u));
    let x_2190 : u32 = u_xlatu70;
    let x_2193 : vec4<f32> = x_378.unity_LightIndices[bitcast<i32>(x_2190)];
    let x_2203 : i32 = u_xlati73;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2208 : vec4<u32> = indexable[x_2203];
    u_xlat70 = dot(x_2193, bitcast<vec4<f32>>(x_2208));
    let x_2212 : f32 = u_xlat70;
    u_xlati70 = i32(x_2212);
    let x_2214 : vec3<f32> = vs_TEXCOORD1;
    let x_2226 : i32 = u_xlati70;
    let x_2228 : vec4<f32> = x_2225.x_AdditionalLightsPosition[x_2226];
    let x_2231 : i32 = u_xlati70;
    let x_2233 : vec4<f32> = x_2225.x_AdditionalLightsPosition[x_2231];
    let x_2235 : vec3<f32> = ((-(x_2214) * vec3<f32>(x_2228.w, x_2228.w, x_2228.w)) + vec3<f32>(x_2233.x, x_2233.y, x_2233.z));
    let x_2236 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2236.w);
    let x_2238 : vec4<f32> = u_xlat9;
    let x_2240 : vec4<f32> = u_xlat9;
    u_xlat73 = dot(vec3<f32>(x_2238.x, x_2238.y, x_2238.z), vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
    let x_2243 : f32 = u_xlat73;
    u_xlat73 = max(x_2243, 6.10351562e-05f);
    let x_2247 : f32 = u_xlat73;
    u_xlat74 = inverseSqrt(x_2247);
    let x_2249 : f32 = u_xlat74;
    let x_2251 : vec4<f32> = u_xlat9;
    let x_2253 : vec3<f32> = (vec3<f32>(x_2249, x_2249, x_2249) * vec3<f32>(x_2251.x, x_2251.y, x_2251.z));
    let x_2254 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2253.x, x_2253.y, x_2253.z, x_2254.w);
    let x_2257 : f32 = u_xlat73;
    u_xlat75 = (1.0f / x_2257);
    let x_2259 : f32 = u_xlat73;
    let x_2260 : i32 = u_xlati70;
    let x_2262 : f32 = x_2225.x_AdditionalLightsAttenuation[x_2260].x;
    u_xlat73 = (x_2259 * x_2262);
    let x_2264 : f32 = u_xlat73;
    let x_2266 : f32 = u_xlat73;
    u_xlat73 = ((-(x_2264) * x_2266) + 1.0f);
    let x_2269 : f32 = u_xlat73;
    u_xlat73 = max(x_2269, 0.0f);
    let x_2271 : f32 = u_xlat73;
    let x_2272 : f32 = u_xlat73;
    u_xlat73 = (x_2271 * x_2272);
    let x_2274 : f32 = u_xlat73;
    let x_2275 : f32 = u_xlat75;
    u_xlat73 = (x_2274 * x_2275);
    let x_2277 : i32 = u_xlati70;
    let x_2279 : vec4<f32> = x_2225.x_AdditionalLightsSpotDir[x_2277];
    let x_2281 : vec4<f32> = u_xlat10;
    u_xlat75 = dot(vec3<f32>(x_2279.x, x_2279.y, x_2279.z), vec3<f32>(x_2281.x, x_2281.y, x_2281.z));
    let x_2284 : f32 = u_xlat75;
    let x_2285 : i32 = u_xlati70;
    let x_2287 : f32 = x_2225.x_AdditionalLightsAttenuation[x_2285].z;
    let x_2289 : i32 = u_xlati70;
    let x_2291 : f32 = x_2225.x_AdditionalLightsAttenuation[x_2289].w;
    u_xlat75 = ((x_2284 * x_2287) + x_2291);
    let x_2293 : f32 = u_xlat75;
    u_xlat75 = clamp(x_2293, 0.0f, 1.0f);
    let x_2295 : f32 = u_xlat75;
    let x_2296 : f32 = u_xlat75;
    u_xlat75 = (x_2295 * x_2296);
    let x_2298 : f32 = u_xlat73;
    let x_2299 : f32 = u_xlat75;
    u_xlat73 = (x_2298 * x_2299);
    let x_2301 : f32 = u_xlat29;
    let x_2303 : i32 = u_xlati70;
    let x_2305 : vec4<f32> = x_2225.x_AdditionalLightsColor[x_2303];
    let x_2307 : vec3<f32> = (vec3<f32>(x_2301, x_2301, x_2301) * vec3<f32>(x_2305.x, x_2305.y, x_2305.z));
    let x_2308 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2307.x, x_2307.y, x_2307.z, x_2308.w);
    let x_2310 : vec4<f32> = u_xlat4;
    let x_2312 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2310.x, x_2310.y, x_2310.z), vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
    let x_2315 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2315, 0.0f, 1.0f);
    let x_2317 : f32 = u_xlat70;
    let x_2318 : f32 = u_xlat73;
    u_xlat70 = (x_2317 * x_2318);
    let x_2320 : f32 = u_xlat70;
    let x_2322 : vec4<f32> = u_xlat11;
    let x_2324 : vec3<f32> = (vec3<f32>(x_2320, x_2320, x_2320) * vec3<f32>(x_2322.x, x_2322.y, x_2322.z));
    let x_2325 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2324.x, x_2324.y, x_2324.z, x_2325.w);
    let x_2327 : vec4<f32> = u_xlat9;
    let x_2329 : f32 = u_xlat74;
    let x_2332 : vec3<f32> = u_xlat3;
    let x_2333 : vec3<f32> = ((vec3<f32>(x_2327.x, x_2327.y, x_2327.z) * vec3<f32>(x_2329, x_2329, x_2329)) + x_2332);
    let x_2334 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2333.x, x_2333.y, x_2333.z, x_2334.w);
    let x_2336 : vec4<f32> = u_xlat9;
    let x_2338 : vec4<f32> = u_xlat9;
    u_xlat70 = dot(vec3<f32>(x_2336.x, x_2336.y, x_2336.z), vec3<f32>(x_2338.x, x_2338.y, x_2338.z));
    let x_2341 : f32 = u_xlat70;
    u_xlat70 = max(x_2341, 1.17549435e-37f);
    let x_2343 : f32 = u_xlat70;
    u_xlat70 = inverseSqrt(x_2343);
    let x_2345 : f32 = u_xlat70;
    let x_2347 : vec4<f32> = u_xlat9;
    let x_2349 : vec3<f32> = (vec3<f32>(x_2345, x_2345, x_2345) * vec3<f32>(x_2347.x, x_2347.y, x_2347.z));
    let x_2350 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2349.x, x_2349.y, x_2349.z, x_2350.w);
    let x_2352 : vec4<f32> = u_xlat4;
    let x_2354 : vec4<f32> = u_xlat9;
    u_xlat70 = dot(vec3<f32>(x_2352.x, x_2352.y, x_2352.z), vec3<f32>(x_2354.x, x_2354.y, x_2354.z));
    let x_2357 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2357, 0.0f, 1.0f);
    let x_2359 : vec4<f32> = u_xlat10;
    let x_2361 : vec4<f32> = u_xlat9;
    u_xlat73 = dot(vec3<f32>(x_2359.x, x_2359.y, x_2359.z), vec3<f32>(x_2361.x, x_2361.y, x_2361.z));
    let x_2364 : f32 = u_xlat73;
    u_xlat73 = clamp(x_2364, 0.0f, 1.0f);
    let x_2366 : f32 = u_xlat70;
    let x_2367 : f32 = u_xlat70;
    u_xlat70 = (x_2366 * x_2367);
    let x_2369 : f32 = u_xlat70;
    let x_2371 : f32 = u_xlat51.x;
    u_xlat70 = ((x_2369 * x_2371) + 1.000010014f);
    let x_2374 : f32 = u_xlat73;
    let x_2375 : f32 = u_xlat73;
    u_xlat73 = (x_2374 * x_2375);
    let x_2377 : f32 = u_xlat70;
    let x_2378 : f32 = u_xlat70;
    u_xlat70 = (x_2377 * x_2378);
    let x_2380 : f32 = u_xlat73;
    u_xlat73 = max(x_2380, 0.100000001f);
    let x_2382 : f32 = u_xlat70;
    let x_2383 : f32 = u_xlat73;
    u_xlat70 = (x_2382 * x_2383);
    let x_2385 : f32 = u_xlat72;
    let x_2386 : f32 = u_xlat70;
    u_xlat70 = (x_2385 * x_2386);
    let x_2388 : f32 = u_xlat71;
    let x_2389 : f32 = u_xlat70;
    u_xlat70 = (x_2388 / x_2389);
    let x_2391 : vec4<f32> = u_xlat0;
    let x_2393 : f32 = u_xlat70;
    let x_2396 : vec3<f32> = u_xlat23;
    let x_2397 : vec3<f32> = ((vec3<f32>(x_2391.x, x_2391.y, x_2391.z) * vec3<f32>(x_2393, x_2393, x_2393)) + x_2396);
    let x_2398 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2397.x, x_2397.y, x_2397.z, x_2398.w);
    let x_2400 : vec4<f32> = u_xlat9;
    let x_2402 : vec4<f32> = u_xlat11;
    let x_2405 : vec4<f32> = u_xlat8;
    let x_2407 : vec3<f32> = ((vec3<f32>(x_2400.x, x_2400.y, x_2400.z) * vec3<f32>(x_2402.x, x_2402.y, x_2402.z)) + vec3<f32>(x_2405.x, x_2405.y, x_2405.z));
    let x_2408 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2407.x, x_2407.y, x_2407.z, x_2408.w);

    continuing {
      let x_2410 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2410 + bitcast<u32>(1i));
    }
  }
  let x_2412 : vec4<f32> = u_xlat6;
  let x_2414 : vec4<f32> = u_xlat7;
  let x_2417 : vec4<f32> = u_xlat5;
  let x_2419 : vec3<f32> = ((vec3<f32>(x_2412.x, x_2412.y, x_2412.z) * vec3<f32>(x_2414.x, x_2414.x, x_2414.x)) + vec3<f32>(x_2417.x, x_2417.y, x_2417.z));
  let x_2420 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2419.x, x_2419.y, x_2419.z, x_2420.w);
  let x_2422 : vec4<f32> = u_xlat8;
  let x_2424 : vec4<f32> = u_xlat0;
  let x_2426 : vec3<f32> = (vec3<f32>(x_2422.x, x_2422.y, x_2422.z) + vec3<f32>(x_2424.x, x_2424.y, x_2424.z));
  let x_2427 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2426.x, x_2426.y, x_2426.z, x_2427.w);
  let x_2429 : vec3<f32> = u_xlat2;
  let x_2431 : vec4<f32> = x_57.x_EmissionColor;
  let x_2434 : vec4<f32> = u_xlat0;
  let x_2436 : vec3<f32> = ((x_2429 * vec3<f32>(x_2431.x, x_2431.y, x_2431.z)) + vec3<f32>(x_2434.x, x_2434.y, x_2434.z));
  let x_2437 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2437.w);
  let x_2439 : f32 = u_xlat66;
  let x_2440 : f32 = u_xlat66;
  u_xlat66 = (x_2439 * -(x_2440));
  let x_2443 : f32 = u_xlat66;
  u_xlat66 = exp2(x_2443);
  let x_2445 : vec4<f32> = u_xlat0;
  let x_2449 : vec4<f32> = x_44.unity_FogColor;
  let x_2452 : vec3<f32> = (vec3<f32>(x_2445.x, x_2445.y, x_2445.z) + -(vec3<f32>(x_2449.x, x_2449.y, x_2449.z)));
  let x_2453 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2452.x, x_2452.y, x_2452.z, x_2453.w);
  let x_2457 : f32 = u_xlat66;
  let x_2459 : vec4<f32> = u_xlat0;
  let x_2463 : vec4<f32> = x_44.unity_FogColor;
  let x_2465 : vec3<f32> = ((vec3<f32>(x_2457, x_2457, x_2457) * vec3<f32>(x_2459.x, x_2459.y, x_2459.z)) + vec3<f32>(x_2463.x, x_2463.y, x_2463.z));
  let x_2466 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2465.x, x_2465.y, x_2465.z, x_2466.w);
  let x_2471 : f32 = x_57.x_Surface;
  u_xlatb0 = (x_2471 == 1.0f);
  let x_2473 : bool = u_xlatb0;
  if (x_2473) {
    let x_2478 : f32 = u_xlat1.x;
    x_2474 = x_2478;
  } else {
    x_2474 = 1.0f;
  }
  let x_2480 : f32 = x_2474;
  SV_Target0.w = x_2480;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

