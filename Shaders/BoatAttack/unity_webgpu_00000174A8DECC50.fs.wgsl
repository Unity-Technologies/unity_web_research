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
  x_ScaleBiasRt : vec4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_87 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_285 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1866 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat20 : vec3<f32>;
  var u_xlat55 : f32;
  var u_xlat56 : f32;
  var u_xlatb57 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat57 : f32;
  var u_xlatb4 : bool;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat22 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat60 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat58 : f32;
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
  var u_xlatb20 : bool;
  var u_xlatb38 : bool;
  var x_1706 : f32;
  var u_xlat38 : f32;
  var u_xlatu55 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu58 : u32;
  var u_xlati5 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati58 : i32;
  var u_xlat59 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_2017 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_64 : vec3<f32> = vs_TEXCOORD2;
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_64, x_65);
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_70);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec3<f32> = vs_TEXCOORD2;
  let x_76 : vec3<f32> = (vec3<f32>(x_73.x, x_73.x, x_73.x) * x_75);
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_81 : vec3<f32> = vs_TEXCOORD1;
  let x_89 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres0;
  let x_92 : vec3<f32> = (x_81 + -(vec3<f32>(x_89.x, x_89.y, x_89.z)));
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : vec3<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres1;
  let x_102 : vec3<f32> = (x_96 + -(vec3<f32>(x_99.x, x_99.y, x_99.z)));
  let x_103 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_106 : vec3<f32> = vs_TEXCOORD1;
  let x_109 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres2;
  let x_112 : vec3<f32> = (x_106 + -(vec3<f32>(x_109.x, x_109.y, x_109.z)));
  let x_113 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_112.x, x_112.y, x_112.z, x_113.w);
  let x_116 : vec3<f32> = vs_TEXCOORD1;
  let x_119 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres3;
  let x_122 : vec3<f32> = (x_116 + -(vec3<f32>(x_119.x, x_119.y, x_119.z)));
  let x_123 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_125 : vec4<f32> = u_xlat2;
  let x_127 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_125.x, x_125.y, x_125.z), vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_131 : vec4<f32> = u_xlat3;
  let x_133 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_131.x, x_131.y, x_131.z), vec3<f32>(x_133.x, x_133.y, x_133.z));
  let x_138 : vec4<f32> = u_xlat4;
  let x_140 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_138.x, x_138.y, x_138.z), vec3<f32>(x_140.x, x_140.y, x_140.z));
  let x_145 : vec4<f32> = u_xlat5;
  let x_147 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_145.x, x_145.y, x_145.z), vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_155 : vec4<f32> = u_xlat2;
  let x_158 : vec4<f32> = x_87.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_155 < x_158);
  let x_162 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_162);
  let x_167 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_167);
  let x_171 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_171);
  let x_175 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_175);
  let x_179 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_179);
  let x_185 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_185);
  let x_189 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_189);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat3;
  let x_196 : vec3<f32> = (vec3<f32>(x_192.x, x_192.y, x_192.z) + vec3<f32>(x_194.y, x_194.z, x_194.w));
  let x_197 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : vec4<f32> = u_xlat2;
  let x_202 : vec3<f32> = max(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_203 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_203.x, x_202.x, x_202.y, x_202.z);
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_205, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_213 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_213) + 4.0f);
  let x_220 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_220);
  let x_224 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_224) << bitcast<u32>(2i));
  let x_229 : vec3<f32> = vs_TEXCOORD1;
  let x_232 : i32 = u_xlati2;
  let x_235 : i32 = u_xlati2;
  let x_239 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_232 + 1i) / 4i)][((x_235 + 1i) % 4i)];
  u_xlat20 = (vec3<f32>(x_229.y, x_229.y, x_229.y) * vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : i32 = u_xlati2;
  let x_244 : i32 = u_xlati2;
  let x_247 : vec4<f32> = x_87.x_MainLightWorldToShadow[(x_242 / 4i)][(x_244 % 4i)];
  let x_249 : vec3<f32> = vs_TEXCOORD1;
  let x_252 : vec3<f32> = u_xlat20;
  u_xlat20 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.x, x_249.x, x_249.x)) + x_252);
  let x_254 : i32 = u_xlati2;
  let x_257 : i32 = u_xlati2;
  let x_261 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_254 + 2i) / 4i)][((x_257 + 2i) % 4i)];
  let x_263 : vec3<f32> = vs_TEXCOORD1;
  let x_266 : vec3<f32> = u_xlat20;
  u_xlat20 = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.z, x_263.z, x_263.z)) + x_266);
  let x_268 : vec3<f32> = u_xlat20;
  let x_269 : i32 = u_xlati2;
  let x_272 : i32 = u_xlati2;
  let x_276 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_269 + 3i) / 4i)][((x_272 + 3i) % 4i)];
  let x_278 : vec3<f32> = (x_268 + vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  u_xlat1.w = 1.0f;
  let x_288 : vec4<f32> = x_285.unity_SHAr;
  let x_289 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_288, x_289);
  let x_294 : vec4<f32> = x_285.unity_SHAg;
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_294, x_295);
  let x_300 : vec4<f32> = x_285.unity_SHAb;
  let x_301 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_300, x_301);
  let x_304 : vec4<f32> = u_xlat1;
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_304.y, x_304.z, x_304.z, x_304.x) * vec4<f32>(x_306.x, x_306.y, x_306.z, x_306.z));
  let x_311 : vec4<f32> = x_285.unity_SHBr;
  let x_312 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_311, x_312);
  let x_317 : vec4<f32> = x_285.unity_SHBg;
  let x_318 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_317, x_318);
  let x_323 : vec4<f32> = x_285.unity_SHBb;
  let x_324 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_323, x_324);
  let x_329 : f32 = u_xlat1.y;
  let x_331 : f32 = u_xlat1.y;
  u_xlat55 = (x_329 * x_331);
  let x_334 : f32 = u_xlat1.x;
  let x_336 : f32 = u_xlat1.x;
  let x_338 : f32 = u_xlat55;
  u_xlat55 = ((x_334 * x_336) + -(x_338));
  let x_343 : vec4<f32> = x_285.unity_SHC;
  let x_345 : f32 = u_xlat55;
  let x_348 : vec4<f32> = u_xlat5;
  let x_350 : vec3<f32> = ((vec3<f32>(x_343.x, x_343.y, x_343.z) * vec3<f32>(x_345, x_345, x_345)) + vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat3;
  let x_355 : vec4<f32> = u_xlat4;
  let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat3;
  let x_362 : vec3<f32> = max(vec3<f32>(x_360.x, x_360.y, x_360.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_363 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_367 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_368 : vec2<f32> = vec2<f32>(x_367.x, x_367.y);
  let x_372 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_368.x, x_368.y));
  let x_373 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
  let x_375 : vec4<f32> = u_xlat4;
  let x_377 : vec4<f32> = hlslcc_FragCoord;
  let x_379 : vec2<f32> = (vec2<f32>(x_375.x, x_375.y) * vec2<f32>(x_377.x, x_377.y));
  let x_380 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
  let x_383 : f32 = u_xlat4.y;
  let x_386 : f32 = x_43.x_ScaleBiasRt.x;
  let x_389 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_383 * x_386) + x_389);
  let x_391 : f32 = u_xlat55;
  u_xlat4.z = (-(x_391) + 1.0f);
  let x_400 : vec4<f32> = u_xlat4;
  let x_403 : f32 = x_43.x_GlobalMipBias.x;
  let x_404 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_400.x, x_400.z), x_403);
  u_xlat55 = x_404.x;
  let x_407 : f32 = u_xlat55;
  u_xlat56 = (x_407 + -1.0f);
  let x_410 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_411 : f32 = u_xlat56;
  u_xlat56 = ((x_410 * x_411) + 1.0f);
  let x_414 : f32 = u_xlat55;
  u_xlat55 = min(x_414, 1.0f);
  let x_419 : f32 = x_87.x_MainLightShadowParams.y;
  u_xlatb57 = (0.0f < x_419);
  let x_421 : bool = u_xlatb57;
  if (x_421) {
    let x_425 : f32 = x_87.x_MainLightShadowParams.y;
    u_xlatb57 = (x_425 == 1.0f);
    let x_427 : bool = u_xlatb57;
    if (x_427) {
      let x_430 : vec4<f32> = u_xlat2;
      let x_434 : vec4<f32> = x_87.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_430.x, x_430.y, x_430.x, x_430.y) + x_434);
      let x_437 : vec4<f32> = u_xlat4;
      let x_438 : vec2<f32> = vec2<f32>(x_437.x, x_437.y);
      let x_440 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_438.x, x_438.y, x_440);
      let x_452 : vec3<f32> = txVec0;
      let x_454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_452.xy, x_452.z);
      u_xlat5.x = x_454;
      let x_457 : vec4<f32> = u_xlat4;
      let x_458 : vec2<f32> = vec2<f32>(x_457.z, x_457.w);
      let x_460 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_458.x, x_458.y, x_460);
      let x_467 : vec3<f32> = txVec1;
      let x_469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_467.xy, x_467.z);
      u_xlat5.y = x_469;
      let x_471 : vec4<f32> = u_xlat2;
      let x_474 : vec4<f32> = x_87.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_471.x, x_471.y, x_471.x, x_471.y) + x_474);
      let x_477 : vec4<f32> = u_xlat4;
      let x_478 : vec2<f32> = vec2<f32>(x_477.x, x_477.y);
      let x_480 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_478.x, x_478.y, x_480);
      let x_487 : vec3<f32> = txVec2;
      let x_489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_487.xy, x_487.z);
      u_xlat5.z = x_489;
      let x_492 : vec4<f32> = u_xlat4;
      let x_493 : vec2<f32> = vec2<f32>(x_492.z, x_492.w);
      let x_495 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_493.x, x_493.y, x_495);
      let x_502 : vec3<f32> = txVec3;
      let x_504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_502.xy, x_502.z);
      u_xlat5.w = x_504;
      let x_507 : vec4<f32> = u_xlat5;
      u_xlat57 = dot(x_507, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_514 : f32 = x_87.x_MainLightShadowParams.y;
      u_xlatb4 = (x_514 == 2.0f);
      let x_516 : bool = u_xlatb4;
      if (x_516) {
        let x_519 : vec4<f32> = u_xlat2;
        let x_523 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_528 : vec2<f32> = ((vec2<f32>(x_519.x, x_519.y) * vec2<f32>(x_523.z, x_523.w)) + vec2<f32>(0.5f, 0.5f));
        let x_529 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_531 : vec4<f32> = u_xlat4;
        let x_533 : vec2<f32> = floor(vec2<f32>(x_531.x, x_531.y));
        let x_534 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
        let x_538 : vec4<f32> = u_xlat2;
        let x_541 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_544 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_538.x, x_538.y) * vec2<f32>(x_541.z, x_541.w)) + -(vec2<f32>(x_544.x, x_544.y)));
        let x_548 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_548.x, x_548.x, x_548.y, x_548.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_553 : vec4<f32> = u_xlat5;
        let x_555 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_553.x, x_553.x, x_553.z, x_553.z) * vec4<f32>(x_555.x, x_555.x, x_555.z, x_555.z));
        let x_558 : vec4<f32> = u_xlat6;
        let x_562 : vec2<f32> = (vec2<f32>(x_558.y, x_558.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_563 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_562.x, x_563.y, x_562.y, x_563.w);
        let x_565 : vec4<f32> = u_xlat6;
        let x_568 : vec2<f32> = u_xlat40;
        let x_570 : vec2<f32> = ((vec2<f32>(x_565.x, x_565.z) * vec2<f32>(0.5f, 0.5f)) + -(x_568));
        let x_571 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_570.x, x_570.y, x_571.z, x_571.w);
        let x_574 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_574) + vec2<f32>(1.0f, 1.0f));
        let x_578 : vec2<f32> = u_xlat40;
        let x_580 : vec2<f32> = min(x_578, vec2<f32>(0.0f, 0.0f));
        let x_581 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_580.x, x_580.y, x_581.z, x_581.w);
        let x_583 : vec4<f32> = u_xlat7;
        let x_586 : vec4<f32> = u_xlat7;
        let x_589 : vec2<f32> = u_xlat42;
        let x_590 : vec2<f32> = ((-(vec2<f32>(x_583.x, x_583.y)) * vec2<f32>(x_586.x, x_586.y)) + x_589);
        let x_591 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
        let x_593 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_593, vec2<f32>(0.0f, 0.0f));
        let x_595 : vec2<f32> = u_xlat40;
        let x_597 : vec2<f32> = u_xlat40;
        let x_599 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_595) * x_597) + vec2<f32>(x_599.y, x_599.w));
        let x_602 : vec4<f32> = u_xlat7;
        let x_604 : vec2<f32> = (vec2<f32>(x_602.x, x_602.y) + vec2<f32>(1.0f, 1.0f));
        let x_605 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_605.w);
        let x_607 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_607 + vec2<f32>(1.0f, 1.0f));
        let x_610 : vec4<f32> = u_xlat6;
        let x_614 : vec2<f32> = (vec2<f32>(x_610.x, x_610.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_615 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_617 : vec2<f32> = u_xlat42;
        let x_618 : vec2<f32> = (x_617 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_619 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_621 : vec4<f32> = u_xlat7;
        let x_623 : vec2<f32> = (vec2<f32>(x_621.x, x_621.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_624 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
        let x_627 : vec2<f32> = u_xlat40;
        let x_628 : vec2<f32> = (x_627 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_629 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
        let x_631 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_631.y, x_631.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_635 : f32 = u_xlat7.x;
        u_xlat8.z = x_635;
        let x_638 : f32 = u_xlat40.x;
        u_xlat8.w = x_638;
        let x_641 : f32 = u_xlat9.x;
        u_xlat6.z = x_641;
        let x_644 : f32 = u_xlat5.x;
        u_xlat6.w = x_644;
        let x_647 : vec4<f32> = u_xlat6;
        let x_649 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_647.z, x_647.w, x_647.x, x_647.z) + vec4<f32>(x_649.z, x_649.w, x_649.x, x_649.z));
        let x_653 : f32 = u_xlat8.y;
        u_xlat7.z = x_653;
        let x_656 : f32 = u_xlat40.y;
        u_xlat7.w = x_656;
        let x_659 : f32 = u_xlat6.y;
        u_xlat9.z = x_659;
        let x_662 : f32 = u_xlat5.z;
        u_xlat9.w = x_662;
        let x_664 : vec4<f32> = u_xlat7;
        let x_666 : vec4<f32> = u_xlat9;
        let x_668 : vec3<f32> = (vec3<f32>(x_664.z, x_664.y, x_664.w) + vec3<f32>(x_666.z, x_666.y, x_666.w));
        let x_669 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat6;
        let x_673 : vec4<f32> = u_xlat10;
        let x_675 : vec3<f32> = (vec3<f32>(x_671.x, x_671.z, x_671.w) / vec3<f32>(x_673.z, x_673.w, x_673.y));
        let x_676 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat6;
        let x_684 : vec3<f32> = (vec3<f32>(x_678.x, x_678.y, x_678.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_685 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
        let x_687 : vec4<f32> = u_xlat9;
        let x_689 : vec4<f32> = u_xlat5;
        let x_691 : vec3<f32> = (vec3<f32>(x_687.z, x_687.y, x_687.w) / vec3<f32>(x_689.x, x_689.y, x_689.z));
        let x_692 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
        let x_694 : vec4<f32> = u_xlat7;
        let x_696 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
        let x_699 : vec4<f32> = u_xlat6;
        let x_702 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_704 : vec3<f32> = (vec3<f32>(x_699.y, x_699.x, x_699.z) * vec3<f32>(x_702.x, x_702.x, x_702.x));
        let x_705 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
        let x_707 : vec4<f32> = u_xlat7;
        let x_710 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_712 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) * vec3<f32>(x_710.y, x_710.y, x_710.y));
        let x_713 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
        let x_716 : f32 = u_xlat7.x;
        u_xlat6.w = x_716;
        let x_718 : vec4<f32> = u_xlat4;
        let x_721 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_724 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_718.x, x_718.y, x_718.x, x_718.y) * vec4<f32>(x_721.x, x_721.y, x_721.x, x_721.y)) + vec4<f32>(x_724.y, x_724.w, x_724.x, x_724.w));
        let x_727 : vec4<f32> = u_xlat4;
        let x_730 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_733 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_727.x, x_727.y) * vec2<f32>(x_730.x, x_730.y)) + vec2<f32>(x_733.z, x_733.w));
        let x_737 : f32 = u_xlat6.y;
        u_xlat7.w = x_737;
        let x_739 : vec4<f32> = u_xlat7;
        let x_740 : vec2<f32> = vec2<f32>(x_739.y, x_739.z);
        let x_741 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_741.x, x_740.x, x_741.z, x_740.y);
        let x_743 : vec4<f32> = u_xlat4;
        let x_746 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_749 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_743.x, x_743.y, x_743.x, x_743.y) * vec4<f32>(x_746.x, x_746.y, x_746.x, x_746.y)) + vec4<f32>(x_749.x, x_749.y, x_749.z, x_749.y));
        let x_752 : vec4<f32> = u_xlat4;
        let x_755 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_758 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_752.x, x_752.y, x_752.x, x_752.y) * vec4<f32>(x_755.x, x_755.y, x_755.x, x_755.y)) + vec4<f32>(x_758.w, x_758.y, x_758.w, x_758.z));
        let x_761 : vec4<f32> = u_xlat4;
        let x_764 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_767 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_761.x, x_761.y, x_761.x, x_761.y) * vec4<f32>(x_764.x, x_764.y, x_764.x, x_764.y)) + vec4<f32>(x_767.x, x_767.w, x_767.z, x_767.w));
        let x_771 : vec4<f32> = u_xlat5;
        let x_773 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_771.x, x_771.x, x_771.x, x_771.y) * vec4<f32>(x_773.z, x_773.w, x_773.y, x_773.z));
        let x_777 : vec4<f32> = u_xlat5;
        let x_779 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_777.y, x_777.y, x_777.z, x_777.z) * x_779);
        let x_782 : f32 = u_xlat5.z;
        let x_784 : f32 = u_xlat10.y;
        u_xlat4.x = (x_782 * x_784);
        let x_788 : vec4<f32> = u_xlat8;
        let x_789 : vec2<f32> = vec2<f32>(x_788.x, x_788.y);
        let x_791 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_799 : vec3<f32> = txVec4;
        let x_801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_799.xy, x_799.z);
        u_xlat22 = x_801;
        let x_803 : vec4<f32> = u_xlat8;
        let x_804 : vec2<f32> = vec2<f32>(x_803.z, x_803.w);
        let x_806 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_804.x, x_804.y, x_806);
        let x_813 : vec3<f32> = txVec5;
        let x_815 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_813.xy, x_813.z);
        u_xlat5.x = x_815;
        let x_818 : f32 = u_xlat5.x;
        let x_820 : f32 = u_xlat11.y;
        u_xlat5.x = (x_818 * x_820);
        let x_824 : f32 = u_xlat11.x;
        let x_825 : f32 = u_xlat22;
        let x_828 : f32 = u_xlat5.x;
        u_xlat22 = ((x_824 * x_825) + x_828);
        let x_831 : vec2<f32> = u_xlat40;
        let x_833 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_831.x, x_831.y, x_833);
        let x_840 : vec3<f32> = txVec6;
        let x_842 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_840.xy, x_840.z);
        u_xlat40.x = x_842;
        let x_845 : f32 = u_xlat11.z;
        let x_847 : f32 = u_xlat40.x;
        let x_849 : f32 = u_xlat22;
        u_xlat22 = ((x_845 * x_847) + x_849);
        let x_852 : vec4<f32> = u_xlat7;
        let x_853 : vec2<f32> = vec2<f32>(x_852.x, x_852.y);
        let x_855 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_853.x, x_853.y, x_855);
        let x_862 : vec3<f32> = txVec7;
        let x_864 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_862.xy, x_862.z);
        u_xlat40.x = x_864;
        let x_867 : f32 = u_xlat11.w;
        let x_869 : f32 = u_xlat40.x;
        let x_871 : f32 = u_xlat22;
        u_xlat22 = ((x_867 * x_869) + x_871);
        let x_874 : vec4<f32> = u_xlat9;
        let x_875 : vec2<f32> = vec2<f32>(x_874.x, x_874.y);
        let x_877 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_875.x, x_875.y, x_877);
        let x_884 : vec3<f32> = txVec8;
        let x_886 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_884.xy, x_884.z);
        u_xlat40.x = x_886;
        let x_889 : f32 = u_xlat12.x;
        let x_891 : f32 = u_xlat40.x;
        let x_893 : f32 = u_xlat22;
        u_xlat22 = ((x_889 * x_891) + x_893);
        let x_896 : vec4<f32> = u_xlat9;
        let x_897 : vec2<f32> = vec2<f32>(x_896.z, x_896.w);
        let x_899 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_897.x, x_897.y, x_899);
        let x_906 : vec3<f32> = txVec9;
        let x_908 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_906.xy, x_906.z);
        u_xlat40.x = x_908;
        let x_911 : f32 = u_xlat12.y;
        let x_913 : f32 = u_xlat40.x;
        let x_915 : f32 = u_xlat22;
        u_xlat22 = ((x_911 * x_913) + x_915);
        let x_918 : vec4<f32> = u_xlat7;
        let x_919 : vec2<f32> = vec2<f32>(x_918.z, x_918.w);
        let x_921 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_919.x, x_919.y, x_921);
        let x_928 : vec3<f32> = txVec10;
        let x_930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_928.xy, x_928.z);
        u_xlat40.x = x_930;
        let x_933 : f32 = u_xlat12.z;
        let x_935 : f32 = u_xlat40.x;
        let x_937 : f32 = u_xlat22;
        u_xlat22 = ((x_933 * x_935) + x_937);
        let x_940 : vec4<f32> = u_xlat6;
        let x_941 : vec2<f32> = vec2<f32>(x_940.x, x_940.y);
        let x_943 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_941.x, x_941.y, x_943);
        let x_950 : vec3<f32> = txVec11;
        let x_952 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_950.xy, x_950.z);
        u_xlat40.x = x_952;
        let x_955 : f32 = u_xlat12.w;
        let x_957 : f32 = u_xlat40.x;
        let x_959 : f32 = u_xlat22;
        u_xlat22 = ((x_955 * x_957) + x_959);
        let x_962 : vec4<f32> = u_xlat6;
        let x_963 : vec2<f32> = vec2<f32>(x_962.z, x_962.w);
        let x_965 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_963.x, x_963.y, x_965);
        let x_972 : vec3<f32> = txVec12;
        let x_974 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_972.xy, x_972.z);
        u_xlat40.x = x_974;
        let x_977 : f32 = u_xlat4.x;
        let x_979 : f32 = u_xlat40.x;
        let x_981 : f32 = u_xlat22;
        u_xlat57 = ((x_977 * x_979) + x_981);
      } else {
        let x_984 : vec4<f32> = u_xlat2;
        let x_987 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_990 : vec2<f32> = ((vec2<f32>(x_984.x, x_984.y) * vec2<f32>(x_987.z, x_987.w)) + vec2<f32>(0.5f, 0.5f));
        let x_991 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
        let x_993 : vec4<f32> = u_xlat4;
        let x_995 : vec2<f32> = floor(vec2<f32>(x_993.x, x_993.y));
        let x_996 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat2;
        let x_1001 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1004 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_998.x, x_998.y) * vec2<f32>(x_1001.z, x_1001.w)) + -(vec2<f32>(x_1004.x, x_1004.y)));
        let x_1008 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_1008.x, x_1008.x, x_1008.y, x_1008.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1011 : vec4<f32> = u_xlat5;
        let x_1013 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1011.x, x_1011.x, x_1011.z, x_1011.z) * vec4<f32>(x_1013.x, x_1013.x, x_1013.z, x_1013.z));
        let x_1016 : vec4<f32> = u_xlat6;
        let x_1020 : vec2<f32> = (vec2<f32>(x_1016.y, x_1016.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1021 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1021.x, x_1020.x, x_1021.z, x_1020.y);
        let x_1023 : vec4<f32> = u_xlat6;
        let x_1026 : vec2<f32> = u_xlat40;
        let x_1028 : vec2<f32> = ((vec2<f32>(x_1023.x, x_1023.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1026));
        let x_1029 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1028.x, x_1029.y, x_1028.y, x_1029.w);
        let x_1031 : vec2<f32> = u_xlat40;
        let x_1033 : vec2<f32> = (-(x_1031) + vec2<f32>(1.0f, 1.0f));
        let x_1034 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1036 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_1036, vec2<f32>(0.0f, 0.0f));
        let x_1038 : vec2<f32> = u_xlat42;
        let x_1040 : vec2<f32> = u_xlat42;
        let x_1042 : vec4<f32> = u_xlat6;
        let x_1044 : vec2<f32> = ((-(x_1038) * x_1040) + vec2<f32>(x_1042.x, x_1042.y));
        let x_1045 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1044.x, x_1044.y, x_1045.z, x_1045.w);
        let x_1047 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_1047, vec2<f32>(0.0f, 0.0f));
        let x_1050 : vec2<f32> = u_xlat42;
        let x_1052 : vec2<f32> = u_xlat42;
        let x_1054 : vec4<f32> = u_xlat5;
        let x_1056 : vec2<f32> = ((-(x_1050) * x_1052) + vec2<f32>(x_1054.y, x_1054.w));
        let x_1057 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1056.x, x_1057.y, x_1056.y);
        let x_1059 : vec4<f32> = u_xlat6;
        let x_1062 : vec2<f32> = (vec2<f32>(x_1059.x, x_1059.y) + vec2<f32>(2.0f, 2.0f));
        let x_1063 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1065 : vec3<f32> = u_xlat23;
        let x_1067 : vec2<f32> = (vec2<f32>(x_1065.x, x_1065.z) + vec2<f32>(2.0f, 2.0f));
        let x_1068 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1068.x, x_1067.x, x_1068.z, x_1067.y);
        let x_1071 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1071 * 0.081632003f);
        let x_1075 : vec4<f32> = u_xlat5;
        let x_1078 : vec3<f32> = (vec3<f32>(x_1075.z, x_1075.x, x_1075.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
        let x_1081 : vec4<f32> = u_xlat6;
        let x_1084 : vec2<f32> = (vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1085 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1084.x, x_1084.y, x_1085.z, x_1085.w);
        let x_1088 : f32 = u_xlat9.y;
        u_xlat8.x = x_1088;
        let x_1090 : vec2<f32> = u_xlat40;
        let x_1097 : vec2<f32> = ((vec2<f32>(x_1090.x, x_1090.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1098 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1098.x, x_1097.x, x_1098.z, x_1097.y);
        let x_1100 : vec2<f32> = u_xlat40;
        let x_1104 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1105 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1104.x, x_1105.y, x_1104.y, x_1105.w);
        let x_1108 : f32 = u_xlat5.x;
        u_xlat6.y = x_1108;
        let x_1111 : f32 = u_xlat7.y;
        u_xlat6.w = x_1111;
        let x_1113 : vec4<f32> = u_xlat6;
        let x_1114 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1113 + x_1114);
        let x_1116 : vec2<f32> = u_xlat40;
        let x_1119 : vec2<f32> = ((vec2<f32>(x_1116.y, x_1116.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1120.x, x_1119.x, x_1120.z, x_1119.y);
        let x_1122 : vec2<f32> = u_xlat40;
        let x_1125 : vec2<f32> = ((vec2<f32>(x_1122.y, x_1122.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1126 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1125.x, x_1126.y, x_1125.y, x_1126.w);
        let x_1129 : f32 = u_xlat5.y;
        u_xlat7.y = x_1129;
        let x_1131 : vec4<f32> = u_xlat7;
        let x_1132 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1131 + x_1132);
        let x_1134 : vec4<f32> = u_xlat6;
        let x_1135 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1134 / x_1135);
        let x_1137 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1137 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1144 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1143 / x_1144);
        let x_1146 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1146 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1148 : vec4<f32> = u_xlat6;
        let x_1151 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1148.w, x_1148.x, x_1148.y, x_1148.z) * vec4<f32>(x_1151.x, x_1151.x, x_1151.x, x_1151.x));
        let x_1154 : vec4<f32> = u_xlat7;
        let x_1157 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1154.x, x_1154.w, x_1154.y, x_1154.z) * vec4<f32>(x_1157.y, x_1157.y, x_1157.y, x_1157.y));
        let x_1160 : vec4<f32> = u_xlat6;
        let x_1161 : vec3<f32> = vec3<f32>(x_1160.y, x_1160.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1161.x, x_1162.y, x_1161.y, x_1161.z);
        let x_1165 : f32 = u_xlat7.x;
        u_xlat9.y = x_1165;
        let x_1167 : vec4<f32> = u_xlat4;
        let x_1170 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1173 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1167.x, x_1167.y, x_1167.x, x_1167.y) * vec4<f32>(x_1170.x, x_1170.y, x_1170.x, x_1170.y)) + vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1173.y));
        let x_1176 : vec4<f32> = u_xlat4;
        let x_1179 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1182 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(x_1179.x, x_1179.y)) + vec2<f32>(x_1182.w, x_1182.y));
        let x_1186 : f32 = u_xlat9.y;
        u_xlat6.y = x_1186;
        let x_1189 : f32 = u_xlat7.z;
        u_xlat9.y = x_1189;
        let x_1191 : vec4<f32> = u_xlat4;
        let x_1194 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y) * vec4<f32>(x_1194.x, x_1194.y, x_1194.x, x_1194.y)) + vec4<f32>(x_1197.x, x_1197.y, x_1197.z, x_1197.y));
        let x_1200 : vec4<f32> = u_xlat4;
        let x_1203 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat9;
        let x_1208 : vec2<f32> = ((vec2<f32>(x_1200.x, x_1200.y) * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.w, x_1206.y));
        let x_1209 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1208.x, x_1208.y, x_1209.z, x_1209.w);
        let x_1212 : f32 = u_xlat9.y;
        u_xlat6.z = x_1212;
        let x_1215 : vec4<f32> = u_xlat4;
        let x_1218 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1221 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y) * vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.y)) + vec4<f32>(x_1221.x, x_1221.y, x_1221.x, x_1221.z));
        let x_1225 : f32 = u_xlat7.w;
        u_xlat9.y = x_1225;
        let x_1228 : vec4<f32> = u_xlat4;
        let x_1231 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1228.x, x_1228.y, x_1228.x, x_1228.y) * vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.y)) + vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1234.y));
        let x_1238 : vec4<f32> = u_xlat4;
        let x_1241 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1241.x, x_1241.y)) + vec2<f32>(x_1244.w, x_1244.y));
        let x_1248 : f32 = u_xlat9.y;
        u_xlat6.w = x_1248;
        let x_1251 : vec4<f32> = u_xlat4;
        let x_1254 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1257 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1251.x, x_1251.y) * vec2<f32>(x_1254.x, x_1254.y)) + vec2<f32>(x_1257.x, x_1257.w));
        let x_1260 : vec4<f32> = u_xlat9;
        let x_1261 : vec3<f32> = vec3<f32>(x_1260.x, x_1260.z, x_1260.w);
        let x_1262 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1261.x, x_1262.y, x_1261.y, x_1261.z);
        let x_1264 : vec4<f32> = u_xlat4;
        let x_1267 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y) * vec4<f32>(x_1267.x, x_1267.y, x_1267.x, x_1267.y)) + vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1270.y));
        let x_1274 : vec4<f32> = u_xlat4;
        let x_1277 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1274.x, x_1274.y) * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1280.w, x_1280.y));
        let x_1284 : f32 = u_xlat6.x;
        u_xlat7.x = x_1284;
        let x_1286 : vec4<f32> = u_xlat4;
        let x_1289 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat7;
        let x_1294 : vec2<f32> = ((vec2<f32>(x_1286.x, x_1286.y) * vec2<f32>(x_1289.x, x_1289.y)) + vec2<f32>(x_1292.x, x_1292.y));
        let x_1295 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1294.x, x_1294.y, x_1295.z, x_1295.w);
        let x_1298 : vec4<f32> = u_xlat5;
        let x_1300 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1298.x, x_1298.x, x_1298.x, x_1298.x) * x_1300);
        let x_1303 : vec4<f32> = u_xlat5;
        let x_1305 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1303.y, x_1303.y, x_1303.y, x_1303.y) * x_1305);
        let x_1308 : vec4<f32> = u_xlat5;
        let x_1310 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1308.z, x_1308.z, x_1308.z, x_1308.z) * x_1310);
        let x_1312 : vec4<f32> = u_xlat5;
        let x_1314 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1312.w, x_1312.w, x_1312.w, x_1312.w) * x_1314);
        let x_1317 : vec4<f32> = u_xlat10;
        let x_1318 : vec2<f32> = vec2<f32>(x_1317.x, x_1317.y);
        let x_1320 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec13;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1327.xy, x_1327.z);
        u_xlat6.x = x_1329;
        let x_1332 : vec4<f32> = u_xlat10;
        let x_1333 : vec2<f32> = vec2<f32>(x_1332.z, x_1332.w);
        let x_1335 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1343 : vec3<f32> = txVec14;
        let x_1345 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1343.xy, x_1343.z);
        u_xlat60 = x_1345;
        let x_1346 : f32 = u_xlat60;
        let x_1348 : f32 = u_xlat15.y;
        u_xlat60 = (x_1346 * x_1348);
        let x_1351 : f32 = u_xlat15.x;
        let x_1353 : f32 = u_xlat6.x;
        let x_1355 : f32 = u_xlat60;
        u_xlat6.x = ((x_1351 * x_1353) + x_1355);
        let x_1359 : vec2<f32> = u_xlat40;
        let x_1361 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec15;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1368.xy, x_1368.z);
        u_xlat40.x = x_1370;
        let x_1373 : f32 = u_xlat15.z;
        let x_1375 : f32 = u_xlat40.x;
        let x_1378 : f32 = u_xlat6.x;
        u_xlat40.x = ((x_1373 * x_1375) + x_1378);
        let x_1382 : vec4<f32> = u_xlat13;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.x, x_1382.y);
        let x_1385 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1393 : vec3<f32> = txVec16;
        let x_1395 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1393.xy, x_1393.z);
        u_xlat58 = x_1395;
        let x_1397 : f32 = u_xlat15.w;
        let x_1398 : f32 = u_xlat58;
        let x_1401 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1397 * x_1398) + x_1401);
        let x_1405 : vec4<f32> = u_xlat11;
        let x_1406 : vec2<f32> = vec2<f32>(x_1405.x, x_1405.y);
        let x_1408 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1406.x, x_1406.y, x_1408);
        let x_1415 : vec3<f32> = txVec17;
        let x_1417 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1415.xy, x_1415.z);
        u_xlat58 = x_1417;
        let x_1419 : f32 = u_xlat16.x;
        let x_1420 : f32 = u_xlat58;
        let x_1423 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1419 * x_1420) + x_1423);
        let x_1427 : vec4<f32> = u_xlat11;
        let x_1428 : vec2<f32> = vec2<f32>(x_1427.z, x_1427.w);
        let x_1430 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1428.x, x_1428.y, x_1430);
        let x_1437 : vec3<f32> = txVec18;
        let x_1439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1437.xy, x_1437.z);
        u_xlat58 = x_1439;
        let x_1441 : f32 = u_xlat16.y;
        let x_1442 : f32 = u_xlat58;
        let x_1445 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1441 * x_1442) + x_1445);
        let x_1449 : vec4<f32> = u_xlat12;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.x, x_1449.y);
        let x_1452 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1459 : vec3<f32> = txVec19;
        let x_1461 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1459.xy, x_1459.z);
        u_xlat58 = x_1461;
        let x_1463 : f32 = u_xlat16.z;
        let x_1464 : f32 = u_xlat58;
        let x_1467 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1463 * x_1464) + x_1467);
        let x_1471 : vec4<f32> = u_xlat13;
        let x_1472 : vec2<f32> = vec2<f32>(x_1471.z, x_1471.w);
        let x_1474 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec20;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1481.xy, x_1481.z);
        u_xlat58 = x_1483;
        let x_1485 : f32 = u_xlat16.w;
        let x_1486 : f32 = u_xlat58;
        let x_1489 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1485 * x_1486) + x_1489);
        let x_1493 : vec4<f32> = u_xlat14;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
        let x_1496 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec21;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1503.xy, x_1503.z);
        u_xlat58 = x_1505;
        let x_1507 : f32 = u_xlat17.x;
        let x_1508 : f32 = u_xlat58;
        let x_1511 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1507 * x_1508) + x_1511);
        let x_1515 : vec4<f32> = u_xlat14;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.z, x_1515.w);
        let x_1518 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec22;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1525.xy, x_1525.z);
        u_xlat58 = x_1527;
        let x_1529 : f32 = u_xlat17.y;
        let x_1530 : f32 = u_xlat58;
        let x_1533 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1529 * x_1530) + x_1533);
        let x_1537 : vec2<f32> = u_xlat24;
        let x_1539 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec23;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1546.xy, x_1546.z);
        u_xlat58 = x_1548;
        let x_1550 : f32 = u_xlat17.z;
        let x_1551 : f32 = u_xlat58;
        let x_1554 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1550 * x_1551) + x_1554);
        let x_1558 : vec2<f32> = u_xlat48;
        let x_1560 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1558.x, x_1558.y, x_1560);
        let x_1567 : vec3<f32> = txVec24;
        let x_1569 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1567.xy, x_1567.z);
        u_xlat58 = x_1569;
        let x_1571 : f32 = u_xlat17.w;
        let x_1572 : f32 = u_xlat58;
        let x_1575 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1571 * x_1572) + x_1575);
        let x_1579 : vec4<f32> = u_xlat9;
        let x_1580 : vec2<f32> = vec2<f32>(x_1579.x, x_1579.y);
        let x_1582 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1580.x, x_1580.y, x_1582);
        let x_1589 : vec3<f32> = txVec25;
        let x_1591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1589.xy, x_1589.z);
        u_xlat58 = x_1591;
        let x_1593 : f32 = u_xlat5.x;
        let x_1594 : f32 = u_xlat58;
        let x_1597 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1593 * x_1594) + x_1597);
        let x_1601 : vec4<f32> = u_xlat9;
        let x_1602 : vec2<f32> = vec2<f32>(x_1601.z, x_1601.w);
        let x_1604 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
        let x_1611 : vec3<f32> = txVec26;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1611.xy, x_1611.z);
        u_xlat58 = x_1613;
        let x_1615 : f32 = u_xlat5.y;
        let x_1616 : f32 = u_xlat58;
        let x_1619 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1615 * x_1616) + x_1619);
        let x_1623 : vec2<f32> = u_xlat43;
        let x_1625 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1623.x, x_1623.y, x_1625);
        let x_1632 : vec3<f32> = txVec27;
        let x_1634 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1632.xy, x_1632.z);
        u_xlat58 = x_1634;
        let x_1636 : f32 = u_xlat5.z;
        let x_1637 : f32 = u_xlat58;
        let x_1640 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1636 * x_1637) + x_1640);
        let x_1644 : vec4<f32> = u_xlat4;
        let x_1645 : vec2<f32> = vec2<f32>(x_1644.x, x_1644.y);
        let x_1647 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
        let x_1654 : vec3<f32> = txVec28;
        let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1654.xy, x_1654.z);
        u_xlat4.x = x_1656;
        let x_1659 : f32 = u_xlat5.w;
        let x_1661 : f32 = u_xlat4.x;
        let x_1664 : f32 = u_xlat40.x;
        u_xlat57 = ((x_1659 * x_1661) + x_1664);
      }
    }
  } else {
    let x_1668 : vec4<f32> = u_xlat2;
    let x_1669 : vec2<f32> = vec2<f32>(x_1668.x, x_1668.y);
    let x_1671 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
    let x_1678 : vec3<f32> = txVec29;
    let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1678.xy, x_1678.z);
    u_xlat57 = x_1680;
  }
  let x_1682 : f32 = x_87.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1682) + 1.0f);
  let x_1686 : f32 = u_xlat57;
  let x_1688 : f32 = x_87.x_MainLightShadowParams.x;
  let x_1691 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1686 * x_1688) + x_1691);
  let x_1696 : f32 = u_xlat2.z;
  u_xlatb20 = (0.0f >= x_1696);
  let x_1700 : f32 = u_xlat2.z;
  u_xlatb38 = (x_1700 >= 1.0f);
  let x_1702 : bool = u_xlatb38;
  let x_1703 : bool = u_xlatb20;
  u_xlatb20 = (x_1702 | x_1703);
  let x_1705 : bool = u_xlatb20;
  if (x_1705) {
    x_1706 = 1.0f;
  } else {
    let x_1711 : f32 = u_xlat2.x;
    x_1706 = x_1711;
  }
  let x_1712 : f32 = x_1706;
  u_xlat2.x = x_1712;
  let x_1714 : vec3<f32> = vs_TEXCOORD1;
  let x_1717 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1719 : vec3<f32> = (x_1714 + -(x_1717));
  let x_1720 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
  let x_1722 : vec4<f32> = u_xlat4;
  let x_1724 : vec4<f32> = u_xlat4;
  u_xlat20.x = dot(vec3<f32>(x_1722.x, x_1722.y, x_1722.z), vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1729 : f32 = u_xlat20.x;
  let x_1731 : f32 = x_87.x_MainLightShadowParams.z;
  let x_1734 : f32 = x_87.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1729 * x_1731) + x_1734);
  let x_1738 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1738, 0.0f, 1.0f);
  let x_1743 : f32 = u_xlat2.x;
  u_xlat38 = (-(x_1743) + 1.0f);
  let x_1747 : f32 = u_xlat20.x;
  let x_1748 : f32 = u_xlat38;
  let x_1751 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1747 * x_1748) + x_1751);
  let x_1754 : f32 = u_xlat56;
  let x_1757 : vec4<f32> = x_43.x_MainLightColor;
  let x_1759 : vec3<f32> = (vec3<f32>(x_1754, x_1754, x_1754) * vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
  let x_1760 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1760.w);
  let x_1762 : f32 = u_xlat55;
  let x_1764 : vec4<f32> = u_xlat3;
  let x_1766 : vec3<f32> = (vec3<f32>(x_1762, x_1762, x_1762) * vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
  let x_1767 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1767.w);
  let x_1770 : f32 = u_xlat2.x;
  let x_1772 : f32 = x_285.unity_LightData.z;
  u_xlat55 = (x_1770 * x_1772);
  let x_1774 : f32 = u_xlat55;
  let x_1776 : vec4<f32> = u_xlat4;
  let x_1778 : vec3<f32> = (vec3<f32>(x_1774, x_1774, x_1774) * vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
  let x_1779 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
  let x_1781 : vec4<f32> = u_xlat1;
  let x_1784 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1781.x, x_1781.y, x_1781.z), vec3<f32>(x_1784.x, x_1784.y, x_1784.z));
  let x_1787 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1787, 0.0f, 1.0f);
  let x_1789 : f32 = u_xlat55;
  let x_1791 : vec4<f32> = u_xlat2;
  let x_1793 : vec3<f32> = (vec3<f32>(x_1789, x_1789, x_1789) * vec3<f32>(x_1791.x, x_1791.y, x_1791.z));
  let x_1794 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1793.x, x_1793.y, x_1793.z, x_1794.w);
  let x_1796 : vec4<f32> = u_xlat0;
  let x_1798 : vec4<f32> = u_xlat2;
  let x_1800 : vec3<f32> = (vec3<f32>(x_1796.y, x_1796.z, x_1796.w) * vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
  let x_1801 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1800.x, x_1800.y, x_1800.z, x_1801.w);
  let x_1804 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1806 : f32 = x_285.unity_LightData.y;
  u_xlat55 = min(x_1804, x_1806);
  let x_1809 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1809));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1821 : u32 = u_xlatu_loop_1;
    let x_1822 : u32 = u_xlatu55;
    if ((x_1821 < x_1822)) {
    } else {
      break;
    }
    let x_1825 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_1825 >> 2u);
    let x_1828 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1828 & 3u));
    let x_1831 : u32 = u_xlatu58;
    let x_1834 : vec4<f32> = x_285.unity_LightIndices[bitcast<i32>(x_1831)];
    let x_1844 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1849 : vec4<u32> = indexable[x_1844];
    u_xlat58 = dot(x_1834, bitcast<vec4<f32>>(x_1849));
    let x_1853 : f32 = u_xlat58;
    u_xlati58 = i32(x_1853);
    let x_1855 : vec3<f32> = vs_TEXCOORD1;
    let x_1867 : i32 = u_xlati58;
    let x_1869 : vec4<f32> = x_1866.x_AdditionalLightsPosition[x_1867];
    let x_1872 : i32 = u_xlati58;
    let x_1874 : vec4<f32> = x_1866.x_AdditionalLightsPosition[x_1872];
    let x_1876 : vec3<f32> = ((-(x_1855) * vec3<f32>(x_1869.w, x_1869.w, x_1869.w)) + vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
    let x_1877 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1877.w);
    let x_1880 : vec4<f32> = u_xlat5;
    let x_1882 : vec4<f32> = u_xlat5;
    u_xlat59 = dot(vec3<f32>(x_1880.x, x_1880.y, x_1880.z), vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
    let x_1885 : f32 = u_xlat59;
    u_xlat59 = max(x_1885, 6.10351562e-05f);
    let x_1888 : f32 = u_xlat59;
    u_xlat6.x = inverseSqrt(x_1888);
    let x_1891 : vec4<f32> = u_xlat5;
    let x_1893 : vec4<f32> = u_xlat6;
    let x_1895 : vec3<f32> = (vec3<f32>(x_1891.x, x_1891.y, x_1891.z) * vec3<f32>(x_1893.x, x_1893.x, x_1893.x));
    let x_1896 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
    let x_1898 : f32 = u_xlat59;
    u_xlat6.x = (1.0f / x_1898);
    let x_1901 : f32 = u_xlat59;
    let x_1902 : i32 = u_xlati58;
    let x_1904 : f32 = x_1866.x_AdditionalLightsAttenuation[x_1902].x;
    u_xlat59 = (x_1901 * x_1904);
    let x_1906 : f32 = u_xlat59;
    let x_1908 : f32 = u_xlat59;
    u_xlat59 = ((-(x_1906) * x_1908) + 1.0f);
    let x_1911 : f32 = u_xlat59;
    u_xlat59 = max(x_1911, 0.0f);
    let x_1913 : f32 = u_xlat59;
    let x_1914 : f32 = u_xlat59;
    u_xlat59 = (x_1913 * x_1914);
    let x_1916 : f32 = u_xlat59;
    let x_1918 : f32 = u_xlat6.x;
    u_xlat59 = (x_1916 * x_1918);
    let x_1920 : i32 = u_xlati58;
    let x_1922 : vec4<f32> = x_1866.x_AdditionalLightsSpotDir[x_1920];
    let x_1924 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1922.x, x_1922.y, x_1922.z), vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
    let x_1929 : f32 = u_xlat6.x;
    let x_1930 : i32 = u_xlati58;
    let x_1932 : f32 = x_1866.x_AdditionalLightsAttenuation[x_1930].z;
    let x_1934 : i32 = u_xlati58;
    let x_1936 : f32 = x_1866.x_AdditionalLightsAttenuation[x_1934].w;
    u_xlat6.x = ((x_1929 * x_1932) + x_1936);
    let x_1940 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1940, 0.0f, 1.0f);
    let x_1944 : f32 = u_xlat6.x;
    let x_1946 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1944 * x_1946);
    let x_1949 : f32 = u_xlat59;
    let x_1951 : f32 = u_xlat6.x;
    u_xlat59 = (x_1949 * x_1951);
    let x_1953 : f32 = u_xlat56;
    let x_1955 : i32 = u_xlati58;
    let x_1957 : vec4<f32> = x_1866.x_AdditionalLightsColor[x_1955];
    let x_1959 : vec3<f32> = (vec3<f32>(x_1953, x_1953, x_1953) * vec3<f32>(x_1957.x, x_1957.y, x_1957.z));
    let x_1960 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1959.x, x_1959.y, x_1959.z, x_1960.w);
    let x_1962 : f32 = u_xlat59;
    let x_1964 : vec4<f32> = u_xlat6;
    let x_1966 : vec3<f32> = (vec3<f32>(x_1962, x_1962, x_1962) * vec3<f32>(x_1964.x, x_1964.y, x_1964.z));
    let x_1967 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1967.w);
    let x_1969 : vec4<f32> = u_xlat1;
    let x_1971 : vec4<f32> = u_xlat5;
    u_xlat58 = dot(vec3<f32>(x_1969.x, x_1969.y, x_1969.z), vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
    let x_1974 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1974, 0.0f, 1.0f);
    let x_1976 : f32 = u_xlat58;
    let x_1978 : vec4<f32> = u_xlat6;
    let x_1980 : vec3<f32> = (vec3<f32>(x_1976, x_1976, x_1976) * vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
    let x_1981 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1980.x, x_1980.y, x_1980.z, x_1981.w);
    let x_1983 : vec4<f32> = u_xlat5;
    let x_1985 : vec4<f32> = u_xlat0;
    let x_1988 : vec4<f32> = u_xlat4;
    let x_1990 : vec3<f32> = ((vec3<f32>(x_1983.x, x_1983.y, x_1983.z) * vec3<f32>(x_1985.y, x_1985.z, x_1985.w)) + vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
    let x_1991 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1990.x, x_1990.y, x_1990.z, x_1991.w);

    continuing {
      let x_1993 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1993 + bitcast<u32>(1i));
    }
  }
  let x_1996 : vec4<f32> = u_xlat3;
  let x_1998 : vec4<f32> = u_xlat0;
  let x_2001 : vec4<f32> = u_xlat2;
  u_xlat18 = ((vec3<f32>(x_1996.x, x_1996.y, x_1996.z) * vec3<f32>(x_1998.y, x_1998.z, x_1998.w)) + vec3<f32>(x_2001.x, x_2001.y, x_2001.z));
  let x_2006 : vec4<f32> = u_xlat4;
  let x_2008 : vec3<f32> = u_xlat18;
  let x_2009 : vec3<f32> = (vec3<f32>(x_2006.x, x_2006.y, x_2006.z) + x_2008);
  let x_2010 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2009.x, x_2009.y, x_2009.z, x_2010.w);
  let x_2014 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_2014 == 1.0f);
  let x_2016 : bool = u_xlatb18;
  if (x_2016) {
    let x_2021 : f32 = u_xlat0.x;
    x_2017 = x_2021;
  } else {
    x_2017 = 1.0f;
  }
  let x_2023 : f32 = x_2017;
  SV_Target0.w = x_2023;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

