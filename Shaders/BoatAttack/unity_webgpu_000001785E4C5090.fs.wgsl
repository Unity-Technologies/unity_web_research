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
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_87 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_324 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1785 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2028 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2138 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat21 : vec3<f32>;
  var u_xlat59 : f32;
  var u_xlat58 : f32;
  var u_xlat60 : f32;
  var u_xlatb4 : vec2<bool>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat23 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat42 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat25 : vec2<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
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
  var u_xlatb21 : vec2<bool>;
  var u_xlatb40 : bool;
  var x_1733 : f32;
  var u_xlat40 : f32;
  var x_1867 : f32;
  var x_1878 : vec3<f32>;
  var u_xlatu58 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu61 : u32;
  var u_xlati62 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlatu63 : u32;
  var u_xlati7 : i32;
  var u_xlati63 : i32;
  var u_xlati26 : i32;
  var u_xlatb63 : bool;
  var u_xlatb26 : vec3<bool>;
  var u_xlat26 : vec3<f32>;
  var x_2453 : f32;
  var x_2466 : f32;
  var x_2528 : f32;
  var x_2539 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_2650 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_65, x_66);
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_71);
  let x_74 : vec4<f32> = u_xlat1;
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  let x_77 : vec3<f32> = (vec3<f32>(x_74.x, x_74.x, x_74.x) * x_76);
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_82 : vec3<f32> = vs_TEXCOORD1;
  let x_89 : vec4<f32> = x_87.x_CascadeShadowSplitSpheres0;
  let x_92 : vec3<f32> = (x_82 + -(vec3<f32>(x_89.x, x_89.y, x_89.z)));
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
  u_xlat21 = (vec3<f32>(x_229.y, x_229.y, x_229.y) * vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : i32 = u_xlati2;
  let x_244 : i32 = u_xlati2;
  let x_247 : vec4<f32> = x_87.x_MainLightWorldToShadow[(x_242 / 4i)][(x_244 % 4i)];
  let x_249 : vec3<f32> = vs_TEXCOORD1;
  let x_252 : vec3<f32> = u_xlat21;
  u_xlat21 = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.x, x_249.x, x_249.x)) + x_252);
  let x_254 : i32 = u_xlati2;
  let x_257 : i32 = u_xlati2;
  let x_261 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_254 + 2i) / 4i)][((x_257 + 2i) % 4i)];
  let x_263 : vec3<f32> = vs_TEXCOORD1;
  let x_266 : vec3<f32> = u_xlat21;
  u_xlat21 = ((vec3<f32>(x_261.x, x_261.y, x_261.z) * vec3<f32>(x_263.z, x_263.z, x_263.z)) + x_266);
  let x_268 : vec3<f32> = u_xlat21;
  let x_269 : i32 = u_xlati2;
  let x_272 : i32 = u_xlati2;
  let x_276 : vec4<f32> = x_87.x_MainLightWorldToShadow[((x_269 + 3i) / 4i)][((x_272 + 3i) % 4i)];
  let x_278 : vec3<f32> = (x_268 + vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_278.x, x_278.y, x_278.z, x_279.w);
  let x_283 : f32 = vs_TEXCOORD1.y;
  let x_286 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat59 = (x_283 * x_286);
  let x_289 : f32 = x_44.unity_MatrixV[0i].z;
  let x_291 : f32 = vs_TEXCOORD1.x;
  let x_293 : f32 = u_xlat59;
  u_xlat59 = ((x_289 * x_291) + x_293);
  let x_296 : f32 = x_44.unity_MatrixV[2i].z;
  let x_298 : f32 = vs_TEXCOORD1.z;
  let x_300 : f32 = u_xlat59;
  u_xlat59 = ((x_296 * x_298) + x_300);
  let x_302 : f32 = u_xlat59;
  let x_304 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat59 = (x_302 + x_304);
  let x_306 : f32 = u_xlat59;
  let x_310 : f32 = x_44.x_ProjectionParams.y;
  u_xlat59 = (-(x_306) + -(x_310));
  let x_313 : f32 = u_xlat59;
  u_xlat59 = max(x_313, 0.0f);
  let x_315 : f32 = u_xlat59;
  let x_318 : f32 = x_44.unity_FogParams.x;
  u_xlat59 = (x_315 * x_318);
  u_xlat1.w = 1.0f;
  let x_327 : vec4<f32> = x_324.unity_SHAr;
  let x_328 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_327, x_328);
  let x_333 : vec4<f32> = x_324.unity_SHAg;
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_333, x_334);
  let x_339 : vec4<f32> = x_324.unity_SHAb;
  let x_340 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_339, x_340);
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_343.y, x_343.z, x_343.z, x_343.x) * vec4<f32>(x_345.x, x_345.y, x_345.z, x_345.z));
  let x_350 : vec4<f32> = x_324.unity_SHBr;
  let x_351 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_350, x_351);
  let x_356 : vec4<f32> = x_324.unity_SHBg;
  let x_357 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_356, x_357);
  let x_362 : vec4<f32> = x_324.unity_SHBb;
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_362, x_363);
  let x_368 : f32 = u_xlat1.y;
  let x_370 : f32 = u_xlat1.y;
  u_xlat58 = (x_368 * x_370);
  let x_373 : f32 = u_xlat1.x;
  let x_375 : f32 = u_xlat1.x;
  let x_377 : f32 = u_xlat58;
  u_xlat58 = ((x_373 * x_375) + -(x_377));
  let x_382 : vec4<f32> = x_324.unity_SHC;
  let x_384 : f32 = u_xlat58;
  let x_387 : vec4<f32> = u_xlat5;
  let x_389 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(x_384, x_384, x_384)) + vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec4<f32> = u_xlat4;
  let x_396 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) + vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_397 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_399 : vec4<f32> = u_xlat3;
  let x_401 : vec3<f32> = max(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_402 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
  let x_406 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_407 : vec2<f32> = vec2<f32>(x_406.x, x_406.y);
  let x_411 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_407.x, x_407.y));
  let x_412 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat4;
  let x_416 : vec4<f32> = hlslcc_FragCoord;
  let x_418 : vec2<f32> = (vec2<f32>(x_414.x, x_414.y) * vec2<f32>(x_416.x, x_416.y));
  let x_419 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
  let x_422 : f32 = u_xlat4.y;
  let x_425 : f32 = x_44.x_ScaleBiasRt.x;
  let x_428 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat58 = ((x_422 * x_425) + x_428);
  let x_430 : f32 = u_xlat58;
  u_xlat4.z = (-(x_430) + 1.0f);
  let x_439 : vec4<f32> = u_xlat4;
  let x_442 : f32 = x_44.x_GlobalMipBias.x;
  let x_443 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_439.x, x_439.z), x_442);
  u_xlat58 = x_443.x;
  let x_446 : f32 = u_xlat58;
  u_xlat60 = (x_446 + -1.0f);
  let x_449 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_450 : f32 = u_xlat60;
  u_xlat60 = ((x_449 * x_450) + 1.0f);
  let x_453 : f32 = u_xlat58;
  u_xlat58 = min(x_453, 1.0f);
  let x_459 : f32 = x_87.x_MainLightShadowParams.y;
  u_xlatb4.x = (0.0f < x_459);
  let x_463 : bool = u_xlatb4.x;
  if (x_463) {
    let x_467 : f32 = x_87.x_MainLightShadowParams.y;
    u_xlatb4.x = (x_467 == 1.0f);
    let x_471 : bool = u_xlatb4.x;
    if (x_471) {
      let x_474 : vec4<f32> = u_xlat2;
      let x_478 : vec4<f32> = x_87.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_474.x, x_474.y, x_474.x, x_474.y) + x_478);
      let x_481 : vec4<f32> = u_xlat4;
      let x_482 : vec2<f32> = vec2<f32>(x_481.x, x_481.y);
      let x_484 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_482.x, x_482.y, x_484);
      let x_496 : vec3<f32> = txVec0;
      let x_498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_496.xy, x_496.z);
      u_xlat5.x = x_498;
      let x_501 : vec4<f32> = u_xlat4;
      let x_502 : vec2<f32> = vec2<f32>(x_501.z, x_501.w);
      let x_504 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_502.x, x_502.y, x_504);
      let x_511 : vec3<f32> = txVec1;
      let x_513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_511.xy, x_511.z);
      u_xlat5.y = x_513;
      let x_515 : vec4<f32> = u_xlat2;
      let x_518 : vec4<f32> = x_87.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_515.x, x_515.y, x_515.x, x_515.y) + x_518);
      let x_521 : vec4<f32> = u_xlat4;
      let x_522 : vec2<f32> = vec2<f32>(x_521.x, x_521.y);
      let x_524 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_522.x, x_522.y, x_524);
      let x_531 : vec3<f32> = txVec2;
      let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_531.xy, x_531.z);
      u_xlat5.z = x_533;
      let x_536 : vec4<f32> = u_xlat4;
      let x_537 : vec2<f32> = vec2<f32>(x_536.z, x_536.w);
      let x_539 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_537.x, x_537.y, x_539);
      let x_546 : vec3<f32> = txVec3;
      let x_548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_546.xy, x_546.z);
      u_xlat5.w = x_548;
      let x_550 : vec4<f32> = u_xlat5;
      u_xlat4.x = dot(x_550, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_558 : f32 = x_87.x_MainLightShadowParams.y;
      u_xlatb23 = (x_558 == 2.0f);
      let x_560 : bool = u_xlatb23;
      if (x_560) {
        let x_565 : vec4<f32> = u_xlat2;
        let x_568 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_565.x, x_565.y) * vec2<f32>(x_568.z, x_568.w)) + vec2<f32>(0.5f, 0.5f));
        let x_574 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_574);
        let x_576 : vec4<f32> = u_xlat2;
        let x_579 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_582 : vec2<f32> = u_xlat23;
        let x_584 : vec2<f32> = ((vec2<f32>(x_576.x, x_576.y) * vec2<f32>(x_579.z, x_579.w)) + -(x_582));
        let x_585 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
        let x_588 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_588.x, x_588.x, x_588.y, x_588.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_593 : vec4<f32> = u_xlat6;
        let x_595 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_593.x, x_593.x, x_593.z, x_593.z) * vec4<f32>(x_595.x, x_595.x, x_595.z, x_595.z));
        let x_599 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_599.y, x_599.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_604 : vec4<f32> = u_xlat7;
        let x_607 : vec4<f32> = u_xlat5;
        let x_610 : vec2<f32> = ((vec2<f32>(x_604.x, x_604.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_607.x, x_607.y)));
        let x_611 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_610.x, x_611.y, x_610.y, x_611.w);
        let x_613 : vec4<f32> = u_xlat5;
        let x_616 : vec2<f32> = (-(vec2<f32>(x_613.x, x_613.y)) + vec2<f32>(1.0f, 1.0f));
        let x_617 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_620 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_620.x, x_620.y), vec2<f32>(0.0f, 0.0f));
        let x_624 : vec2<f32> = u_xlat45;
        let x_626 : vec2<f32> = u_xlat45;
        let x_628 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_624) * x_626) + vec2<f32>(x_628.x, x_628.y));
        let x_631 : vec4<f32> = u_xlat5;
        let x_633 : vec2<f32> = max(vec2<f32>(x_631.x, x_631.y), vec2<f32>(0.0f, 0.0f));
        let x_634 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
        let x_636 : vec4<f32> = u_xlat5;
        let x_639 : vec4<f32> = u_xlat5;
        let x_642 : vec4<f32> = u_xlat6;
        let x_644 : vec2<f32> = ((-(vec2<f32>(x_636.x, x_636.y)) * vec2<f32>(x_639.x, x_639.y)) + vec2<f32>(x_642.y, x_642.w));
        let x_645 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
        let x_647 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_647 + vec2<f32>(1.0f, 1.0f));
        let x_649 : vec4<f32> = u_xlat5;
        let x_651 : vec2<f32> = (vec2<f32>(x_649.x, x_649.y) + vec2<f32>(1.0f, 1.0f));
        let x_652 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_655 : vec4<f32> = u_xlat6;
        let x_659 : vec2<f32> = (vec2<f32>(x_655.x, x_655.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_660 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_663 : vec4<f32> = u_xlat7;
        let x_665 : vec2<f32> = (vec2<f32>(x_663.x, x_663.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_666 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
        let x_668 : vec2<f32> = u_xlat45;
        let x_669 : vec2<f32> = (x_668 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_670 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
        let x_673 : vec4<f32> = u_xlat5;
        let x_675 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_676 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat6;
        let x_680 : vec2<f32> = (vec2<f32>(x_678.y, x_678.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_681 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_684 : f32 = u_xlat7.x;
        u_xlat8.z = x_684;
        let x_687 : f32 = u_xlat5.x;
        u_xlat8.w = x_687;
        let x_690 : f32 = u_xlat10.x;
        u_xlat9.z = x_690;
        let x_693 : f32 = u_xlat43.x;
        u_xlat9.w = x_693;
        let x_695 : vec4<f32> = u_xlat8;
        let x_697 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_695.z, x_695.w, x_695.x, x_695.z) + vec4<f32>(x_697.z, x_697.w, x_697.x, x_697.z));
        let x_701 : f32 = u_xlat8.y;
        u_xlat7.z = x_701;
        let x_704 : f32 = u_xlat5.y;
        u_xlat7.w = x_704;
        let x_707 : f32 = u_xlat9.y;
        u_xlat10.z = x_707;
        let x_710 : f32 = u_xlat43.y;
        u_xlat10.w = x_710;
        let x_712 : vec4<f32> = u_xlat7;
        let x_714 : vec4<f32> = u_xlat10;
        let x_716 : vec3<f32> = (vec3<f32>(x_712.z, x_712.y, x_712.w) + vec3<f32>(x_714.z, x_714.y, x_714.w));
        let x_717 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
        let x_719 : vec4<f32> = u_xlat9;
        let x_721 : vec4<f32> = u_xlat6;
        let x_723 : vec3<f32> = (vec3<f32>(x_719.x, x_719.z, x_719.w) / vec3<f32>(x_721.z, x_721.w, x_721.y));
        let x_724 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
        let x_726 : vec4<f32> = u_xlat7;
        let x_732 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_733 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_735 : vec4<f32> = u_xlat10;
        let x_737 : vec4<f32> = u_xlat5;
        let x_739 : vec3<f32> = (vec3<f32>(x_735.z, x_735.y, x_735.w) / vec3<f32>(x_737.x, x_737.y, x_737.z));
        let x_740 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
        let x_742 : vec4<f32> = u_xlat8;
        let x_744 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_745 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
        let x_747 : vec4<f32> = u_xlat7;
        let x_750 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_752 : vec3<f32> = (vec3<f32>(x_747.y, x_747.x, x_747.z) * vec3<f32>(x_750.x, x_750.x, x_750.x));
        let x_753 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
        let x_755 : vec4<f32> = u_xlat8;
        let x_758 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_760 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) * vec3<f32>(x_758.y, x_758.y, x_758.y));
        let x_761 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
        let x_764 : f32 = u_xlat8.x;
        u_xlat7.w = x_764;
        let x_766 : vec2<f32> = u_xlat23;
        let x_769 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_772 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_766.x, x_766.y, x_766.x, x_766.y) * vec4<f32>(x_769.x, x_769.y, x_769.x, x_769.y)) + vec4<f32>(x_772.y, x_772.w, x_772.x, x_772.w));
        let x_775 : vec2<f32> = u_xlat23;
        let x_777 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_780 : vec4<f32> = u_xlat7;
        let x_782 : vec2<f32> = ((x_775 * vec2<f32>(x_777.x, x_777.y)) + vec2<f32>(x_780.z, x_780.w));
        let x_783 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
        let x_786 : f32 = u_xlat7.y;
        u_xlat8.w = x_786;
        let x_788 : vec4<f32> = u_xlat8;
        let x_789 : vec2<f32> = vec2<f32>(x_788.y, x_788.z);
        let x_790 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_790.x, x_789.x, x_790.z, x_789.y);
        let x_793 : vec2<f32> = u_xlat23;
        let x_796 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_799 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_793.x, x_793.y, x_793.x, x_793.y) * vec4<f32>(x_796.x, x_796.y, x_796.x, x_796.y)) + vec4<f32>(x_799.x, x_799.y, x_799.z, x_799.y));
        let x_802 : vec2<f32> = u_xlat23;
        let x_805 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_808 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_802.x, x_802.y, x_802.x, x_802.y) * vec4<f32>(x_805.x, x_805.y, x_805.x, x_805.y)) + vec4<f32>(x_808.w, x_808.y, x_808.w, x_808.z));
        let x_811 : vec2<f32> = u_xlat23;
        let x_814 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_817 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y) * vec4<f32>(x_814.x, x_814.y, x_814.x, x_814.y)) + vec4<f32>(x_817.x, x_817.w, x_817.z, x_817.w));
        let x_821 : vec4<f32> = u_xlat5;
        let x_823 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_821.x, x_821.x, x_821.x, x_821.y) * vec4<f32>(x_823.z, x_823.w, x_823.y, x_823.z));
        let x_827 : vec4<f32> = u_xlat5;
        let x_829 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_827.y, x_827.y, x_827.z, x_827.z) * x_829);
        let x_832 : f32 = u_xlat5.z;
        let x_834 : f32 = u_xlat6.y;
        u_xlat23.x = (x_832 * x_834);
        let x_838 : vec4<f32> = u_xlat9;
        let x_839 : vec2<f32> = vec2<f32>(x_838.x, x_838.y);
        let x_841 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_839.x, x_839.y, x_841);
        let x_849 : vec3<f32> = txVec4;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_849.xy, x_849.z);
        u_xlat42 = x_851;
        let x_853 : vec4<f32> = u_xlat9;
        let x_854 : vec2<f32> = vec2<f32>(x_853.z, x_853.w);
        let x_856 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_854.x, x_854.y, x_856);
        let x_864 : vec3<f32> = txVec5;
        let x_866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_864.xy, x_864.z);
        u_xlat61 = x_866;
        let x_867 : f32 = u_xlat61;
        let x_869 : f32 = u_xlat12.y;
        u_xlat61 = (x_867 * x_869);
        let x_872 : f32 = u_xlat12.x;
        let x_873 : f32 = u_xlat42;
        let x_875 : f32 = u_xlat61;
        u_xlat42 = ((x_872 * x_873) + x_875);
        let x_878 : vec4<f32> = u_xlat10;
        let x_879 : vec2<f32> = vec2<f32>(x_878.x, x_878.y);
        let x_881 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_879.x, x_879.y, x_881);
        let x_888 : vec3<f32> = txVec6;
        let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_888.xy, x_888.z);
        u_xlat61 = x_890;
        let x_892 : f32 = u_xlat12.z;
        let x_893 : f32 = u_xlat61;
        let x_895 : f32 = u_xlat42;
        u_xlat42 = ((x_892 * x_893) + x_895);
        let x_898 : vec4<f32> = u_xlat8;
        let x_899 : vec2<f32> = vec2<f32>(x_898.x, x_898.y);
        let x_901 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_899.x, x_899.y, x_901);
        let x_908 : vec3<f32> = txVec7;
        let x_910 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_908.xy, x_908.z);
        u_xlat61 = x_910;
        let x_912 : f32 = u_xlat12.w;
        let x_913 : f32 = u_xlat61;
        let x_915 : f32 = u_xlat42;
        u_xlat42 = ((x_912 * x_913) + x_915);
        let x_918 : vec4<f32> = u_xlat11;
        let x_919 : vec2<f32> = vec2<f32>(x_918.x, x_918.y);
        let x_921 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_919.x, x_919.y, x_921);
        let x_928 : vec3<f32> = txVec8;
        let x_930 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_928.xy, x_928.z);
        u_xlat61 = x_930;
        let x_932 : f32 = u_xlat13.x;
        let x_933 : f32 = u_xlat61;
        let x_935 : f32 = u_xlat42;
        u_xlat42 = ((x_932 * x_933) + x_935);
        let x_938 : vec4<f32> = u_xlat11;
        let x_939 : vec2<f32> = vec2<f32>(x_938.z, x_938.w);
        let x_941 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_939.x, x_939.y, x_941);
        let x_948 : vec3<f32> = txVec9;
        let x_950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_948.xy, x_948.z);
        u_xlat61 = x_950;
        let x_952 : f32 = u_xlat13.y;
        let x_953 : f32 = u_xlat61;
        let x_955 : f32 = u_xlat42;
        u_xlat42 = ((x_952 * x_953) + x_955);
        let x_958 : vec4<f32> = u_xlat8;
        let x_959 : vec2<f32> = vec2<f32>(x_958.z, x_958.w);
        let x_961 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_959.x, x_959.y, x_961);
        let x_968 : vec3<f32> = txVec10;
        let x_970 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_968.xy, x_968.z);
        u_xlat61 = x_970;
        let x_972 : f32 = u_xlat13.z;
        let x_973 : f32 = u_xlat61;
        let x_975 : f32 = u_xlat42;
        u_xlat42 = ((x_972 * x_973) + x_975);
        let x_978 : vec4<f32> = u_xlat7;
        let x_979 : vec2<f32> = vec2<f32>(x_978.x, x_978.y);
        let x_981 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_979.x, x_979.y, x_981);
        let x_988 : vec3<f32> = txVec11;
        let x_990 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_988.xy, x_988.z);
        u_xlat61 = x_990;
        let x_992 : f32 = u_xlat13.w;
        let x_993 : f32 = u_xlat61;
        let x_995 : f32 = u_xlat42;
        u_xlat42 = ((x_992 * x_993) + x_995);
        let x_998 : vec4<f32> = u_xlat7;
        let x_999 : vec2<f32> = vec2<f32>(x_998.z, x_998.w);
        let x_1001 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_999.x, x_999.y, x_1001);
        let x_1008 : vec3<f32> = txVec12;
        let x_1010 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1008.xy, x_1008.z);
        u_xlat61 = x_1010;
        let x_1012 : f32 = u_xlat23.x;
        let x_1013 : f32 = u_xlat61;
        let x_1015 : f32 = u_xlat42;
        u_xlat4.x = ((x_1012 * x_1013) + x_1015);
      } else {
        let x_1019 : vec4<f32> = u_xlat2;
        let x_1022 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        u_xlat23 = ((vec2<f32>(x_1019.x, x_1019.y) * vec2<f32>(x_1022.z, x_1022.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1026 : vec2<f32> = u_xlat23;
        u_xlat23 = floor(x_1026);
        let x_1028 : vec4<f32> = u_xlat2;
        let x_1031 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1034 : vec2<f32> = u_xlat23;
        let x_1036 : vec2<f32> = ((vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(x_1031.z, x_1031.w)) + -(x_1034));
        let x_1037 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1039.x, x_1039.x, x_1039.y, x_1039.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1042 : vec4<f32> = u_xlat6;
        let x_1044 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1042.x, x_1042.x, x_1042.z, x_1042.z) * vec4<f32>(x_1044.x, x_1044.x, x_1044.z, x_1044.z));
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1051 : vec2<f32> = (vec2<f32>(x_1047.y, x_1047.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1052 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1052.x, x_1051.x, x_1052.z, x_1051.y);
        let x_1054 : vec4<f32> = u_xlat7;
        let x_1057 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1054.x, x_1054.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_1057.x, x_1057.y)));
        let x_1061 : vec4<f32> = u_xlat5;
        let x_1064 : vec2<f32> = (-(vec2<f32>(x_1061.x, x_1061.y)) + vec2<f32>(1.0f, 1.0f));
        let x_1065 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1064.x, x_1065.y, x_1064.y, x_1065.w);
        let x_1067 : vec4<f32> = u_xlat5;
        let x_1069 : vec2<f32> = min(vec2<f32>(x_1067.x, x_1067.y), vec2<f32>(0.0f, 0.0f));
        let x_1070 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1070.w);
        let x_1072 : vec4<f32> = u_xlat7;
        let x_1075 : vec4<f32> = u_xlat7;
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1080 : vec2<f32> = ((-(vec2<f32>(x_1072.x, x_1072.y)) * vec2<f32>(x_1075.x, x_1075.y)) + vec2<f32>(x_1078.x, x_1078.z));
        let x_1081 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1080.x, x_1081.y, x_1080.y, x_1081.w);
        let x_1083 : vec4<f32> = u_xlat5;
        let x_1085 : vec2<f32> = max(vec2<f32>(x_1083.x, x_1083.y), vec2<f32>(0.0f, 0.0f));
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
        let x_1088 : vec4<f32> = u_xlat7;
        let x_1091 : vec4<f32> = u_xlat7;
        let x_1094 : vec4<f32> = u_xlat6;
        let x_1096 : vec2<f32> = ((-(vec2<f32>(x_1088.x, x_1088.y)) * vec2<f32>(x_1091.x, x_1091.y)) + vec2<f32>(x_1094.y, x_1094.w));
        let x_1097 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1097.x, x_1096.x, x_1097.z, x_1096.y);
        let x_1099 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1099 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_1103 : f32 = u_xlat6.y;
        u_xlat7.z = (x_1103 * 0.081632003f);
        let x_1107 : vec2<f32> = u_xlat43;
        let x_1110 : vec2<f32> = (vec2<f32>(x_1107.y, x_1107.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1111 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1110.x, x_1110.y, x_1111.z, x_1111.w);
        let x_1113 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_1113.x, x_1113.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1117 : f32 = u_xlat6.w;
        u_xlat9.z = (x_1117 * 0.081632003f);
        let x_1121 : f32 = u_xlat9.y;
        u_xlat7.x = x_1121;
        let x_1123 : vec4<f32> = u_xlat5;
        let x_1130 : vec2<f32> = ((vec2<f32>(x_1123.x, x_1123.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1131 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1131.x, x_1130.x, x_1131.z, x_1130.y);
        let x_1133 : vec4<f32> = u_xlat5;
        let x_1137 : vec2<f32> = ((vec2<f32>(x_1133.x, x_1133.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1138 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1137.x, x_1138.y, x_1137.y, x_1138.w);
        let x_1141 : f32 = u_xlat43.x;
        u_xlat6.y = x_1141;
        let x_1144 : f32 = u_xlat8.y;
        u_xlat6.w = x_1144;
        let x_1146 : vec4<f32> = u_xlat6;
        let x_1147 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1146 + x_1147);
        let x_1149 : vec4<f32> = u_xlat5;
        let x_1152 : vec2<f32> = ((vec2<f32>(x_1149.y, x_1149.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1153 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1153.x, x_1152.x, x_1153.z, x_1152.y);
        let x_1155 : vec4<f32> = u_xlat5;
        let x_1158 : vec2<f32> = ((vec2<f32>(x_1155.y, x_1155.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1159 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1158.x, x_1159.y, x_1158.y, x_1159.w);
        let x_1162 : f32 = u_xlat43.y;
        u_xlat8.y = x_1162;
        let x_1164 : vec4<f32> = u_xlat8;
        let x_1165 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1164 + x_1165);
        let x_1167 : vec4<f32> = u_xlat6;
        let x_1168 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1167 / x_1168);
        let x_1170 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1170 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1176 : vec4<f32> = u_xlat8;
        let x_1177 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1176 / x_1177);
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1179 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1181 : vec4<f32> = u_xlat6;
        let x_1184 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1181.w, x_1181.x, x_1181.y, x_1181.z) * vec4<f32>(x_1184.x, x_1184.x, x_1184.x, x_1184.x));
        let x_1187 : vec4<f32> = u_xlat8;
        let x_1190 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1187.x, x_1187.w, x_1187.y, x_1187.z) * vec4<f32>(x_1190.y, x_1190.y, x_1190.y, x_1190.y));
        let x_1193 : vec4<f32> = u_xlat6;
        let x_1194 : vec3<f32> = vec3<f32>(x_1193.y, x_1193.z, x_1193.w);
        let x_1195 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1194.x, x_1195.y, x_1194.y, x_1194.z);
        let x_1198 : f32 = u_xlat8.x;
        u_xlat9.y = x_1198;
        let x_1200 : vec2<f32> = u_xlat23;
        let x_1203 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1200.x, x_1200.y, x_1200.x, x_1200.y) * vec4<f32>(x_1203.x, x_1203.y, x_1203.x, x_1203.y)) + vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1206.y));
        let x_1209 : vec2<f32> = u_xlat23;
        let x_1211 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat9;
        let x_1216 : vec2<f32> = ((x_1209 * vec2<f32>(x_1211.x, x_1211.y)) + vec2<f32>(x_1214.w, x_1214.y));
        let x_1217 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1216.x, x_1216.y, x_1217.z, x_1217.w);
        let x_1220 : f32 = u_xlat9.y;
        u_xlat6.y = x_1220;
        let x_1223 : f32 = u_xlat8.z;
        u_xlat9.y = x_1223;
        let x_1225 : vec2<f32> = u_xlat23;
        let x_1228 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1231 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.y) * vec4<f32>(x_1228.x, x_1228.y, x_1228.x, x_1228.y)) + vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1231.y));
        let x_1235 : vec2<f32> = u_xlat23;
        let x_1237 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1240 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1235 * vec2<f32>(x_1237.x, x_1237.y)) + vec2<f32>(x_1240.w, x_1240.y));
        let x_1244 : f32 = u_xlat9.y;
        u_xlat6.z = x_1244;
        let x_1246 : vec2<f32> = u_xlat23;
        let x_1249 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1252 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y) * vec4<f32>(x_1249.x, x_1249.y, x_1249.x, x_1249.y)) + vec4<f32>(x_1252.x, x_1252.y, x_1252.x, x_1252.z));
        let x_1256 : f32 = u_xlat8.w;
        u_xlat9.y = x_1256;
        let x_1259 : vec2<f32> = u_xlat23;
        let x_1262 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1265 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y) * vec4<f32>(x_1262.x, x_1262.y, x_1262.x, x_1262.y)) + vec4<f32>(x_1265.x, x_1265.y, x_1265.z, x_1265.y));
        let x_1269 : vec2<f32> = u_xlat23;
        let x_1271 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1274 : vec4<f32> = u_xlat9;
        u_xlat25 = ((x_1269 * vec2<f32>(x_1271.x, x_1271.y)) + vec2<f32>(x_1274.w, x_1274.y));
        let x_1278 : f32 = u_xlat9.y;
        u_xlat6.w = x_1278;
        let x_1281 : vec2<f32> = u_xlat23;
        let x_1283 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1286 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1281 * vec2<f32>(x_1283.x, x_1283.y)) + vec2<f32>(x_1286.x, x_1286.w));
        let x_1289 : vec4<f32> = u_xlat9;
        let x_1290 : vec3<f32> = vec3<f32>(x_1289.x, x_1289.z, x_1289.w);
        let x_1291 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1290.x, x_1291.y, x_1290.y, x_1290.z);
        let x_1293 : vec2<f32> = u_xlat23;
        let x_1296 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1299 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y) * vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y)) + vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1299.y));
        let x_1303 : vec2<f32> = u_xlat23;
        let x_1305 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1303 * vec2<f32>(x_1305.x, x_1305.y)) + vec2<f32>(x_1308.w, x_1308.y));
        let x_1312 : f32 = u_xlat6.x;
        u_xlat8.x = x_1312;
        let x_1314 : vec2<f32> = u_xlat23;
        let x_1316 : vec4<f32> = x_87.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat8;
        u_xlat23 = ((x_1314 * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.x, x_1319.y));
        let x_1323 : vec4<f32> = u_xlat5;
        let x_1325 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1323.x, x_1323.x, x_1323.x, x_1323.x) * x_1325);
        let x_1328 : vec4<f32> = u_xlat5;
        let x_1330 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1328.y, x_1328.y, x_1328.y, x_1328.y) * x_1330);
        let x_1333 : vec4<f32> = u_xlat5;
        let x_1335 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1333.z, x_1333.z, x_1333.z, x_1333.z) * x_1335);
        let x_1337 : vec4<f32> = u_xlat5;
        let x_1339 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1337.w, x_1337.w, x_1337.w, x_1337.w) * x_1339);
        let x_1342 : vec4<f32> = u_xlat10;
        let x_1343 : vec2<f32> = vec2<f32>(x_1342.x, x_1342.y);
        let x_1345 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1343.x, x_1343.y, x_1345);
        let x_1352 : vec3<f32> = txVec13;
        let x_1354 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1352.xy, x_1352.z);
        u_xlat61 = x_1354;
        let x_1356 : vec4<f32> = u_xlat10;
        let x_1357 : vec2<f32> = vec2<f32>(x_1356.z, x_1356.w);
        let x_1359 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1357.x, x_1357.y, x_1359);
        let x_1366 : vec3<f32> = txVec14;
        let x_1368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1366.xy, x_1366.z);
        u_xlat6.x = x_1368;
        let x_1371 : f32 = u_xlat6.x;
        let x_1373 : f32 = u_xlat16.y;
        u_xlat6.x = (x_1371 * x_1373);
        let x_1377 : f32 = u_xlat16.x;
        let x_1378 : f32 = u_xlat61;
        let x_1381 : f32 = u_xlat6.x;
        u_xlat61 = ((x_1377 * x_1378) + x_1381);
        let x_1384 : vec4<f32> = u_xlat11;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.x, x_1384.y);
        let x_1387 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec15;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1394.xy, x_1394.z);
        u_xlat6.x = x_1396;
        let x_1399 : f32 = u_xlat16.z;
        let x_1401 : f32 = u_xlat6.x;
        let x_1403 : f32 = u_xlat61;
        u_xlat61 = ((x_1399 * x_1401) + x_1403);
        let x_1406 : vec4<f32> = u_xlat13;
        let x_1407 : vec2<f32> = vec2<f32>(x_1406.x, x_1406.y);
        let x_1409 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec16;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1416.xy, x_1416.z);
        u_xlat6.x = x_1418;
        let x_1421 : f32 = u_xlat16.w;
        let x_1423 : f32 = u_xlat6.x;
        let x_1425 : f32 = u_xlat61;
        u_xlat61 = ((x_1421 * x_1423) + x_1425);
        let x_1428 : vec4<f32> = u_xlat12;
        let x_1429 : vec2<f32> = vec2<f32>(x_1428.x, x_1428.y);
        let x_1431 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec17;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1438.xy, x_1438.z);
        u_xlat6.x = x_1440;
        let x_1443 : f32 = u_xlat17.x;
        let x_1445 : f32 = u_xlat6.x;
        let x_1447 : f32 = u_xlat61;
        u_xlat61 = ((x_1443 * x_1445) + x_1447);
        let x_1450 : vec4<f32> = u_xlat12;
        let x_1451 : vec2<f32> = vec2<f32>(x_1450.z, x_1450.w);
        let x_1453 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1451.x, x_1451.y, x_1453);
        let x_1460 : vec3<f32> = txVec18;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat6.x = x_1462;
        let x_1465 : f32 = u_xlat17.y;
        let x_1467 : f32 = u_xlat6.x;
        let x_1469 : f32 = u_xlat61;
        u_xlat61 = ((x_1465 * x_1467) + x_1469);
        let x_1472 : vec2<f32> = u_xlat49;
        let x_1474 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1472.x, x_1472.y, x_1474);
        let x_1481 : vec3<f32> = txVec19;
        let x_1483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1481.xy, x_1481.z);
        u_xlat6.x = x_1483;
        let x_1486 : f32 = u_xlat17.z;
        let x_1488 : f32 = u_xlat6.x;
        let x_1490 : f32 = u_xlat61;
        u_xlat61 = ((x_1486 * x_1488) + x_1490);
        let x_1493 : vec4<f32> = u_xlat13;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.z, x_1493.w);
        let x_1496 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec20;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1503.xy, x_1503.z);
        u_xlat6.x = x_1505;
        let x_1508 : f32 = u_xlat17.w;
        let x_1510 : f32 = u_xlat6.x;
        let x_1512 : f32 = u_xlat61;
        u_xlat61 = ((x_1508 * x_1510) + x_1512);
        let x_1515 : vec4<f32> = u_xlat14;
        let x_1516 : vec2<f32> = vec2<f32>(x_1515.x, x_1515.y);
        let x_1518 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec21;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1525.xy, x_1525.z);
        u_xlat6.x = x_1527;
        let x_1530 : f32 = u_xlat18.x;
        let x_1532 : f32 = u_xlat6.x;
        let x_1534 : f32 = u_xlat61;
        u_xlat61 = ((x_1530 * x_1532) + x_1534);
        let x_1537 : vec4<f32> = u_xlat14;
        let x_1538 : vec2<f32> = vec2<f32>(x_1537.z, x_1537.w);
        let x_1540 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1538.x, x_1538.y, x_1540);
        let x_1547 : vec3<f32> = txVec22;
        let x_1549 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1547.xy, x_1547.z);
        u_xlat6.x = x_1549;
        let x_1552 : f32 = u_xlat18.y;
        let x_1554 : f32 = u_xlat6.x;
        let x_1556 : f32 = u_xlat61;
        u_xlat61 = ((x_1552 * x_1554) + x_1556);
        let x_1559 : vec2<f32> = u_xlat25;
        let x_1561 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1559.x, x_1559.y, x_1561);
        let x_1568 : vec3<f32> = txVec23;
        let x_1570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1568.xy, x_1568.z);
        u_xlat6.x = x_1570;
        let x_1573 : f32 = u_xlat18.z;
        let x_1575 : f32 = u_xlat6.x;
        let x_1577 : f32 = u_xlat61;
        u_xlat61 = ((x_1573 * x_1575) + x_1577);
        let x_1580 : vec2<f32> = u_xlat15;
        let x_1582 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1580.x, x_1580.y, x_1582);
        let x_1589 : vec3<f32> = txVec24;
        let x_1591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1589.xy, x_1589.z);
        u_xlat6.x = x_1591;
        let x_1594 : f32 = u_xlat18.w;
        let x_1596 : f32 = u_xlat6.x;
        let x_1598 : f32 = u_xlat61;
        u_xlat61 = ((x_1594 * x_1596) + x_1598);
        let x_1601 : vec4<f32> = u_xlat9;
        let x_1602 : vec2<f32> = vec2<f32>(x_1601.x, x_1601.y);
        let x_1604 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1602.x, x_1602.y, x_1604);
        let x_1611 : vec3<f32> = txVec25;
        let x_1613 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1611.xy, x_1611.z);
        u_xlat6.x = x_1613;
        let x_1616 : f32 = u_xlat5.x;
        let x_1618 : f32 = u_xlat6.x;
        let x_1620 : f32 = u_xlat61;
        u_xlat61 = ((x_1616 * x_1618) + x_1620);
        let x_1623 : vec4<f32> = u_xlat9;
        let x_1624 : vec2<f32> = vec2<f32>(x_1623.z, x_1623.w);
        let x_1626 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1624.x, x_1624.y, x_1626);
        let x_1633 : vec3<f32> = txVec26;
        let x_1635 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1633.xy, x_1633.z);
        u_xlat5.x = x_1635;
        let x_1638 : f32 = u_xlat5.y;
        let x_1640 : f32 = u_xlat5.x;
        let x_1642 : f32 = u_xlat61;
        u_xlat61 = ((x_1638 * x_1640) + x_1642);
        let x_1645 : vec2<f32> = u_xlat46;
        let x_1647 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
        let x_1654 : vec3<f32> = txVec27;
        let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1654.xy, x_1654.z);
        u_xlat5.x = x_1656;
        let x_1659 : f32 = u_xlat5.z;
        let x_1661 : f32 = u_xlat5.x;
        let x_1663 : f32 = u_xlat61;
        u_xlat61 = ((x_1659 * x_1661) + x_1663);
        let x_1666 : vec2<f32> = u_xlat23;
        let x_1668 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
        let x_1675 : vec3<f32> = txVec28;
        let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1675.xy, x_1675.z);
        u_xlat23.x = x_1677;
        let x_1680 : f32 = u_xlat5.w;
        let x_1682 : f32 = u_xlat23.x;
        let x_1684 : f32 = u_xlat61;
        u_xlat4.x = ((x_1680 * x_1682) + x_1684);
      }
    }
  } else {
    let x_1689 : vec4<f32> = u_xlat2;
    let x_1690 : vec2<f32> = vec2<f32>(x_1689.x, x_1689.y);
    let x_1692 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
    let x_1699 : vec3<f32> = txVec29;
    let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1699.xy, x_1699.z);
    u_xlat4.x = x_1701;
  }
  let x_1704 : f32 = x_87.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1704) + 1.0f);
  let x_1709 : f32 = u_xlat4.x;
  let x_1711 : f32 = x_87.x_MainLightShadowParams.x;
  let x_1714 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1709 * x_1711) + x_1714);
  let x_1719 : f32 = u_xlat2.z;
  u_xlatb21.x = (0.0f >= x_1719);
  let x_1724 : f32 = u_xlat2.z;
  u_xlatb40 = (x_1724 >= 1.0f);
  let x_1726 : bool = u_xlatb40;
  let x_1728 : bool = u_xlatb21.x;
  u_xlatb21.x = (x_1726 | x_1728);
  let x_1732 : bool = u_xlatb21.x;
  if (x_1732) {
    x_1733 = 1.0f;
  } else {
    let x_1738 : f32 = u_xlat2.x;
    x_1733 = x_1738;
  }
  let x_1739 : f32 = x_1733;
  u_xlat2.x = x_1739;
  let x_1741 : vec3<f32> = vs_TEXCOORD1;
  let x_1744 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1746 : vec3<f32> = (x_1741 + -(x_1744));
  let x_1747 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1747.w);
  let x_1749 : vec4<f32> = u_xlat4;
  let x_1751 : vec4<f32> = u_xlat4;
  u_xlat21.x = dot(vec3<f32>(x_1749.x, x_1749.y, x_1749.z), vec3<f32>(x_1751.x, x_1751.y, x_1751.z));
  let x_1756 : f32 = u_xlat21.x;
  let x_1758 : f32 = x_87.x_MainLightShadowParams.z;
  let x_1761 : f32 = x_87.x_MainLightShadowParams.w;
  u_xlat21.x = ((x_1756 * x_1758) + x_1761);
  let x_1765 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_1765, 0.0f, 1.0f);
  let x_1770 : f32 = u_xlat2.x;
  u_xlat40 = (-(x_1770) + 1.0f);
  let x_1774 : f32 = u_xlat21.x;
  let x_1775 : f32 = u_xlat40;
  let x_1778 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1774 * x_1775) + x_1778);
  let x_1787 : f32 = x_1785.x_MainLightCookieTextureFormat;
  u_xlatb21.x = !((x_1787 == -1.0f));
  let x_1791 : bool = u_xlatb21.x;
  if (x_1791) {
    let x_1794 : vec3<f32> = vs_TEXCOORD1;
    let x_1797 : vec4<f32> = x_1785.x_MainLightWorldToLight[1i];
    let x_1799 : vec2<f32> = (vec2<f32>(x_1794.y, x_1794.y) * vec2<f32>(x_1797.x, x_1797.y));
    let x_1800 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1799.x, x_1799.y, x_1800.z);
    let x_1803 : vec4<f32> = x_1785.x_MainLightWorldToLight[0i];
    let x_1805 : vec3<f32> = vs_TEXCOORD1;
    let x_1808 : vec3<f32> = u_xlat21;
    let x_1810 : vec2<f32> = ((vec2<f32>(x_1803.x, x_1803.y) * vec2<f32>(x_1805.x, x_1805.x)) + vec2<f32>(x_1808.x, x_1808.y));
    let x_1811 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1810.x, x_1810.y, x_1811.z);
    let x_1814 : vec4<f32> = x_1785.x_MainLightWorldToLight[2i];
    let x_1816 : vec3<f32> = vs_TEXCOORD1;
    let x_1819 : vec3<f32> = u_xlat21;
    let x_1821 : vec2<f32> = ((vec2<f32>(x_1814.x, x_1814.y) * vec2<f32>(x_1816.z, x_1816.z)) + vec2<f32>(x_1819.x, x_1819.y));
    let x_1822 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1821.x, x_1821.y, x_1822.z);
    let x_1824 : vec3<f32> = u_xlat21;
    let x_1827 : vec4<f32> = x_1785.x_MainLightWorldToLight[3i];
    let x_1829 : vec2<f32> = (vec2<f32>(x_1824.x, x_1824.y) + vec2<f32>(x_1827.x, x_1827.y));
    let x_1830 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1829.x, x_1829.y, x_1830.z);
    let x_1832 : vec3<f32> = u_xlat21;
    let x_1835 : vec2<f32> = ((vec2<f32>(x_1832.x, x_1832.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1836 : vec3<f32> = u_xlat21;
    u_xlat21 = vec3<f32>(x_1835.x, x_1835.y, x_1836.z);
    let x_1843 : vec3<f32> = u_xlat21;
    let x_1846 : f32 = x_44.x_GlobalMipBias.x;
    let x_1847 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1843.x, x_1843.y), x_1846);
    u_xlat4 = x_1847;
    let x_1849 : f32 = x_1785.x_MainLightCookieTextureFormat;
    let x_1851 : f32 = x_1785.x_MainLightCookieTextureFormat;
    let x_1853 : f32 = x_1785.x_MainLightCookieTextureFormat;
    let x_1855 : f32 = x_1785.x_MainLightCookieTextureFormat;
    let x_1856 : vec4<f32> = vec4<f32>(x_1849, x_1851, x_1853, x_1855);
    let x_1863 : vec4<bool> = (vec4<f32>(x_1856.x, x_1856.y, x_1856.z, x_1856.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb21 = vec2<bool>(x_1863.x, x_1863.y);
    let x_1866 : bool = u_xlatb21.y;
    if (x_1866) {
      let x_1871 : f32 = u_xlat4.w;
      x_1867 = x_1871;
    } else {
      let x_1874 : f32 = u_xlat4.x;
      x_1867 = x_1874;
    }
    let x_1875 : f32 = x_1867;
    u_xlat40 = x_1875;
    let x_1877 : bool = u_xlatb21.x;
    if (x_1877) {
      let x_1881 : vec4<f32> = u_xlat4;
      x_1878 = vec3<f32>(x_1881.x, x_1881.y, x_1881.z);
    } else {
      let x_1884 : f32 = u_xlat40;
      x_1878 = vec3<f32>(x_1884, x_1884, x_1884);
    }
    let x_1886 : vec3<f32> = x_1878;
    let x_1887 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1893 : vec4<f32> = u_xlat4;
  let x_1896 : vec4<f32> = x_44.x_MainLightColor;
  let x_1898 : vec3<f32> = (vec3<f32>(x_1893.x, x_1893.y, x_1893.z) * vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1899 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
  let x_1901 : f32 = u_xlat60;
  let x_1903 : vec4<f32> = u_xlat4;
  let x_1905 : vec3<f32> = (vec3<f32>(x_1901, x_1901, x_1901) * vec3<f32>(x_1903.x, x_1903.y, x_1903.z));
  let x_1906 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1905.x, x_1905.y, x_1905.z, x_1906.w);
  let x_1908 : f32 = u_xlat58;
  let x_1910 : vec4<f32> = u_xlat3;
  let x_1912 : vec3<f32> = (vec3<f32>(x_1908, x_1908, x_1908) * vec3<f32>(x_1910.x, x_1910.y, x_1910.z));
  let x_1913 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1912.x, x_1912.y, x_1912.z, x_1913.w);
  let x_1916 : f32 = u_xlat2.x;
  let x_1918 : f32 = x_324.unity_LightData.z;
  u_xlat58 = (x_1916 * x_1918);
  let x_1920 : f32 = u_xlat58;
  let x_1922 : vec4<f32> = u_xlat4;
  let x_1924 : vec3<f32> = (vec3<f32>(x_1920, x_1920, x_1920) * vec3<f32>(x_1922.x, x_1922.y, x_1922.z));
  let x_1925 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1925.w);
  let x_1927 : vec4<f32> = u_xlat1;
  let x_1930 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat58 = dot(vec3<f32>(x_1927.x, x_1927.y, x_1927.z), vec3<f32>(x_1930.x, x_1930.y, x_1930.z));
  let x_1933 : f32 = u_xlat58;
  u_xlat58 = clamp(x_1933, 0.0f, 1.0f);
  let x_1935 : f32 = u_xlat58;
  let x_1937 : vec4<f32> = u_xlat2;
  let x_1939 : vec3<f32> = (vec3<f32>(x_1935, x_1935, x_1935) * vec3<f32>(x_1937.x, x_1937.y, x_1937.z));
  let x_1940 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1939.x, x_1939.y, x_1939.z, x_1940.w);
  let x_1942 : vec4<f32> = u_xlat0;
  let x_1944 : vec4<f32> = u_xlat2;
  let x_1946 : vec3<f32> = (vec3<f32>(x_1942.y, x_1942.z, x_1942.w) * vec3<f32>(x_1944.x, x_1944.y, x_1944.z));
  let x_1947 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1946.x, x_1946.y, x_1946.z, x_1947.w);
  let x_1950 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1952 : f32 = x_324.unity_LightData.y;
  u_xlat58 = min(x_1950, x_1952);
  let x_1955 : f32 = u_xlat58;
  u_xlatu58 = bitcast<u32>(i32(x_1955));
  let x_1959 : f32 = x_1785.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1961 : f32 = x_1785.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1963 : f32 = x_1785.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1965 : f32 = x_1785.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1966 : vec4<f32> = vec4<f32>(x_1959, x_1961, x_1963, x_1965);
  let x_1972 : vec4<bool> = (vec4<f32>(x_1966.x, x_1966.y, x_1966.z, x_1966.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1972.x, x_1972.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1983 : u32 = u_xlatu_loop_1;
    let x_1984 : u32 = u_xlatu58;
    if ((x_1983 < x_1984)) {
    } else {
      break;
    }
    let x_1987 : u32 = u_xlatu_loop_1;
    u_xlatu61 = (x_1987 >> 2u);
    let x_1990 : u32 = u_xlatu_loop_1;
    u_xlati62 = bitcast<i32>((x_1990 & 3u));
    let x_1993 : u32 = u_xlatu61;
    let x_1996 : vec4<f32> = x_324.unity_LightIndices[bitcast<i32>(x_1993)];
    let x_2006 : i32 = u_xlati62;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2011 : vec4<u32> = indexable[x_2006];
    u_xlat61 = dot(x_1996, bitcast<vec4<f32>>(x_2011));
    let x_2014 : f32 = u_xlat61;
    u_xlatu61 = bitcast<u32>(i32(x_2014));
    let x_2017 : vec3<f32> = vs_TEXCOORD1;
    let x_2029 : u32 = u_xlatu61;
    let x_2032 : vec4<f32> = x_2028.x_AdditionalLightsPosition[bitcast<i32>(x_2029)];
    let x_2035 : u32 = u_xlatu61;
    let x_2038 : vec4<f32> = x_2028.x_AdditionalLightsPosition[bitcast<i32>(x_2035)];
    let x_2040 : vec3<f32> = ((-(x_2017) * vec3<f32>(x_2032.w, x_2032.w, x_2032.w)) + vec3<f32>(x_2038.x, x_2038.y, x_2038.z));
    let x_2041 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2040.x, x_2040.y, x_2040.z, x_2041.w);
    let x_2044 : vec4<f32> = u_xlat6;
    let x_2046 : vec4<f32> = u_xlat6;
    u_xlat62 = dot(vec3<f32>(x_2044.x, x_2044.y, x_2044.z), vec3<f32>(x_2046.x, x_2046.y, x_2046.z));
    let x_2049 : f32 = u_xlat62;
    u_xlat62 = max(x_2049, 6.10351562e-05f);
    let x_2053 : f32 = u_xlat62;
    u_xlat63 = inverseSqrt(x_2053);
    let x_2055 : f32 = u_xlat63;
    let x_2057 : vec4<f32> = u_xlat6;
    let x_2059 : vec3<f32> = (vec3<f32>(x_2055, x_2055, x_2055) * vec3<f32>(x_2057.x, x_2057.y, x_2057.z));
    let x_2060 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2059.x, x_2059.y, x_2059.z, x_2060.w);
    let x_2062 : f32 = u_xlat62;
    u_xlat63 = (1.0f / x_2062);
    let x_2064 : f32 = u_xlat62;
    let x_2065 : u32 = u_xlatu61;
    let x_2068 : f32 = x_2028.x_AdditionalLightsAttenuation[bitcast<i32>(x_2065)].x;
    u_xlat62 = (x_2064 * x_2068);
    let x_2070 : f32 = u_xlat62;
    let x_2072 : f32 = u_xlat62;
    u_xlat62 = ((-(x_2070) * x_2072) + 1.0f);
    let x_2075 : f32 = u_xlat62;
    u_xlat62 = max(x_2075, 0.0f);
    let x_2077 : f32 = u_xlat62;
    let x_2078 : f32 = u_xlat62;
    u_xlat62 = (x_2077 * x_2078);
    let x_2080 : f32 = u_xlat62;
    let x_2081 : f32 = u_xlat63;
    u_xlat62 = (x_2080 * x_2081);
    let x_2083 : u32 = u_xlatu61;
    let x_2086 : vec4<f32> = x_2028.x_AdditionalLightsSpotDir[bitcast<i32>(x_2083)];
    let x_2088 : vec4<f32> = u_xlat6;
    u_xlat63 = dot(vec3<f32>(x_2086.x, x_2086.y, x_2086.z), vec3<f32>(x_2088.x, x_2088.y, x_2088.z));
    let x_2091 : f32 = u_xlat63;
    let x_2092 : u32 = u_xlatu61;
    let x_2095 : f32 = x_2028.x_AdditionalLightsAttenuation[bitcast<i32>(x_2092)].z;
    let x_2097 : u32 = u_xlatu61;
    let x_2100 : f32 = x_2028.x_AdditionalLightsAttenuation[bitcast<i32>(x_2097)].w;
    u_xlat63 = ((x_2091 * x_2095) + x_2100);
    let x_2102 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2102, 0.0f, 1.0f);
    let x_2104 : f32 = u_xlat63;
    let x_2105 : f32 = u_xlat63;
    u_xlat63 = (x_2104 * x_2105);
    let x_2107 : f32 = u_xlat62;
    let x_2108 : f32 = u_xlat63;
    u_xlat62 = (x_2107 * x_2108);
    let x_2111 : u32 = u_xlatu61;
    u_xlatu63 = (x_2111 >> 5u);
    let x_2114 : u32 = u_xlatu61;
    u_xlati7 = (1i << bitcast<u32>((bitcast<i32>(x_2114) & 31i)));
    let x_2120 : i32 = u_xlati7;
    let x_2122 : u32 = u_xlatu63;
    let x_2125 : f32 = x_1785.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2122)].el;
    u_xlati63 = bitcast<i32>((bitcast<u32>(x_2120) & bitcast<u32>(x_2125)));
    let x_2129 : i32 = u_xlati63;
    if ((x_2129 != 0i)) {
      let x_2139 : u32 = u_xlatu61;
      let x_2142 : f32 = x_2138.x_AdditionalLightsLightTypes[bitcast<i32>(x_2139)].el;
      u_xlati63 = i32(x_2142);
      let x_2144 : i32 = u_xlati63;
      u_xlati7 = select(1i, 0i, (x_2144 != 0i));
      let x_2148 : u32 = u_xlatu61;
      u_xlati26 = (bitcast<i32>(x_2148) << bitcast<u32>(2i));
      let x_2151 : i32 = u_xlati7;
      if ((x_2151 != 0i)) {
        let x_2155 : vec3<f32> = vs_TEXCOORD1;
        let x_2157 : i32 = u_xlati26;
        let x_2160 : i32 = u_xlati26;
        let x_2164 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[((x_2157 + 1i) / 4i)][((x_2160 + 1i) % 4i)];
        let x_2166 : vec3<f32> = (vec3<f32>(x_2155.y, x_2155.y, x_2155.y) * vec3<f32>(x_2164.x, x_2164.y, x_2164.w));
        let x_2167 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2166.x, x_2167.y, x_2166.y, x_2166.z);
        let x_2169 : i32 = u_xlati26;
        let x_2171 : i32 = u_xlati26;
        let x_2174 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[(x_2169 / 4i)][(x_2171 % 4i)];
        let x_2176 : vec3<f32> = vs_TEXCOORD1;
        let x_2179 : vec4<f32> = u_xlat7;
        let x_2181 : vec3<f32> = ((vec3<f32>(x_2174.x, x_2174.y, x_2174.w) * vec3<f32>(x_2176.x, x_2176.x, x_2176.x)) + vec3<f32>(x_2179.x, x_2179.z, x_2179.w));
        let x_2182 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2181.x, x_2182.y, x_2181.y, x_2181.z);
        let x_2184 : i32 = u_xlati26;
        let x_2187 : i32 = u_xlati26;
        let x_2191 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[((x_2184 + 2i) / 4i)][((x_2187 + 2i) % 4i)];
        let x_2193 : vec3<f32> = vs_TEXCOORD1;
        let x_2196 : vec4<f32> = u_xlat7;
        let x_2198 : vec3<f32> = ((vec3<f32>(x_2191.x, x_2191.y, x_2191.w) * vec3<f32>(x_2193.z, x_2193.z, x_2193.z)) + vec3<f32>(x_2196.x, x_2196.z, x_2196.w));
        let x_2199 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2198.x, x_2199.y, x_2198.y, x_2198.z);
        let x_2201 : vec4<f32> = u_xlat7;
        let x_2203 : i32 = u_xlati26;
        let x_2206 : i32 = u_xlati26;
        let x_2210 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[((x_2203 + 3i) / 4i)][((x_2206 + 3i) % 4i)];
        let x_2212 : vec3<f32> = (vec3<f32>(x_2201.x, x_2201.z, x_2201.w) + vec3<f32>(x_2210.x, x_2210.y, x_2210.w));
        let x_2213 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2212.x, x_2213.y, x_2212.y, x_2212.z);
        let x_2215 : vec4<f32> = u_xlat7;
        let x_2217 : vec4<f32> = u_xlat7;
        let x_2219 : vec2<f32> = (vec2<f32>(x_2215.x, x_2215.z) / vec2<f32>(x_2217.w, x_2217.w));
        let x_2220 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2219.x, x_2220.y, x_2219.y, x_2220.w);
        let x_2222 : vec4<f32> = u_xlat7;
        let x_2225 : vec2<f32> = ((vec2<f32>(x_2222.x, x_2222.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2226 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2225.x, x_2226.y, x_2225.y, x_2226.w);
        let x_2228 : vec4<f32> = u_xlat7;
        let x_2232 : vec2<f32> = clamp(vec2<f32>(x_2228.x, x_2228.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2233 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2232.x, x_2233.y, x_2232.y, x_2233.w);
        let x_2235 : u32 = u_xlatu61;
        let x_2238 : vec4<f32> = x_2138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2235)];
        let x_2240 : vec4<f32> = u_xlat7;
        let x_2243 : u32 = u_xlatu61;
        let x_2246 : vec4<f32> = x_2138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2243)];
        let x_2248 : vec2<f32> = ((vec2<f32>(x_2238.x, x_2238.y) * vec2<f32>(x_2240.x, x_2240.z)) + vec2<f32>(x_2246.z, x_2246.w));
        let x_2249 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_2248.x, x_2249.y, x_2248.y, x_2249.w);
      } else {
        let x_2253 : i32 = u_xlati63;
        u_xlatb63 = (x_2253 == 1i);
        let x_2255 : bool = u_xlatb63;
        u_xlati63 = select(0i, 1i, x_2255);
        let x_2257 : i32 = u_xlati63;
        if ((x_2257 != 0i)) {
          let x_2261 : vec3<f32> = vs_TEXCOORD1;
          let x_2263 : i32 = u_xlati26;
          let x_2266 : i32 = u_xlati26;
          let x_2270 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[((x_2263 + 1i) / 4i)][((x_2266 + 1i) % 4i)];
          let x_2272 : vec2<f32> = (vec2<f32>(x_2261.y, x_2261.y) * vec2<f32>(x_2270.x, x_2270.y));
          let x_2273 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2272.x, x_2272.y, x_2273.z, x_2273.w);
          let x_2275 : i32 = u_xlati26;
          let x_2277 : i32 = u_xlati26;
          let x_2280 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[(x_2275 / 4i)][(x_2277 % 4i)];
          let x_2282 : vec3<f32> = vs_TEXCOORD1;
          let x_2285 : vec4<f32> = u_xlat8;
          let x_2287 : vec2<f32> = ((vec2<f32>(x_2280.x, x_2280.y) * vec2<f32>(x_2282.x, x_2282.x)) + vec2<f32>(x_2285.x, x_2285.y));
          let x_2288 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2287.x, x_2287.y, x_2288.z, x_2288.w);
          let x_2290 : i32 = u_xlati26;
          let x_2293 : i32 = u_xlati26;
          let x_2297 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[((x_2290 + 2i) / 4i)][((x_2293 + 2i) % 4i)];
          let x_2299 : vec3<f32> = vs_TEXCOORD1;
          let x_2302 : vec4<f32> = u_xlat8;
          let x_2304 : vec2<f32> = ((vec2<f32>(x_2297.x, x_2297.y) * vec2<f32>(x_2299.z, x_2299.z)) + vec2<f32>(x_2302.x, x_2302.y));
          let x_2305 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2304.x, x_2304.y, x_2305.z, x_2305.w);
          let x_2307 : vec4<f32> = u_xlat8;
          let x_2309 : i32 = u_xlati26;
          let x_2312 : i32 = u_xlati26;
          let x_2316 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[((x_2309 + 3i) / 4i)][((x_2312 + 3i) % 4i)];
          let x_2318 : vec2<f32> = (vec2<f32>(x_2307.x, x_2307.y) + vec2<f32>(x_2316.x, x_2316.y));
          let x_2319 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2318.x, x_2318.y, x_2319.z, x_2319.w);
          let x_2321 : vec4<f32> = u_xlat8;
          let x_2324 : vec2<f32> = ((vec2<f32>(x_2321.x, x_2321.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2325 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2324.x, x_2324.y, x_2325.z, x_2325.w);
          let x_2327 : vec4<f32> = u_xlat8;
          let x_2329 : vec2<f32> = fract(vec2<f32>(x_2327.x, x_2327.y));
          let x_2330 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2329.x, x_2329.y, x_2330.z, x_2330.w);
          let x_2332 : u32 = u_xlatu61;
          let x_2335 : vec4<f32> = x_2138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2332)];
          let x_2337 : vec4<f32> = u_xlat8;
          let x_2340 : u32 = u_xlatu61;
          let x_2343 : vec4<f32> = x_2138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2340)];
          let x_2345 : vec2<f32> = ((vec2<f32>(x_2335.x, x_2335.y) * vec2<f32>(x_2337.x, x_2337.y)) + vec2<f32>(x_2343.z, x_2343.w));
          let x_2346 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2345.x, x_2346.y, x_2345.y, x_2346.w);
        } else {
          let x_2349 : vec3<f32> = vs_TEXCOORD1;
          let x_2351 : i32 = u_xlati26;
          let x_2354 : i32 = u_xlati26;
          let x_2358 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[((x_2351 + 1i) / 4i)][((x_2354 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_2349.y, x_2349.y, x_2349.y, x_2349.y) * x_2358);
          let x_2360 : i32 = u_xlati26;
          let x_2362 : i32 = u_xlati26;
          let x_2365 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[(x_2360 / 4i)][(x_2362 % 4i)];
          let x_2366 : vec3<f32> = vs_TEXCOORD1;
          let x_2369 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2365 * vec4<f32>(x_2366.x, x_2366.x, x_2366.x, x_2366.x)) + x_2369);
          let x_2371 : i32 = u_xlati26;
          let x_2374 : i32 = u_xlati26;
          let x_2378 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[((x_2371 + 2i) / 4i)][((x_2374 + 2i) % 4i)];
          let x_2379 : vec3<f32> = vs_TEXCOORD1;
          let x_2382 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2378 * vec4<f32>(x_2379.z, x_2379.z, x_2379.z, x_2379.z)) + x_2382);
          let x_2384 : vec4<f32> = u_xlat8;
          let x_2385 : i32 = u_xlati26;
          let x_2388 : i32 = u_xlati26;
          let x_2392 : vec4<f32> = x_2138.x_AdditionalLightsWorldToLights[((x_2385 + 3i) / 4i)][((x_2388 + 3i) % 4i)];
          u_xlat8 = (x_2384 + x_2392);
          let x_2394 : vec4<f32> = u_xlat8;
          let x_2396 : vec4<f32> = u_xlat8;
          let x_2398 : vec3<f32> = (vec3<f32>(x_2394.x, x_2394.y, x_2394.z) / vec3<f32>(x_2396.w, x_2396.w, x_2396.w));
          let x_2399 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2398.x, x_2398.y, x_2398.z, x_2399.w);
          let x_2401 : vec4<f32> = u_xlat8;
          let x_2403 : vec4<f32> = u_xlat8;
          u_xlat63 = dot(vec3<f32>(x_2401.x, x_2401.y, x_2401.z), vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
          let x_2406 : f32 = u_xlat63;
          u_xlat63 = inverseSqrt(x_2406);
          let x_2408 : f32 = u_xlat63;
          let x_2410 : vec4<f32> = u_xlat8;
          let x_2412 : vec3<f32> = (vec3<f32>(x_2408, x_2408, x_2408) * vec3<f32>(x_2410.x, x_2410.y, x_2410.z));
          let x_2413 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2412.x, x_2412.y, x_2412.z, x_2413.w);
          let x_2415 : vec4<f32> = u_xlat8;
          u_xlat63 = dot(abs(vec3<f32>(x_2415.x, x_2415.y, x_2415.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2420 : f32 = u_xlat63;
          u_xlat63 = max(x_2420, 0.000001f);
          let x_2423 : f32 = u_xlat63;
          u_xlat63 = (1.0f / x_2423);
          let x_2425 : f32 = u_xlat63;
          let x_2427 : vec4<f32> = u_xlat8;
          let x_2429 : vec3<f32> = (vec3<f32>(x_2425, x_2425, x_2425) * vec3<f32>(x_2427.z, x_2427.x, x_2427.y));
          let x_2430 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2430.w);
          let x_2433 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_2433);
          let x_2437 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_2437, 0.0f, 1.0f);
          let x_2443 : vec4<f32> = u_xlat9;
          let x_2446 : vec4<bool> = (vec4<f32>(x_2443.y, x_2443.y, x_2443.z, x_2443.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2447 : vec2<bool> = vec2<bool>(x_2446.x, x_2446.z);
          let x_2448 : vec3<bool> = u_xlatb26;
          u_xlatb26 = vec3<bool>(x_2447.x, x_2448.y, x_2447.y);
          let x_2452 : bool = u_xlatb26.x;
          if (x_2452) {
            let x_2457 : f32 = u_xlat9.x;
            x_2453 = x_2457;
          } else {
            let x_2460 : f32 = u_xlat9.x;
            x_2453 = -(x_2460);
          }
          let x_2462 : f32 = x_2453;
          u_xlat26.x = x_2462;
          let x_2465 : bool = u_xlatb26.z;
          if (x_2465) {
            let x_2470 : f32 = u_xlat9.x;
            x_2466 = x_2470;
          } else {
            let x_2473 : f32 = u_xlat9.x;
            x_2466 = -(x_2473);
          }
          let x_2475 : f32 = x_2466;
          u_xlat26.z = x_2475;
          let x_2477 : vec4<f32> = u_xlat8;
          let x_2479 : f32 = u_xlat63;
          let x_2482 : vec3<f32> = u_xlat26;
          let x_2484 : vec2<f32> = ((vec2<f32>(x_2477.x, x_2477.y) * vec2<f32>(x_2479, x_2479)) + vec2<f32>(x_2482.x, x_2482.z));
          let x_2485 : vec3<f32> = u_xlat26;
          u_xlat26 = vec3<f32>(x_2484.x, x_2485.y, x_2484.y);
          let x_2487 : vec3<f32> = u_xlat26;
          let x_2490 : vec2<f32> = ((vec2<f32>(x_2487.x, x_2487.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2491 : vec3<f32> = u_xlat26;
          u_xlat26 = vec3<f32>(x_2490.x, x_2491.y, x_2490.y);
          let x_2493 : vec3<f32> = u_xlat26;
          let x_2497 : vec2<f32> = clamp(vec2<f32>(x_2493.x, x_2493.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2498 : vec3<f32> = u_xlat26;
          u_xlat26 = vec3<f32>(x_2497.x, x_2498.y, x_2497.y);
          let x_2500 : u32 = u_xlatu61;
          let x_2503 : vec4<f32> = x_2138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2500)];
          let x_2505 : vec3<f32> = u_xlat26;
          let x_2508 : u32 = u_xlatu61;
          let x_2511 : vec4<f32> = x_2138.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2508)];
          let x_2513 : vec2<f32> = ((vec2<f32>(x_2503.x, x_2503.y) * vec2<f32>(x_2505.x, x_2505.z)) + vec2<f32>(x_2511.z, x_2511.w));
          let x_2514 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2513.x, x_2514.y, x_2513.y, x_2514.w);
        }
      }
      let x_2521 : vec4<f32> = u_xlat7;
      let x_2524 : f32 = x_44.x_GlobalMipBias.x;
      let x_2525 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2521.x, x_2521.z), x_2524);
      u_xlat7 = x_2525;
      let x_2527 : bool = u_xlatb4.y;
      if (x_2527) {
        let x_2532 : f32 = u_xlat7.w;
        x_2528 = x_2532;
      } else {
        let x_2535 : f32 = u_xlat7.x;
        x_2528 = x_2535;
      }
      let x_2536 : f32 = x_2528;
      u_xlat63 = x_2536;
      let x_2538 : bool = u_xlatb4.x;
      if (x_2538) {
        let x_2542 : vec4<f32> = u_xlat7;
        x_2539 = vec3<f32>(x_2542.x, x_2542.y, x_2542.z);
      } else {
        let x_2545 : f32 = u_xlat63;
        x_2539 = vec3<f32>(x_2545, x_2545, x_2545);
      }
      let x_2547 : vec3<f32> = x_2539;
      let x_2548 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2548.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_2554 : vec4<f32> = u_xlat7;
    let x_2556 : u32 = u_xlatu61;
    let x_2559 : vec4<f32> = x_2028.x_AdditionalLightsColor[bitcast<i32>(x_2556)];
    let x_2561 : vec3<f32> = (vec3<f32>(x_2554.x, x_2554.y, x_2554.z) * vec3<f32>(x_2559.x, x_2559.y, x_2559.z));
    let x_2562 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2561.x, x_2561.y, x_2561.z, x_2562.w);
    let x_2564 : f32 = u_xlat60;
    let x_2566 : vec4<f32> = u_xlat7;
    let x_2568 : vec3<f32> = (vec3<f32>(x_2564, x_2564, x_2564) * vec3<f32>(x_2566.x, x_2566.y, x_2566.z));
    let x_2569 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
    let x_2571 : f32 = u_xlat62;
    let x_2573 : vec4<f32> = u_xlat7;
    let x_2575 : vec3<f32> = (vec3<f32>(x_2571, x_2571, x_2571) * vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
    let x_2576 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
    let x_2578 : vec4<f32> = u_xlat1;
    let x_2580 : vec4<f32> = u_xlat6;
    u_xlat61 = dot(vec3<f32>(x_2578.x, x_2578.y, x_2578.z), vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
    let x_2583 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2583, 0.0f, 1.0f);
    let x_2585 : f32 = u_xlat61;
    let x_2587 : vec4<f32> = u_xlat7;
    let x_2589 : vec3<f32> = (vec3<f32>(x_2585, x_2585, x_2585) * vec3<f32>(x_2587.x, x_2587.y, x_2587.z));
    let x_2590 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2589.x, x_2589.y, x_2589.z, x_2590.w);
    let x_2592 : vec4<f32> = u_xlat6;
    let x_2594 : vec4<f32> = u_xlat0;
    let x_2597 : vec4<f32> = u_xlat5;
    let x_2599 : vec3<f32> = ((vec3<f32>(x_2592.x, x_2592.y, x_2592.z) * vec3<f32>(x_2594.y, x_2594.z, x_2594.w)) + vec3<f32>(x_2597.x, x_2597.y, x_2597.z));
    let x_2600 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2599.x, x_2599.y, x_2599.z, x_2600.w);

    continuing {
      let x_2602 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2602 + bitcast<u32>(1i));
    }
  }
  let x_2605 : vec4<f32> = u_xlat3;
  let x_2607 : vec4<f32> = u_xlat0;
  let x_2610 : vec4<f32> = u_xlat2;
  u_xlat19 = ((vec3<f32>(x_2605.x, x_2605.y, x_2605.z) * vec3<f32>(x_2607.y, x_2607.z, x_2607.w)) + vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
  let x_2613 : vec4<f32> = u_xlat5;
  let x_2615 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_2613.x, x_2613.y, x_2613.z) + x_2615);
  let x_2617 : f32 = u_xlat59;
  let x_2618 : f32 = u_xlat59;
  u_xlat1.x = (x_2617 * -(x_2618));
  let x_2623 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2623);
  let x_2626 : vec3<f32> = u_xlat19;
  let x_2629 : vec4<f32> = x_44.unity_FogColor;
  u_xlat19 = (x_2626 + -(vec3<f32>(x_2629.x, x_2629.y, x_2629.z)));
  let x_2635 : vec4<f32> = u_xlat1;
  let x_2637 : vec3<f32> = u_xlat19;
  let x_2640 : vec4<f32> = x_44.unity_FogColor;
  let x_2642 : vec3<f32> = ((vec3<f32>(x_2635.x, x_2635.x, x_2635.x) * x_2637) + vec3<f32>(x_2640.x, x_2640.y, x_2640.z));
  let x_2643 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
  let x_2647 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2647 == 1.0f);
  let x_2649 : bool = u_xlatb19;
  if (x_2649) {
    let x_2654 : f32 = u_xlat0.x;
    x_2650 = x_2654;
  } else {
    x_2650 = 1.0f;
  }
  let x_2656 : f32 = x_2650;
  SV_Target0.w = x_2656;
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

