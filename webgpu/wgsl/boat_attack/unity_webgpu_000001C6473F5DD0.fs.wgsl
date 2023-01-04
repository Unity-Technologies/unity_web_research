struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_155 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_351 : UnityPerDraw;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1746 : LightCookies;

@group(0) @binding(2) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1983 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2092 : AdditionalLightsCookies;

@group(0) @binding(3) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_59 : f32;
  var u_xlat19 : f32;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_109 : f32;
  var u_xlatb19 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu19 : u32;
  var u_xlati19 : i32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb57 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat59 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat26 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
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
  var u_xlatb1 : bool;
  var u_xlatb5 : vec2<bool>;
  var x_1829 : f32;
  var x_1840 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati59 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat60 : f32;
  var u_xlatu60 : u32;
  var u_xlati61 : i32;
  var u_xlati60 : i32;
  var u_xlati43 : i32;
  var u_xlatb60 : bool;
  var u_xlatb43 : vec2<bool>;
  var x_2384 : f32;
  var x_2397 : f32;
  var x_2449 : f32;
  var x_2460 : vec3<f32>;
  var x_2554 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_63 : f32 = u_xlat1.x;
    x_59 = x_63;
  } else {
    x_59 = 0.0f;
  }
  let x_66 : f32 = x_59;
  u_xlat0.x = x_66;
  let x_71 : f32 = u_xlat0.w;
  let x_73 : f32 = x_41.x_BaseColor.w;
  let x_76 : f32 = x_41.x_Cutoff;
  u_xlat19 = ((x_71 * x_73) + -(x_76));
  let x_81 : f32 = u_xlat1.x;
  u_xlat38 = dpdxCoarse(x_81);
  let x_85 : f32 = u_xlat1.x;
  u_xlat57 = dpdyCoarse(x_85);
  let x_87 : f32 = u_xlat57;
  let x_89 : f32 = u_xlat38;
  u_xlat38 = (abs(x_87) + abs(x_89));
  let x_92 : f32 = u_xlat38;
  u_xlat38 = max(x_92, 0.0001f);
  let x_95 : f32 = u_xlat19;
  let x_96 : f32 = u_xlat38;
  u_xlat19 = (x_95 / x_96);
  let x_98 : f32 = u_xlat19;
  u_xlat19 = (x_98 + 0.5f);
  let x_101 : f32 = u_xlat19;
  u_xlat19 = clamp(x_101, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb38 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb38;
  if (x_108) {
    let x_112 : f32 = u_xlat19;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat19 = (x_119 + -0.0001f);
  let x_123 : f32 = u_xlat19;
  u_xlatb19 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb19;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat19 = dot(x_135, x_136);
  let x_138 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_138);
  let x_141 : f32 = u_xlat19;
  let x_143 : vec3<f32> = vs_TEXCOORD2;
  let x_144 : vec3<f32> = (vec3<f32>(x_141, x_141, x_141) * x_143);
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_144.x, x_144.y, x_144.z, x_145.w);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_157 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres0;
  let x_160 : vec3<f32> = (x_149 + -(vec3<f32>(x_157.x, x_157.y, x_157.z)));
  let x_161 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec3<f32> = vs_TEXCOORD1;
  let x_167 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres1;
  let x_170 : vec3<f32> = (x_164 + -(vec3<f32>(x_167.x, x_167.y, x_167.z)));
  let x_171 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec3<f32> = vs_TEXCOORD1;
  let x_177 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres2;
  let x_180 : vec3<f32> = (x_174 + -(vec3<f32>(x_177.x, x_177.y, x_177.z)));
  let x_181 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_180.x, x_180.y, x_180.z, x_181.w);
  let x_184 : vec3<f32> = vs_TEXCOORD1;
  let x_186 : vec4<f32> = x_155.x_CascadeShadowSplitSpheres3;
  let x_189 : vec3<f32> = (x_184 + -(vec3<f32>(x_186.x, x_186.y, x_186.z)));
  let x_190 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_192 : vec4<f32> = u_xlat3;
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_192.x, x_192.y, x_192.z), vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_198 : vec4<f32> = u_xlat4;
  let x_200 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_198.x, x_198.y, x_198.z), vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_205 : vec4<f32> = u_xlat5;
  let x_207 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_212 : vec4<f32> = u_xlat6;
  let x_214 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_212.x, x_212.y, x_212.z), vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_221 : vec4<f32> = u_xlat3;
  let x_224 : vec4<f32> = x_155.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_221 < x_224);
  let x_227 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_227);
  let x_231 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_235);
  let x_239 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_239);
  let x_243 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_243);
  let x_249 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_249);
  let x_253 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_253);
  let x_256 : vec4<f32> = u_xlat3;
  let x_258 : vec4<f32> = u_xlat4;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(x_258.y, x_258.z, x_258.w));
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec4<f32> = u_xlat3;
  let x_266 : vec3<f32> = max(vec3<f32>(x_263.x, x_263.y, x_263.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_267 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_267.x, x_266.x, x_266.y, x_266.z);
  let x_269 : vec4<f32> = u_xlat4;
  u_xlat19 = dot(x_269, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_275 : f32 = u_xlat19;
  u_xlat19 = (-(x_275) + 4.0f);
  let x_280 : f32 = u_xlat19;
  u_xlatu19 = u32(x_280);
  let x_284 : u32 = u_xlatu19;
  u_xlati19 = (bitcast<i32>(x_284) << bitcast<u32>(2i));
  let x_287 : vec3<f32> = vs_TEXCOORD1;
  let x_289 : i32 = u_xlati19;
  let x_292 : i32 = u_xlati19;
  let x_296 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_289 + 1i) / 4i)][((x_292 + 1i) % 4i)];
  let x_298 : vec3<f32> = (vec3<f32>(x_287.y, x_287.y, x_287.y) * vec3<f32>(x_296.x, x_296.y, x_296.z));
  let x_299 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_301 : i32 = u_xlati19;
  let x_303 : i32 = u_xlati19;
  let x_306 : vec4<f32> = x_155.x_MainLightWorldToShadow[(x_301 / 4i)][(x_303 % 4i)];
  let x_308 : vec3<f32> = vs_TEXCOORD1;
  let x_311 : vec4<f32> = u_xlat3;
  let x_313 : vec3<f32> = ((vec3<f32>(x_306.x, x_306.y, x_306.z) * vec3<f32>(x_308.x, x_308.x, x_308.x)) + vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : i32 = u_xlati19;
  let x_319 : i32 = u_xlati19;
  let x_323 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_316 + 2i) / 4i)][((x_319 + 2i) % 4i)];
  let x_325 : vec3<f32> = vs_TEXCOORD1;
  let x_328 : vec4<f32> = u_xlat3;
  let x_330 : vec3<f32> = ((vec3<f32>(x_323.x, x_323.y, x_323.z) * vec3<f32>(x_325.z, x_325.z, x_325.z)) + vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat3;
  let x_335 : i32 = u_xlati19;
  let x_338 : i32 = u_xlati19;
  let x_342 : vec4<f32> = x_155.x_MainLightWorldToShadow[((x_335 + 3i) / 4i)][((x_338 + 3i) % 4i)];
  let x_344 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) + vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  u_xlat2.w = 1.0f;
  let x_354 : vec4<f32> = x_351.unity_SHAr;
  let x_355 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_354, x_355);
  let x_360 : vec4<f32> = x_351.unity_SHAg;
  let x_361 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_360, x_361);
  let x_366 : vec4<f32> = x_351.unity_SHAb;
  let x_367 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_366, x_367);
  let x_370 : vec4<f32> = u_xlat2;
  let x_372 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_370.y, x_370.z, x_370.z, x_370.x) * vec4<f32>(x_372.x, x_372.y, x_372.z, x_372.z));
  let x_377 : vec4<f32> = x_351.unity_SHBr;
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_377, x_378);
  let x_383 : vec4<f32> = x_351.unity_SHBg;
  let x_384 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_383, x_384);
  let x_389 : vec4<f32> = x_351.unity_SHBb;
  let x_390 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_389, x_390);
  let x_394 : f32 = u_xlat2.y;
  let x_396 : f32 = u_xlat2.y;
  u_xlat19 = (x_394 * x_396);
  let x_399 : f32 = u_xlat2.x;
  let x_401 : f32 = u_xlat2.x;
  let x_403 : f32 = u_xlat19;
  u_xlat19 = ((x_399 * x_401) + -(x_403));
  let x_408 : vec4<f32> = x_351.unity_SHC;
  let x_410 : f32 = u_xlat19;
  let x_413 : vec4<f32> = u_xlat6;
  let x_415 : vec3<f32> = ((vec3<f32>(x_408.x, x_408.y, x_408.z) * vec3<f32>(x_410, x_410, x_410)) + vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat4;
  let x_420 : vec4<f32> = u_xlat5;
  let x_422 : vec3<f32> = (vec3<f32>(x_418.x, x_418.y, x_418.z) + vec3<f32>(x_420.x, x_420.y, x_420.z));
  let x_423 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat4;
  let x_427 : vec3<f32> = max(vec3<f32>(x_425.x, x_425.y, x_425.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_428 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_432 : f32 = x_155.x_MainLightShadowParams.y;
  u_xlatb19 = (0.0f < x_432);
  let x_434 : bool = u_xlatb19;
  if (x_434) {
    let x_438 : f32 = x_155.x_MainLightShadowParams.y;
    u_xlatb19 = (x_438 == 1.0f);
    let x_440 : bool = u_xlatb19;
    if (x_440) {
      let x_443 : vec4<f32> = u_xlat3;
      let x_447 : vec4<f32> = x_155.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_443.x, x_443.y, x_443.x, x_443.y) + x_447);
      let x_451 : vec4<f32> = u_xlat5;
      let x_452 : vec2<f32> = vec2<f32>(x_451.x, x_451.y);
      let x_454 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_452.x, x_452.y, x_454);
      let x_466 : vec3<f32> = txVec0;
      let x_468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_466.xy, x_466.z);
      u_xlat6.x = x_468;
      let x_471 : vec4<f32> = u_xlat5;
      let x_472 : vec2<f32> = vec2<f32>(x_471.z, x_471.w);
      let x_474 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_472.x, x_472.y, x_474);
      let x_481 : vec3<f32> = txVec1;
      let x_483 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_481.xy, x_481.z);
      u_xlat6.y = x_483;
      let x_485 : vec4<f32> = u_xlat3;
      let x_489 : vec4<f32> = x_155.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_485.x, x_485.y, x_485.x, x_485.y) + x_489);
      let x_492 : vec4<f32> = u_xlat5;
      let x_493 : vec2<f32> = vec2<f32>(x_492.x, x_492.y);
      let x_495 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_493.x, x_493.y, x_495);
      let x_502 : vec3<f32> = txVec2;
      let x_504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_502.xy, x_502.z);
      u_xlat6.z = x_504;
      let x_507 : vec4<f32> = u_xlat5;
      let x_508 : vec2<f32> = vec2<f32>(x_507.z, x_507.w);
      let x_510 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_508.x, x_508.y, x_510);
      let x_517 : vec3<f32> = txVec3;
      let x_519 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_517.xy, x_517.z);
      u_xlat6.w = x_519;
      let x_521 : vec4<f32> = u_xlat6;
      u_xlat19 = dot(x_521, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_528 : f32 = x_155.x_MainLightShadowParams.y;
      u_xlatb57 = (x_528 == 2.0f);
      let x_530 : bool = u_xlatb57;
      if (x_530) {
        let x_533 : vec4<f32> = u_xlat3;
        let x_537 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_541 : vec2<f32> = ((vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_537.z, x_537.w)) + vec2<f32>(0.5f, 0.5f));
        let x_542 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_541.x, x_541.y, x_542.z, x_542.w);
        let x_544 : vec4<f32> = u_xlat5;
        let x_546 : vec2<f32> = floor(vec2<f32>(x_544.x, x_544.y));
        let x_547 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
        let x_551 : vec4<f32> = u_xlat3;
        let x_554 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_557 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_551.x, x_551.y) * vec2<f32>(x_554.z, x_554.w)) + -(vec2<f32>(x_557.x, x_557.y)));
        let x_561 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_561.x, x_561.x, x_561.y, x_561.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_566 : vec4<f32> = u_xlat6;
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_566.x, x_566.x, x_566.z, x_566.z) * vec4<f32>(x_568.x, x_568.x, x_568.z, x_568.z));
        let x_571 : vec4<f32> = u_xlat7;
        let x_575 : vec2<f32> = (vec2<f32>(x_571.y, x_571.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_576 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_575.x, x_576.y, x_575.y, x_576.w);
        let x_578 : vec4<f32> = u_xlat7;
        let x_581 : vec2<f32> = u_xlat43;
        let x_583 : vec2<f32> = ((vec2<f32>(x_578.x, x_578.z) * vec2<f32>(0.5f, 0.5f)) + -(x_581));
        let x_584 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_583.x, x_583.y, x_584.z, x_584.w);
        let x_587 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_587) + vec2<f32>(1.0f, 1.0f));
        let x_592 : vec2<f32> = u_xlat43;
        let x_594 : vec2<f32> = min(x_592, vec2<f32>(0.0f, 0.0f));
        let x_595 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
        let x_597 : vec4<f32> = u_xlat8;
        let x_600 : vec4<f32> = u_xlat8;
        let x_603 : vec2<f32> = u_xlat45;
        let x_604 : vec2<f32> = ((-(vec2<f32>(x_597.x, x_597.y)) * vec2<f32>(x_600.x, x_600.y)) + x_603);
        let x_605 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_605.w);
        let x_607 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_607, vec2<f32>(0.0f, 0.0f));
        let x_609 : vec2<f32> = u_xlat43;
        let x_611 : vec2<f32> = u_xlat43;
        let x_613 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_609) * x_611) + vec2<f32>(x_613.y, x_613.w));
        let x_616 : vec4<f32> = u_xlat8;
        let x_618 : vec2<f32> = (vec2<f32>(x_616.x, x_616.y) + vec2<f32>(1.0f, 1.0f));
        let x_619 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_621 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_621 + vec2<f32>(1.0f, 1.0f));
        let x_624 : vec4<f32> = u_xlat7;
        let x_628 : vec2<f32> = (vec2<f32>(x_624.x, x_624.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_629 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_628.x, x_628.y, x_629.z, x_629.w);
        let x_631 : vec2<f32> = u_xlat45;
        let x_632 : vec2<f32> = (x_631 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_633 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_635 : vec4<f32> = u_xlat8;
        let x_637 : vec2<f32> = (vec2<f32>(x_635.x, x_635.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_638 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_637.x, x_637.y, x_638.z, x_638.w);
        let x_641 : vec2<f32> = u_xlat43;
        let x_642 : vec2<f32> = (x_641 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_643 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
        let x_645 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_645.y, x_645.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_649 : f32 = u_xlat8.x;
        u_xlat9.z = x_649;
        let x_652 : f32 = u_xlat43.x;
        u_xlat9.w = x_652;
        let x_655 : f32 = u_xlat10.x;
        u_xlat7.z = x_655;
        let x_658 : f32 = u_xlat6.x;
        u_xlat7.w = x_658;
        let x_661 : vec4<f32> = u_xlat7;
        let x_663 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_661.z, x_661.w, x_661.x, x_661.z) + vec4<f32>(x_663.z, x_663.w, x_663.x, x_663.z));
        let x_667 : f32 = u_xlat9.y;
        u_xlat8.z = x_667;
        let x_670 : f32 = u_xlat43.y;
        u_xlat8.w = x_670;
        let x_673 : f32 = u_xlat7.y;
        u_xlat10.z = x_673;
        let x_676 : f32 = u_xlat6.z;
        u_xlat10.w = x_676;
        let x_678 : vec4<f32> = u_xlat8;
        let x_680 : vec4<f32> = u_xlat10;
        let x_682 : vec3<f32> = (vec3<f32>(x_678.z, x_678.y, x_678.w) + vec3<f32>(x_680.z, x_680.y, x_680.w));
        let x_683 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat7;
        let x_687 : vec4<f32> = u_xlat11;
        let x_689 : vec3<f32> = (vec3<f32>(x_685.x, x_685.z, x_685.w) / vec3<f32>(x_687.z, x_687.w, x_687.y));
        let x_690 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
        let x_692 : vec4<f32> = u_xlat7;
        let x_698 : vec3<f32> = (vec3<f32>(x_692.x, x_692.y, x_692.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_699 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
        let x_701 : vec4<f32> = u_xlat10;
        let x_703 : vec4<f32> = u_xlat6;
        let x_705 : vec3<f32> = (vec3<f32>(x_701.z, x_701.y, x_701.w) / vec3<f32>(x_703.x, x_703.y, x_703.z));
        let x_706 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat8;
        let x_710 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_711 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
        let x_713 : vec4<f32> = u_xlat7;
        let x_716 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_718 : vec3<f32> = (vec3<f32>(x_713.y, x_713.x, x_713.z) * vec3<f32>(x_716.x, x_716.x, x_716.x));
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
        let x_721 : vec4<f32> = u_xlat8;
        let x_724 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_726 : vec3<f32> = (vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_724.y, x_724.y, x_724.y));
        let x_727 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
        let x_730 : f32 = u_xlat8.x;
        u_xlat7.w = x_730;
        let x_732 : vec4<f32> = u_xlat5;
        let x_735 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_738 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_732.x, x_732.y, x_732.x, x_732.y) * vec4<f32>(x_735.x, x_735.y, x_735.x, x_735.y)) + vec4<f32>(x_738.y, x_738.w, x_738.x, x_738.w));
        let x_741 : vec4<f32> = u_xlat5;
        let x_744 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_747 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_741.x, x_741.y) * vec2<f32>(x_744.x, x_744.y)) + vec2<f32>(x_747.z, x_747.w));
        let x_751 : f32 = u_xlat7.y;
        u_xlat8.w = x_751;
        let x_753 : vec4<f32> = u_xlat8;
        let x_754 : vec2<f32> = vec2<f32>(x_753.y, x_753.z);
        let x_755 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_755.x, x_754.x, x_755.z, x_754.y);
        let x_757 : vec4<f32> = u_xlat5;
        let x_760 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_763 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_757.x, x_757.y, x_757.x, x_757.y) * vec4<f32>(x_760.x, x_760.y, x_760.x, x_760.y)) + vec4<f32>(x_763.x, x_763.y, x_763.z, x_763.y));
        let x_766 : vec4<f32> = u_xlat5;
        let x_769 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_772 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_766.x, x_766.y, x_766.x, x_766.y) * vec4<f32>(x_769.x, x_769.y, x_769.x, x_769.y)) + vec4<f32>(x_772.w, x_772.y, x_772.w, x_772.z));
        let x_775 : vec4<f32> = u_xlat5;
        let x_778 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_781 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_775.x, x_775.y, x_775.x, x_775.y) * vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.y)) + vec4<f32>(x_781.x, x_781.w, x_781.z, x_781.w));
        let x_785 : vec4<f32> = u_xlat6;
        let x_787 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_785.x, x_785.x, x_785.x, x_785.y) * vec4<f32>(x_787.z, x_787.w, x_787.y, x_787.z));
        let x_791 : vec4<f32> = u_xlat6;
        let x_793 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_791.y, x_791.y, x_791.z, x_791.z) * x_793);
        let x_796 : f32 = u_xlat6.z;
        let x_798 : f32 = u_xlat11.y;
        u_xlat57 = (x_796 * x_798);
        let x_801 : vec4<f32> = u_xlat9;
        let x_802 : vec2<f32> = vec2<f32>(x_801.x, x_801.y);
        let x_804 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_802.x, x_802.y, x_804);
        let x_811 : vec3<f32> = txVec4;
        let x_813 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_811.xy, x_811.z);
        u_xlat1.x = x_813;
        let x_816 : vec4<f32> = u_xlat9;
        let x_817 : vec2<f32> = vec2<f32>(x_816.z, x_816.w);
        let x_819 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_827 : vec3<f32> = txVec5;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
        u_xlat59 = x_829;
        let x_830 : f32 = u_xlat59;
        let x_832 : f32 = u_xlat12.y;
        u_xlat59 = (x_830 * x_832);
        let x_835 : f32 = u_xlat12.x;
        let x_837 : f32 = u_xlat1.x;
        let x_839 : f32 = u_xlat59;
        u_xlat1.x = ((x_835 * x_837) + x_839);
        let x_843 : vec2<f32> = u_xlat43;
        let x_845 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_843.x, x_843.y, x_845);
        let x_852 : vec3<f32> = txVec6;
        let x_854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_852.xy, x_852.z);
        u_xlat59 = x_854;
        let x_856 : f32 = u_xlat12.z;
        let x_857 : f32 = u_xlat59;
        let x_860 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_856 * x_857) + x_860);
        let x_864 : vec4<f32> = u_xlat8;
        let x_865 : vec2<f32> = vec2<f32>(x_864.x, x_864.y);
        let x_867 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_865.x, x_865.y, x_867);
        let x_874 : vec3<f32> = txVec7;
        let x_876 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_874.xy, x_874.z);
        u_xlat59 = x_876;
        let x_878 : f32 = u_xlat12.w;
        let x_879 : f32 = u_xlat59;
        let x_882 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_878 * x_879) + x_882);
        let x_886 : vec4<f32> = u_xlat10;
        let x_887 : vec2<f32> = vec2<f32>(x_886.x, x_886.y);
        let x_889 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_887.x, x_887.y, x_889);
        let x_896 : vec3<f32> = txVec8;
        let x_898 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_896.xy, x_896.z);
        u_xlat59 = x_898;
        let x_900 : f32 = u_xlat13.x;
        let x_901 : f32 = u_xlat59;
        let x_904 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_900 * x_901) + x_904);
        let x_908 : vec4<f32> = u_xlat10;
        let x_909 : vec2<f32> = vec2<f32>(x_908.z, x_908.w);
        let x_911 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_909.x, x_909.y, x_911);
        let x_918 : vec3<f32> = txVec9;
        let x_920 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_918.xy, x_918.z);
        u_xlat59 = x_920;
        let x_922 : f32 = u_xlat13.y;
        let x_923 : f32 = u_xlat59;
        let x_926 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_922 * x_923) + x_926);
        let x_930 : vec4<f32> = u_xlat8;
        let x_931 : vec2<f32> = vec2<f32>(x_930.z, x_930.w);
        let x_933 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_931.x, x_931.y, x_933);
        let x_940 : vec3<f32> = txVec10;
        let x_942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_940.xy, x_940.z);
        u_xlat59 = x_942;
        let x_944 : f32 = u_xlat13.z;
        let x_945 : f32 = u_xlat59;
        let x_948 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_944 * x_945) + x_948);
        let x_952 : vec4<f32> = u_xlat7;
        let x_953 : vec2<f32> = vec2<f32>(x_952.x, x_952.y);
        let x_955 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_953.x, x_953.y, x_955);
        let x_962 : vec3<f32> = txVec11;
        let x_964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_962.xy, x_962.z);
        u_xlat59 = x_964;
        let x_966 : f32 = u_xlat13.w;
        let x_967 : f32 = u_xlat59;
        let x_970 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_966 * x_967) + x_970);
        let x_974 : vec4<f32> = u_xlat7;
        let x_975 : vec2<f32> = vec2<f32>(x_974.z, x_974.w);
        let x_977 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_975.x, x_975.y, x_977);
        let x_984 : vec3<f32> = txVec12;
        let x_986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_984.xy, x_984.z);
        u_xlat59 = x_986;
        let x_987 : f32 = u_xlat57;
        let x_988 : f32 = u_xlat59;
        let x_991 : f32 = u_xlat1.x;
        u_xlat19 = ((x_987 * x_988) + x_991);
      } else {
        let x_994 : vec4<f32> = u_xlat3;
        let x_997 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1000 : vec2<f32> = ((vec2<f32>(x_994.x, x_994.y) * vec2<f32>(x_997.z, x_997.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1001 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1001.w);
        let x_1003 : vec4<f32> = u_xlat5;
        let x_1005 : vec2<f32> = floor(vec2<f32>(x_1003.x, x_1003.y));
        let x_1006 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1005.x, x_1005.y, x_1006.z, x_1006.w);
        let x_1008 : vec4<f32> = u_xlat3;
        let x_1011 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1014 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.z, x_1011.w)) + -(vec2<f32>(x_1014.x, x_1014.y)));
        let x_1018 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1018.x, x_1018.x, x_1018.y, x_1018.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1021 : vec4<f32> = u_xlat6;
        let x_1023 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1021.x, x_1021.x, x_1021.z, x_1021.z) * vec4<f32>(x_1023.x, x_1023.x, x_1023.z, x_1023.z));
        let x_1026 : vec4<f32> = u_xlat7;
        let x_1030 : vec2<f32> = (vec2<f32>(x_1026.y, x_1026.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1031.x, x_1030.x, x_1031.z, x_1030.y);
        let x_1033 : vec4<f32> = u_xlat7;
        let x_1036 : vec2<f32> = u_xlat43;
        let x_1038 : vec2<f32> = ((vec2<f32>(x_1033.x, x_1033.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1036));
        let x_1039 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1038.x, x_1039.y, x_1038.y, x_1039.w);
        let x_1041 : vec2<f32> = u_xlat43;
        let x_1043 : vec2<f32> = (-(x_1041) + vec2<f32>(1.0f, 1.0f));
        let x_1044 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1046 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1046, vec2<f32>(0.0f, 0.0f));
        let x_1048 : vec2<f32> = u_xlat45;
        let x_1050 : vec2<f32> = u_xlat45;
        let x_1052 : vec4<f32> = u_xlat7;
        let x_1054 : vec2<f32> = ((-(x_1048) * x_1050) + vec2<f32>(x_1052.x, x_1052.y));
        let x_1055 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1054.x, x_1054.y, x_1055.z, x_1055.w);
        let x_1057 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1057, vec2<f32>(0.0f, 0.0f));
        let x_1060 : vec2<f32> = u_xlat45;
        let x_1062 : vec2<f32> = u_xlat45;
        let x_1064 : vec4<f32> = u_xlat6;
        let x_1066 : vec2<f32> = ((-(x_1060) * x_1062) + vec2<f32>(x_1064.y, x_1064.w));
        let x_1067 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1066.x, x_1067.y, x_1066.y);
        let x_1069 : vec4<f32> = u_xlat7;
        let x_1072 : vec2<f32> = (vec2<f32>(x_1069.x, x_1069.y) + vec2<f32>(2.0f, 2.0f));
        let x_1073 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1075 : vec3<f32> = u_xlat25;
        let x_1077 : vec2<f32> = (vec2<f32>(x_1075.x, x_1075.z) + vec2<f32>(2.0f, 2.0f));
        let x_1078 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1078.x, x_1077.x, x_1078.z, x_1077.y);
        let x_1081 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1081 * 0.081632003f);
        let x_1085 : vec4<f32> = u_xlat6;
        let x_1088 : vec3<f32> = (vec3<f32>(x_1085.z, x_1085.x, x_1085.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1089 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
        let x_1091 : vec4<f32> = u_xlat7;
        let x_1094 : vec2<f32> = (vec2<f32>(x_1091.x, x_1091.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1095 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1098 : f32 = u_xlat10.y;
        u_xlat9.x = x_1098;
        let x_1100 : vec2<f32> = u_xlat43;
        let x_1107 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1108 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1108.x, x_1107.x, x_1108.z, x_1107.y);
        let x_1110 : vec2<f32> = u_xlat43;
        let x_1114 : vec2<f32> = ((vec2<f32>(x_1110.x, x_1110.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1115 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1114.x, x_1115.y, x_1114.y, x_1115.w);
        let x_1118 : f32 = u_xlat6.x;
        u_xlat7.y = x_1118;
        let x_1121 : f32 = u_xlat8.y;
        u_xlat7.w = x_1121;
        let x_1123 : vec4<f32> = u_xlat7;
        let x_1124 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1123 + x_1124);
        let x_1126 : vec2<f32> = u_xlat43;
        let x_1129 : vec2<f32> = ((vec2<f32>(x_1126.y, x_1126.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1130 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1130.x, x_1129.x, x_1130.z, x_1129.y);
        let x_1132 : vec2<f32> = u_xlat43;
        let x_1135 : vec2<f32> = ((vec2<f32>(x_1132.y, x_1132.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1136 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1135.x, x_1136.y, x_1135.y, x_1136.w);
        let x_1139 : f32 = u_xlat6.y;
        u_xlat8.y = x_1139;
        let x_1141 : vec4<f32> = u_xlat8;
        let x_1142 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1141 + x_1142);
        let x_1144 : vec4<f32> = u_xlat7;
        let x_1145 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1144 / x_1145);
        let x_1147 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1147 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1153 : vec4<f32> = u_xlat8;
        let x_1154 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1153 / x_1154);
        let x_1156 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1156 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1161 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1158.w, x_1158.x, x_1158.y, x_1158.z) * vec4<f32>(x_1161.x, x_1161.x, x_1161.x, x_1161.x));
        let x_1164 : vec4<f32> = u_xlat8;
        let x_1167 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1164.x, x_1164.w, x_1164.y, x_1164.z) * vec4<f32>(x_1167.y, x_1167.y, x_1167.y, x_1167.y));
        let x_1170 : vec4<f32> = u_xlat7;
        let x_1171 : vec3<f32> = vec3<f32>(x_1170.y, x_1170.z, x_1170.w);
        let x_1172 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1171.z);
        let x_1175 : f32 = u_xlat8.x;
        u_xlat10.y = x_1175;
        let x_1177 : vec4<f32> = u_xlat5;
        let x_1180 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1183 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y) * vec4<f32>(x_1180.x, x_1180.y, x_1180.x, x_1180.y)) + vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1183.y));
        let x_1186 : vec4<f32> = u_xlat5;
        let x_1189 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1192 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1186.x, x_1186.y) * vec2<f32>(x_1189.x, x_1189.y)) + vec2<f32>(x_1192.w, x_1192.y));
        let x_1196 : f32 = u_xlat10.y;
        u_xlat7.y = x_1196;
        let x_1199 : f32 = u_xlat8.z;
        u_xlat10.y = x_1199;
        let x_1201 : vec4<f32> = u_xlat5;
        let x_1204 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1207 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.y) * vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.y)) + vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1207.y));
        let x_1210 : vec4<f32> = u_xlat5;
        let x_1213 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1216 : vec4<f32> = u_xlat10;
        let x_1218 : vec2<f32> = ((vec2<f32>(x_1210.x, x_1210.y) * vec2<f32>(x_1213.x, x_1213.y)) + vec2<f32>(x_1216.w, x_1216.y));
        let x_1219 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1218.x, x_1218.y, x_1219.z, x_1219.w);
        let x_1222 : f32 = u_xlat10.y;
        u_xlat7.z = x_1222;
        let x_1225 : vec4<f32> = u_xlat5;
        let x_1228 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1231 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.y) * vec4<f32>(x_1228.x, x_1228.y, x_1228.x, x_1228.y)) + vec4<f32>(x_1231.x, x_1231.y, x_1231.x, x_1231.z));
        let x_1235 : f32 = u_xlat8.w;
        u_xlat10.y = x_1235;
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1241 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y) * vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y)) + vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1244.y));
        let x_1248 : vec4<f32> = u_xlat5;
        let x_1251 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(x_1251.x, x_1251.y)) + vec2<f32>(x_1254.w, x_1254.y));
        let x_1258 : f32 = u_xlat10.y;
        u_xlat7.w = x_1258;
        let x_1261 : vec4<f32> = u_xlat5;
        let x_1264 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1261.x, x_1261.y) * vec2<f32>(x_1264.x, x_1264.y)) + vec2<f32>(x_1267.x, x_1267.w));
        let x_1270 : vec4<f32> = u_xlat10;
        let x_1271 : vec3<f32> = vec3<f32>(x_1270.x, x_1270.z, x_1270.w);
        let x_1272 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1271.x, x_1272.y, x_1271.y, x_1271.z);
        let x_1274 : vec4<f32> = u_xlat5;
        let x_1277 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1274.x, x_1274.y, x_1274.x, x_1274.y) * vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y)) + vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1280.y));
        let x_1284 : vec4<f32> = u_xlat5;
        let x_1287 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1290 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1284.x, x_1284.y) * vec2<f32>(x_1287.x, x_1287.y)) + vec2<f32>(x_1290.w, x_1290.y));
        let x_1294 : f32 = u_xlat7.x;
        u_xlat8.x = x_1294;
        let x_1296 : vec4<f32> = u_xlat5;
        let x_1299 : vec4<f32> = x_155.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat8;
        let x_1304 : vec2<f32> = ((vec2<f32>(x_1296.x, x_1296.y) * vec2<f32>(x_1299.x, x_1299.y)) + vec2<f32>(x_1302.x, x_1302.y));
        let x_1305 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1304.x, x_1304.y, x_1305.z, x_1305.w);
        let x_1308 : vec4<f32> = u_xlat6;
        let x_1310 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1308.x, x_1308.x, x_1308.x, x_1308.x) * x_1310);
        let x_1313 : vec4<f32> = u_xlat6;
        let x_1315 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1313.y, x_1313.y, x_1313.y, x_1313.y) * x_1315);
        let x_1318 : vec4<f32> = u_xlat6;
        let x_1320 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1318.z, x_1318.z, x_1318.z, x_1318.z) * x_1320);
        let x_1322 : vec4<f32> = u_xlat6;
        let x_1324 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1322.w, x_1322.w, x_1322.w, x_1322.w) * x_1324);
        let x_1327 : vec4<f32> = u_xlat11;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.x, x_1327.y);
        let x_1330 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec13;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1337.xy, x_1337.z);
        u_xlat57 = x_1339;
        let x_1341 : vec4<f32> = u_xlat11;
        let x_1342 : vec2<f32> = vec2<f32>(x_1341.z, x_1341.w);
        let x_1344 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec14;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1351.xy, x_1351.z);
        u_xlat1.x = x_1353;
        let x_1356 : f32 = u_xlat1.x;
        let x_1358 : f32 = u_xlat16.y;
        u_xlat1.x = (x_1356 * x_1358);
        let x_1362 : f32 = u_xlat16.x;
        let x_1363 : f32 = u_xlat57;
        let x_1366 : f32 = u_xlat1.x;
        u_xlat57 = ((x_1362 * x_1363) + x_1366);
        let x_1369 : vec2<f32> = u_xlat43;
        let x_1371 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1369.x, x_1369.y, x_1371);
        let x_1378 : vec3<f32> = txVec15;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat1.x = x_1380;
        let x_1383 : f32 = u_xlat16.z;
        let x_1385 : f32 = u_xlat1.x;
        let x_1387 : f32 = u_xlat57;
        u_xlat57 = ((x_1383 * x_1385) + x_1387);
        let x_1390 : vec4<f32> = u_xlat14;
        let x_1391 : vec2<f32> = vec2<f32>(x_1390.x, x_1390.y);
        let x_1393 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1391.x, x_1391.y, x_1393);
        let x_1400 : vec3<f32> = txVec16;
        let x_1402 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1400.xy, x_1400.z);
        u_xlat1.x = x_1402;
        let x_1405 : f32 = u_xlat16.w;
        let x_1407 : f32 = u_xlat1.x;
        let x_1409 : f32 = u_xlat57;
        u_xlat57 = ((x_1405 * x_1407) + x_1409);
        let x_1412 : vec4<f32> = u_xlat12;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec17;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat1.x = x_1424;
        let x_1427 : f32 = u_xlat17.x;
        let x_1429 : f32 = u_xlat1.x;
        let x_1431 : f32 = u_xlat57;
        u_xlat57 = ((x_1427 * x_1429) + x_1431);
        let x_1434 : vec4<f32> = u_xlat12;
        let x_1435 : vec2<f32> = vec2<f32>(x_1434.z, x_1434.w);
        let x_1437 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1435.x, x_1435.y, x_1437);
        let x_1444 : vec3<f32> = txVec18;
        let x_1446 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1444.xy, x_1444.z);
        u_xlat1.x = x_1446;
        let x_1449 : f32 = u_xlat17.y;
        let x_1451 : f32 = u_xlat1.x;
        let x_1453 : f32 = u_xlat57;
        u_xlat57 = ((x_1449 * x_1451) + x_1453);
        let x_1456 : vec4<f32> = u_xlat13;
        let x_1457 : vec2<f32> = vec2<f32>(x_1456.x, x_1456.y);
        let x_1459 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1457.x, x_1457.y, x_1459);
        let x_1466 : vec3<f32> = txVec19;
        let x_1468 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1466.xy, x_1466.z);
        u_xlat1.x = x_1468;
        let x_1471 : f32 = u_xlat17.z;
        let x_1473 : f32 = u_xlat1.x;
        let x_1475 : f32 = u_xlat57;
        u_xlat57 = ((x_1471 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat14;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec20;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat1.x = x_1490;
        let x_1493 : f32 = u_xlat17.w;
        let x_1495 : f32 = u_xlat1.x;
        let x_1497 : f32 = u_xlat57;
        u_xlat57 = ((x_1493 * x_1495) + x_1497);
        let x_1500 : vec4<f32> = u_xlat15;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.x, x_1500.y);
        let x_1503 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec21;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1510.xy, x_1510.z);
        u_xlat1.x = x_1512;
        let x_1515 : f32 = u_xlat18.x;
        let x_1517 : f32 = u_xlat1.x;
        let x_1519 : f32 = u_xlat57;
        u_xlat57 = ((x_1515 * x_1517) + x_1519);
        let x_1522 : vec4<f32> = u_xlat15;
        let x_1523 : vec2<f32> = vec2<f32>(x_1522.z, x_1522.w);
        let x_1525 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1523.x, x_1523.y, x_1525);
        let x_1532 : vec3<f32> = txVec22;
        let x_1534 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1532.xy, x_1532.z);
        u_xlat1.x = x_1534;
        let x_1537 : f32 = u_xlat18.y;
        let x_1539 : f32 = u_xlat1.x;
        let x_1541 : f32 = u_xlat57;
        u_xlat57 = ((x_1537 * x_1539) + x_1541);
        let x_1544 : vec2<f32> = u_xlat26;
        let x_1546 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec23;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1553.xy, x_1553.z);
        u_xlat1.x = x_1555;
        let x_1558 : f32 = u_xlat18.z;
        let x_1560 : f32 = u_xlat1.x;
        let x_1562 : f32 = u_xlat57;
        u_xlat57 = ((x_1558 * x_1560) + x_1562);
        let x_1565 : vec2<f32> = u_xlat51;
        let x_1567 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec24;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1574.xy, x_1574.z);
        u_xlat1.x = x_1576;
        let x_1579 : f32 = u_xlat18.w;
        let x_1581 : f32 = u_xlat1.x;
        let x_1583 : f32 = u_xlat57;
        u_xlat57 = ((x_1579 * x_1581) + x_1583);
        let x_1586 : vec4<f32> = u_xlat10;
        let x_1587 : vec2<f32> = vec2<f32>(x_1586.x, x_1586.y);
        let x_1589 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1587.x, x_1587.y, x_1589);
        let x_1596 : vec3<f32> = txVec25;
        let x_1598 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1596.xy, x_1596.z);
        u_xlat1.x = x_1598;
        let x_1601 : f32 = u_xlat6.x;
        let x_1603 : f32 = u_xlat1.x;
        let x_1605 : f32 = u_xlat57;
        u_xlat57 = ((x_1601 * x_1603) + x_1605);
        let x_1608 : vec4<f32> = u_xlat10;
        let x_1609 : vec2<f32> = vec2<f32>(x_1608.z, x_1608.w);
        let x_1611 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1609.x, x_1609.y, x_1611);
        let x_1618 : vec3<f32> = txVec26;
        let x_1620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1618.xy, x_1618.z);
        u_xlat1.x = x_1620;
        let x_1623 : f32 = u_xlat6.y;
        let x_1625 : f32 = u_xlat1.x;
        let x_1627 : f32 = u_xlat57;
        u_xlat57 = ((x_1623 * x_1625) + x_1627);
        let x_1630 : vec2<f32> = u_xlat46;
        let x_1632 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec27;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1639.xy, x_1639.z);
        u_xlat1.x = x_1641;
        let x_1644 : f32 = u_xlat6.z;
        let x_1646 : f32 = u_xlat1.x;
        let x_1648 : f32 = u_xlat57;
        u_xlat57 = ((x_1644 * x_1646) + x_1648);
        let x_1651 : vec4<f32> = u_xlat5;
        let x_1652 : vec2<f32> = vec2<f32>(x_1651.x, x_1651.y);
        let x_1654 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1652.x, x_1652.y, x_1654);
        let x_1661 : vec3<f32> = txVec28;
        let x_1663 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1661.xy, x_1661.z);
        u_xlat1.x = x_1663;
        let x_1666 : f32 = u_xlat6.w;
        let x_1668 : f32 = u_xlat1.x;
        let x_1670 : f32 = u_xlat57;
        u_xlat19 = ((x_1666 * x_1668) + x_1670);
      }
    }
  } else {
    let x_1674 : vec4<f32> = u_xlat3;
    let x_1675 : vec2<f32> = vec2<f32>(x_1674.x, x_1674.y);
    let x_1677 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1675.x, x_1675.y, x_1677);
    let x_1684 : vec3<f32> = txVec29;
    let x_1686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1684.xy, x_1684.z);
    u_xlat19 = x_1686;
  }
  let x_1688 : f32 = x_155.x_MainLightShadowParams.x;
  u_xlat57 = (-(x_1688) + 1.0f);
  let x_1691 : f32 = u_xlat19;
  let x_1693 : f32 = x_155.x_MainLightShadowParams.x;
  let x_1695 : f32 = u_xlat57;
  u_xlat19 = ((x_1691 * x_1693) + x_1695);
  let x_1698 : f32 = u_xlat3.z;
  u_xlatb57 = (0.0f >= x_1698);
  let x_1702 : f32 = u_xlat3.z;
  u_xlatb1 = (x_1702 >= 1.0f);
  let x_1704 : bool = u_xlatb57;
  let x_1705 : bool = u_xlatb1;
  u_xlatb57 = (x_1704 | x_1705);
  let x_1707 : bool = u_xlatb57;
  let x_1708 : f32 = u_xlat19;
  u_xlat19 = select(x_1708, 1.0f, x_1707);
  let x_1710 : vec3<f32> = vs_TEXCOORD1;
  let x_1713 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1715 : vec3<f32> = (x_1710 + -(x_1713));
  let x_1716 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1715.x, x_1715.y, x_1715.z, x_1716.w);
  let x_1718 : vec4<f32> = u_xlat3;
  let x_1720 : vec4<f32> = u_xlat3;
  u_xlat57 = dot(vec3<f32>(x_1718.x, x_1718.y, x_1718.z), vec3<f32>(x_1720.x, x_1720.y, x_1720.z));
  let x_1723 : f32 = u_xlat57;
  let x_1725 : f32 = x_155.x_MainLightShadowParams.z;
  let x_1728 : f32 = x_155.x_MainLightShadowParams.w;
  u_xlat57 = ((x_1723 * x_1725) + x_1728);
  let x_1730 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1730, 0.0f, 1.0f);
  let x_1732 : f32 = u_xlat19;
  u_xlat1.x = (-(x_1732) + 1.0f);
  let x_1736 : f32 = u_xlat57;
  let x_1738 : f32 = u_xlat1.x;
  let x_1740 : f32 = u_xlat19;
  u_xlat19 = ((x_1736 * x_1738) + x_1740);
  let x_1748 : f32 = x_1746.x_MainLightCookieTextureFormat;
  u_xlatb57 = !((x_1748 == -1.0f));
  let x_1750 : bool = u_xlatb57;
  if (x_1750) {
    let x_1753 : vec3<f32> = vs_TEXCOORD1;
    let x_1756 : vec4<f32> = x_1746.x_MainLightWorldToLight[1i];
    let x_1758 : vec2<f32> = (vec2<f32>(x_1753.y, x_1753.y) * vec2<f32>(x_1756.x, x_1756.y));
    let x_1759 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1758.x, x_1758.y, x_1759.z, x_1759.w);
    let x_1762 : vec4<f32> = x_1746.x_MainLightWorldToLight[0i];
    let x_1764 : vec3<f32> = vs_TEXCOORD1;
    let x_1767 : vec4<f32> = u_xlat3;
    let x_1769 : vec2<f32> = ((vec2<f32>(x_1762.x, x_1762.y) * vec2<f32>(x_1764.x, x_1764.x)) + vec2<f32>(x_1767.x, x_1767.y));
    let x_1770 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1769.x, x_1769.y, x_1770.z, x_1770.w);
    let x_1773 : vec4<f32> = x_1746.x_MainLightWorldToLight[2i];
    let x_1775 : vec3<f32> = vs_TEXCOORD1;
    let x_1778 : vec4<f32> = u_xlat3;
    let x_1780 : vec2<f32> = ((vec2<f32>(x_1773.x, x_1773.y) * vec2<f32>(x_1775.z, x_1775.z)) + vec2<f32>(x_1778.x, x_1778.y));
    let x_1781 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1780.x, x_1780.y, x_1781.z, x_1781.w);
    let x_1783 : vec4<f32> = u_xlat3;
    let x_1786 : vec4<f32> = x_1746.x_MainLightWorldToLight[3i];
    let x_1788 : vec2<f32> = (vec2<f32>(x_1783.x, x_1783.y) + vec2<f32>(x_1786.x, x_1786.y));
    let x_1789 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1788.x, x_1788.y, x_1789.z, x_1789.w);
    let x_1791 : vec4<f32> = u_xlat3;
    let x_1794 : vec2<f32> = ((vec2<f32>(x_1791.x, x_1791.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1795 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1794.x, x_1794.y, x_1795.z, x_1795.w);
    let x_1802 : vec4<f32> = u_xlat3;
    let x_1805 : f32 = x_27.x_GlobalMipBias.x;
    let x_1806 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1802.x, x_1802.y), x_1805);
    u_xlat3 = x_1806;
    let x_1811 : f32 = x_1746.x_MainLightCookieTextureFormat;
    let x_1813 : f32 = x_1746.x_MainLightCookieTextureFormat;
    let x_1815 : f32 = x_1746.x_MainLightCookieTextureFormat;
    let x_1817 : f32 = x_1746.x_MainLightCookieTextureFormat;
    let x_1818 : vec4<f32> = vec4<f32>(x_1811, x_1813, x_1815, x_1817);
    let x_1825 : vec4<bool> = (vec4<f32>(x_1818.x, x_1818.y, x_1818.z, x_1818.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1825.x, x_1825.y);
    let x_1828 : bool = u_xlatb5.y;
    if (x_1828) {
      let x_1833 : f32 = u_xlat3.w;
      x_1829 = x_1833;
    } else {
      let x_1836 : f32 = u_xlat3.x;
      x_1829 = x_1836;
    }
    let x_1837 : f32 = x_1829;
    u_xlat57 = x_1837;
    let x_1839 : bool = u_xlatb5.x;
    if (x_1839) {
      let x_1843 : vec4<f32> = u_xlat3;
      x_1840 = vec3<f32>(x_1843.x, x_1843.y, x_1843.z);
    } else {
      let x_1846 : f32 = u_xlat57;
      x_1840 = vec3<f32>(x_1846, x_1846, x_1846);
    }
    let x_1848 : vec3<f32> = x_1840;
    let x_1849 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1855 : vec4<f32> = u_xlat3;
  let x_1858 : vec4<f32> = x_27.x_MainLightColor;
  let x_1860 : vec3<f32> = (vec3<f32>(x_1855.x, x_1855.y, x_1855.z) * vec3<f32>(x_1858.x, x_1858.y, x_1858.z));
  let x_1861 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1860.x, x_1860.y, x_1860.z, x_1861.w);
  let x_1863 : f32 = u_xlat19;
  let x_1865 : f32 = x_351.unity_LightData.z;
  u_xlat19 = (x_1863 * x_1865);
  let x_1867 : f32 = u_xlat19;
  let x_1869 : vec4<f32> = u_xlat3;
  let x_1871 : vec3<f32> = (vec3<f32>(x_1867, x_1867, x_1867) * vec3<f32>(x_1869.x, x_1869.y, x_1869.z));
  let x_1872 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1871.x, x_1871.y, x_1871.z, x_1872.w);
  let x_1874 : vec4<f32> = u_xlat2;
  let x_1877 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat19 = dot(vec3<f32>(x_1874.x, x_1874.y, x_1874.z), vec3<f32>(x_1877.x, x_1877.y, x_1877.z));
  let x_1880 : f32 = u_xlat19;
  u_xlat19 = clamp(x_1880, 0.0f, 1.0f);
  let x_1882 : f32 = u_xlat19;
  let x_1884 : vec4<f32> = u_xlat3;
  let x_1886 : vec3<f32> = (vec3<f32>(x_1882, x_1882, x_1882) * vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1886.x, x_1886.y, x_1886.z, x_1887.w);
  let x_1889 : vec4<f32> = u_xlat1;
  let x_1891 : vec4<f32> = u_xlat3;
  let x_1893 : vec3<f32> = (vec3<f32>(x_1889.y, x_1889.z, x_1889.w) * vec3<f32>(x_1891.x, x_1891.y, x_1891.z));
  let x_1894 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1893.x, x_1893.y, x_1893.z, x_1894.w);
  let x_1896 : vec4<f32> = u_xlat0;
  let x_1898 : vec4<f32> = u_xlat3;
  let x_1900 : vec3<f32> = (vec3<f32>(x_1896.x, x_1896.x, x_1896.x) * vec3<f32>(x_1898.x, x_1898.y, x_1898.z));
  let x_1901 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1901.w);
  let x_1904 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1906 : f32 = x_351.unity_LightData.y;
  u_xlat19 = min(x_1904, x_1906);
  let x_1908 : f32 = u_xlat19;
  u_xlatu19 = bitcast<u32>(i32(x_1908));
  let x_1912 : f32 = x_1746.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1914 : f32 = x_1746.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1916 : f32 = x_1746.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1918 : f32 = x_1746.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1919 : vec4<f32> = vec4<f32>(x_1912, x_1914, x_1916, x_1918);
  let x_1925 : vec4<bool> = (vec4<f32>(x_1919.x, x_1919.y, x_1919.z, x_1919.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_1925.x, x_1925.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1936 : u32 = u_xlatu_loop_1;
    let x_1937 : u32 = u_xlatu19;
    if ((x_1936 < x_1937)) {
    } else {
      break;
    }
    let x_1940 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_1940 >> 2u);
    let x_1943 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_1943 & 3u));
    let x_1946 : u32 = u_xlatu1;
    let x_1949 : vec4<f32> = x_351.unity_LightIndices[bitcast<i32>(x_1946)];
    let x_1959 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1964 : vec4<u32> = indexable[x_1959];
    u_xlat1.x = dot(x_1949, bitcast<vec4<f32>>(x_1964));
    let x_1969 : f32 = u_xlat1.x;
    u_xlatu1 = bitcast<u32>(i32(x_1969));
    let x_1972 : vec3<f32> = vs_TEXCOORD1;
    let x_1984 : u32 = u_xlatu1;
    let x_1987 : vec4<f32> = x_1983.x_AdditionalLightsPosition[bitcast<i32>(x_1984)];
    let x_1990 : u32 = u_xlatu1;
    let x_1993 : vec4<f32> = x_1983.x_AdditionalLightsPosition[bitcast<i32>(x_1990)];
    let x_1995 : vec3<f32> = ((-(x_1972) * vec3<f32>(x_1987.w, x_1987.w, x_1987.w)) + vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
    let x_1996 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1995.x, x_1995.y, x_1995.z, x_1996.w);
    let x_1998 : vec4<f32> = u_xlat7;
    let x_2000 : vec4<f32> = u_xlat7;
    u_xlat59 = dot(vec3<f32>(x_1998.x, x_1998.y, x_1998.z), vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
    let x_2003 : f32 = u_xlat59;
    u_xlat59 = max(x_2003, 6.10351562e-05f);
    let x_2007 : f32 = u_xlat59;
    u_xlat60 = inverseSqrt(x_2007);
    let x_2009 : f32 = u_xlat60;
    let x_2011 : vec4<f32> = u_xlat7;
    let x_2013 : vec3<f32> = (vec3<f32>(x_2009, x_2009, x_2009) * vec3<f32>(x_2011.x, x_2011.y, x_2011.z));
    let x_2014 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
    let x_2016 : f32 = u_xlat59;
    u_xlat60 = (1.0f / x_2016);
    let x_2018 : f32 = u_xlat59;
    let x_2019 : u32 = u_xlatu1;
    let x_2022 : f32 = x_1983.x_AdditionalLightsAttenuation[bitcast<i32>(x_2019)].x;
    u_xlat59 = (x_2018 * x_2022);
    let x_2024 : f32 = u_xlat59;
    let x_2026 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2024) * x_2026) + 1.0f);
    let x_2029 : f32 = u_xlat59;
    u_xlat59 = max(x_2029, 0.0f);
    let x_2031 : f32 = u_xlat59;
    let x_2032 : f32 = u_xlat59;
    u_xlat59 = (x_2031 * x_2032);
    let x_2034 : f32 = u_xlat59;
    let x_2035 : f32 = u_xlat60;
    u_xlat59 = (x_2034 * x_2035);
    let x_2037 : u32 = u_xlatu1;
    let x_2040 : vec4<f32> = x_1983.x_AdditionalLightsSpotDir[bitcast<i32>(x_2037)];
    let x_2042 : vec4<f32> = u_xlat7;
    u_xlat60 = dot(vec3<f32>(x_2040.x, x_2040.y, x_2040.z), vec3<f32>(x_2042.x, x_2042.y, x_2042.z));
    let x_2045 : f32 = u_xlat60;
    let x_2046 : u32 = u_xlatu1;
    let x_2049 : f32 = x_1983.x_AdditionalLightsAttenuation[bitcast<i32>(x_2046)].z;
    let x_2051 : u32 = u_xlatu1;
    let x_2054 : f32 = x_1983.x_AdditionalLightsAttenuation[bitcast<i32>(x_2051)].w;
    u_xlat60 = ((x_2045 * x_2049) + x_2054);
    let x_2056 : f32 = u_xlat60;
    u_xlat60 = clamp(x_2056, 0.0f, 1.0f);
    let x_2058 : f32 = u_xlat60;
    let x_2059 : f32 = u_xlat60;
    u_xlat60 = (x_2058 * x_2059);
    let x_2061 : f32 = u_xlat59;
    let x_2062 : f32 = u_xlat60;
    u_xlat59 = (x_2061 * x_2062);
    let x_2065 : u32 = u_xlatu1;
    u_xlatu60 = (x_2065 >> 5u);
    let x_2068 : u32 = u_xlatu1;
    u_xlati61 = (1i << bitcast<u32>((bitcast<i32>(x_2068) & 31i)));
    let x_2074 : i32 = u_xlati61;
    let x_2076 : u32 = u_xlatu60;
    let x_2079 : f32 = x_1746.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2076)].el;
    u_xlati60 = bitcast<i32>((bitcast<u32>(x_2074) & bitcast<u32>(x_2079)));
    let x_2083 : i32 = u_xlati60;
    if ((x_2083 != 0i)) {
      let x_2093 : u32 = u_xlatu1;
      let x_2096 : f32 = x_2092.x_AdditionalLightsLightTypes[bitcast<i32>(x_2093)].el;
      u_xlati60 = i32(x_2096);
      let x_2098 : i32 = u_xlati60;
      u_xlati61 = select(1i, 0i, (x_2098 != 0i));
      let x_2102 : u32 = u_xlatu1;
      u_xlati43 = (bitcast<i32>(x_2102) << bitcast<u32>(2i));
      let x_2105 : i32 = u_xlati61;
      if ((x_2105 != 0i)) {
        let x_2109 : vec3<f32> = vs_TEXCOORD1;
        let x_2111 : i32 = u_xlati43;
        let x_2114 : i32 = u_xlati43;
        let x_2118 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_2111 + 1i) / 4i)][((x_2114 + 1i) % 4i)];
        let x_2120 : vec3<f32> = (vec3<f32>(x_2109.y, x_2109.y, x_2109.y) * vec3<f32>(x_2118.x, x_2118.y, x_2118.w));
        let x_2121 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
        let x_2123 : i32 = u_xlati43;
        let x_2125 : i32 = u_xlati43;
        let x_2128 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[(x_2123 / 4i)][(x_2125 % 4i)];
        let x_2130 : vec3<f32> = vs_TEXCOORD1;
        let x_2133 : vec4<f32> = u_xlat8;
        let x_2135 : vec3<f32> = ((vec3<f32>(x_2128.x, x_2128.y, x_2128.w) * vec3<f32>(x_2130.x, x_2130.x, x_2130.x)) + vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
        let x_2136 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
        let x_2138 : i32 = u_xlati43;
        let x_2141 : i32 = u_xlati43;
        let x_2145 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_2138 + 2i) / 4i)][((x_2141 + 2i) % 4i)];
        let x_2147 : vec3<f32> = vs_TEXCOORD1;
        let x_2150 : vec4<f32> = u_xlat8;
        let x_2152 : vec3<f32> = ((vec3<f32>(x_2145.x, x_2145.y, x_2145.w) * vec3<f32>(x_2147.z, x_2147.z, x_2147.z)) + vec3<f32>(x_2150.x, x_2150.y, x_2150.z));
        let x_2153 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2152.x, x_2152.y, x_2152.z, x_2153.w);
        let x_2155 : vec4<f32> = u_xlat8;
        let x_2157 : i32 = u_xlati43;
        let x_2160 : i32 = u_xlati43;
        let x_2164 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_2157 + 3i) / 4i)][((x_2160 + 3i) % 4i)];
        let x_2166 : vec3<f32> = (vec3<f32>(x_2155.x, x_2155.y, x_2155.z) + vec3<f32>(x_2164.x, x_2164.y, x_2164.w));
        let x_2167 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2166.x, x_2166.y, x_2166.z, x_2167.w);
        let x_2169 : vec4<f32> = u_xlat8;
        let x_2171 : vec4<f32> = u_xlat8;
        let x_2173 : vec2<f32> = (vec2<f32>(x_2169.x, x_2169.y) / vec2<f32>(x_2171.z, x_2171.z));
        let x_2174 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2173.x, x_2173.y, x_2174.z, x_2174.w);
        let x_2176 : vec4<f32> = u_xlat8;
        let x_2179 : vec2<f32> = ((vec2<f32>(x_2176.x, x_2176.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2180 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2179.x, x_2179.y, x_2180.z, x_2180.w);
        let x_2182 : vec4<f32> = u_xlat8;
        let x_2186 : vec2<f32> = clamp(vec2<f32>(x_2182.x, x_2182.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2187 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2186.x, x_2186.y, x_2187.z, x_2187.w);
        let x_2189 : u32 = u_xlatu1;
        let x_2192 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2189)];
        let x_2194 : vec4<f32> = u_xlat8;
        let x_2197 : u32 = u_xlatu1;
        let x_2200 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2197)];
        let x_2202 : vec2<f32> = ((vec2<f32>(x_2192.x, x_2192.y) * vec2<f32>(x_2194.x, x_2194.y)) + vec2<f32>(x_2200.z, x_2200.w));
        let x_2203 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2202.x, x_2202.y, x_2203.z, x_2203.w);
      } else {
        let x_2207 : i32 = u_xlati60;
        u_xlatb60 = (x_2207 == 1i);
        let x_2209 : bool = u_xlatb60;
        u_xlati60 = select(0i, 1i, x_2209);
        let x_2211 : i32 = u_xlati60;
        if ((x_2211 != 0i)) {
          let x_2215 : vec3<f32> = vs_TEXCOORD1;
          let x_2217 : i32 = u_xlati43;
          let x_2220 : i32 = u_xlati43;
          let x_2224 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_2217 + 1i) / 4i)][((x_2220 + 1i) % 4i)];
          u_xlat46 = (vec2<f32>(x_2215.y, x_2215.y) * vec2<f32>(x_2224.x, x_2224.y));
          let x_2227 : i32 = u_xlati43;
          let x_2229 : i32 = u_xlati43;
          let x_2232 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[(x_2227 / 4i)][(x_2229 % 4i)];
          let x_2234 : vec3<f32> = vs_TEXCOORD1;
          let x_2237 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2232.x, x_2232.y) * vec2<f32>(x_2234.x, x_2234.x)) + x_2237);
          let x_2239 : i32 = u_xlati43;
          let x_2242 : i32 = u_xlati43;
          let x_2246 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_2239 + 2i) / 4i)][((x_2242 + 2i) % 4i)];
          let x_2248 : vec3<f32> = vs_TEXCOORD1;
          let x_2251 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2246.x, x_2246.y) * vec2<f32>(x_2248.z, x_2248.z)) + x_2251);
          let x_2253 : vec2<f32> = u_xlat46;
          let x_2254 : i32 = u_xlati43;
          let x_2257 : i32 = u_xlati43;
          let x_2261 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_2254 + 3i) / 4i)][((x_2257 + 3i) % 4i)];
          u_xlat46 = (x_2253 + vec2<f32>(x_2261.x, x_2261.y));
          let x_2264 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2264 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2267 : vec2<f32> = u_xlat46;
          u_xlat46 = fract(x_2267);
          let x_2269 : u32 = u_xlatu1;
          let x_2272 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2269)];
          let x_2274 : vec2<f32> = u_xlat46;
          let x_2276 : u32 = u_xlatu1;
          let x_2279 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2276)];
          let x_2281 : vec2<f32> = ((vec2<f32>(x_2272.x, x_2272.y) * x_2274) + vec2<f32>(x_2279.z, x_2279.w));
          let x_2282 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2281.x, x_2281.y, x_2282.z, x_2282.w);
        } else {
          let x_2285 : vec3<f32> = vs_TEXCOORD1;
          let x_2287 : i32 = u_xlati43;
          let x_2290 : i32 = u_xlati43;
          let x_2294 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_2287 + 1i) / 4i)][((x_2290 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2285.y, x_2285.y, x_2285.y, x_2285.y) * x_2294);
          let x_2296 : i32 = u_xlati43;
          let x_2298 : i32 = u_xlati43;
          let x_2301 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[(x_2296 / 4i)][(x_2298 % 4i)];
          let x_2302 : vec3<f32> = vs_TEXCOORD1;
          let x_2305 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2301 * vec4<f32>(x_2302.x, x_2302.x, x_2302.x, x_2302.x)) + x_2305);
          let x_2307 : i32 = u_xlati43;
          let x_2310 : i32 = u_xlati43;
          let x_2314 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_2307 + 2i) / 4i)][((x_2310 + 2i) % 4i)];
          let x_2315 : vec3<f32> = vs_TEXCOORD1;
          let x_2318 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2314 * vec4<f32>(x_2315.z, x_2315.z, x_2315.z, x_2315.z)) + x_2318);
          let x_2320 : vec4<f32> = u_xlat9;
          let x_2321 : i32 = u_xlati43;
          let x_2324 : i32 = u_xlati43;
          let x_2328 : vec4<f32> = x_2092.x_AdditionalLightsWorldToLights[((x_2321 + 3i) / 4i)][((x_2324 + 3i) % 4i)];
          u_xlat9 = (x_2320 + x_2328);
          let x_2330 : vec4<f32> = u_xlat9;
          let x_2332 : vec4<f32> = u_xlat9;
          let x_2334 : vec3<f32> = (vec3<f32>(x_2330.x, x_2330.y, x_2330.z) / vec3<f32>(x_2332.w, x_2332.w, x_2332.w));
          let x_2335 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2334.x, x_2334.y, x_2334.z, x_2335.w);
          let x_2337 : vec4<f32> = u_xlat9;
          let x_2339 : vec4<f32> = u_xlat9;
          u_xlat60 = dot(vec3<f32>(x_2337.x, x_2337.y, x_2337.z), vec3<f32>(x_2339.x, x_2339.y, x_2339.z));
          let x_2342 : f32 = u_xlat60;
          u_xlat60 = inverseSqrt(x_2342);
          let x_2344 : f32 = u_xlat60;
          let x_2346 : vec4<f32> = u_xlat9;
          let x_2348 : vec3<f32> = (vec3<f32>(x_2344, x_2344, x_2344) * vec3<f32>(x_2346.x, x_2346.y, x_2346.z));
          let x_2349 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2348.x, x_2348.y, x_2348.z, x_2349.w);
          let x_2351 : vec4<f32> = u_xlat9;
          u_xlat60 = dot(abs(vec3<f32>(x_2351.x, x_2351.y, x_2351.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2356 : f32 = u_xlat60;
          u_xlat60 = max(x_2356, 0.000001f);
          let x_2359 : f32 = u_xlat60;
          u_xlat60 = (1.0f / x_2359);
          let x_2361 : f32 = u_xlat60;
          let x_2363 : vec4<f32> = u_xlat9;
          let x_2365 : vec3<f32> = (vec3<f32>(x_2361, x_2361, x_2361) * vec3<f32>(x_2363.z, x_2363.x, x_2363.y));
          let x_2366 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2365.x, x_2365.y, x_2365.z, x_2366.w);
          let x_2369 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2369);
          let x_2373 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2373, 0.0f, 1.0f);
          let x_2377 : vec4<f32> = u_xlat10;
          let x_2380 : vec4<bool> = (vec4<f32>(x_2377.y, x_2377.z, x_2377.y, x_2377.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb43 = vec2<bool>(x_2380.x, x_2380.y);
          let x_2383 : bool = u_xlatb43.x;
          if (x_2383) {
            let x_2388 : f32 = u_xlat10.x;
            x_2384 = x_2388;
          } else {
            let x_2391 : f32 = u_xlat10.x;
            x_2384 = -(x_2391);
          }
          let x_2393 : f32 = x_2384;
          u_xlat43.x = x_2393;
          let x_2396 : bool = u_xlatb43.y;
          if (x_2396) {
            let x_2401 : f32 = u_xlat10.x;
            x_2397 = x_2401;
          } else {
            let x_2404 : f32 = u_xlat10.x;
            x_2397 = -(x_2404);
          }
          let x_2406 : f32 = x_2397;
          u_xlat43.y = x_2406;
          let x_2408 : vec4<f32> = u_xlat9;
          let x_2410 : f32 = u_xlat60;
          let x_2413 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2408.x, x_2408.y) * vec2<f32>(x_2410, x_2410)) + x_2413);
          let x_2415 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2415 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2418 : vec2<f32> = u_xlat43;
          u_xlat43 = clamp(x_2418, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2422 : u32 = u_xlatu1;
          let x_2425 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2422)];
          let x_2427 : vec2<f32> = u_xlat43;
          let x_2429 : u32 = u_xlatu1;
          let x_2432 : vec4<f32> = x_2092.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2429)];
          let x_2434 : vec2<f32> = ((vec2<f32>(x_2425.x, x_2425.y) * x_2427) + vec2<f32>(x_2432.z, x_2432.w));
          let x_2435 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2434.x, x_2434.y, x_2435.z, x_2435.w);
        }
      }
      let x_2442 : vec4<f32> = u_xlat8;
      let x_2445 : f32 = x_27.x_GlobalMipBias.x;
      let x_2446 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2442.x, x_2442.y), x_2445);
      u_xlat8 = x_2446;
      let x_2448 : bool = u_xlatb5.y;
      if (x_2448) {
        let x_2453 : f32 = u_xlat8.w;
        x_2449 = x_2453;
      } else {
        let x_2456 : f32 = u_xlat8.x;
        x_2449 = x_2456;
      }
      let x_2457 : f32 = x_2449;
      u_xlat60 = x_2457;
      let x_2459 : bool = u_xlatb5.x;
      if (x_2459) {
        let x_2463 : vec4<f32> = u_xlat8;
        x_2460 = vec3<f32>(x_2463.x, x_2463.y, x_2463.z);
      } else {
        let x_2466 : f32 = u_xlat60;
        x_2460 = vec3<f32>(x_2466, x_2466, x_2466);
      }
      let x_2468 : vec3<f32> = x_2460;
      let x_2469 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2468.x, x_2468.y, x_2468.z, x_2469.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2475 : vec4<f32> = u_xlat8;
    let x_2477 : u32 = u_xlatu1;
    let x_2480 : vec4<f32> = x_1983.x_AdditionalLightsColor[bitcast<i32>(x_2477)];
    let x_2482 : vec3<f32> = (vec3<f32>(x_2475.x, x_2475.y, x_2475.z) * vec3<f32>(x_2480.x, x_2480.y, x_2480.z));
    let x_2483 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2482.x, x_2482.y, x_2482.z, x_2483.w);
    let x_2485 : f32 = u_xlat59;
    let x_2487 : vec4<f32> = u_xlat8;
    let x_2489 : vec3<f32> = (vec3<f32>(x_2485, x_2485, x_2485) * vec3<f32>(x_2487.x, x_2487.y, x_2487.z));
    let x_2490 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2489.x, x_2489.y, x_2489.z, x_2490.w);
    let x_2492 : vec4<f32> = u_xlat2;
    let x_2494 : vec4<f32> = u_xlat7;
    u_xlat1.x = dot(vec3<f32>(x_2492.x, x_2492.y, x_2492.z), vec3<f32>(x_2494.x, x_2494.y, x_2494.z));
    let x_2499 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_2499, 0.0f, 1.0f);
    let x_2502 : vec4<f32> = u_xlat1;
    let x_2504 : vec4<f32> = u_xlat8;
    let x_2506 : vec3<f32> = (vec3<f32>(x_2502.x, x_2502.x, x_2502.x) * vec3<f32>(x_2504.x, x_2504.y, x_2504.z));
    let x_2507 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2506.x, x_2506.y, x_2506.z, x_2507.w);
    let x_2509 : vec4<f32> = u_xlat1;
    let x_2511 : vec4<f32> = u_xlat7;
    let x_2513 : vec3<f32> = (vec3<f32>(x_2509.y, x_2509.z, x_2509.w) * vec3<f32>(x_2511.x, x_2511.y, x_2511.z));
    let x_2514 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2513.x, x_2513.y, x_2513.z, x_2514.w);
    let x_2516 : vec4<f32> = u_xlat7;
    let x_2518 : vec4<f32> = u_xlat0;
    let x_2521 : vec4<f32> = u_xlat6;
    let x_2523 : vec3<f32> = ((vec3<f32>(x_2516.x, x_2516.y, x_2516.z) * vec3<f32>(x_2518.x, x_2518.x, x_2518.x)) + vec3<f32>(x_2521.x, x_2521.y, x_2521.z));
    let x_2524 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2523.x, x_2523.y, x_2523.z, x_2524.w);

    continuing {
      let x_2526 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2526 + bitcast<u32>(1i));
    }
  }
  let x_2528 : vec4<f32> = u_xlat4;
  let x_2530 : vec4<f32> = u_xlat1;
  let x_2533 : vec4<f32> = u_xlat3;
  let x_2535 : vec3<f32> = ((vec3<f32>(x_2528.x, x_2528.y, x_2528.z) * vec3<f32>(x_2530.y, x_2530.z, x_2530.w)) + vec3<f32>(x_2533.x, x_2533.y, x_2533.z));
  let x_2536 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2535.x, x_2535.y, x_2535.z, x_2536.w);
  let x_2540 : vec4<f32> = u_xlat6;
  let x_2542 : vec4<f32> = u_xlat1;
  let x_2544 : vec3<f32> = (vec3<f32>(x_2540.x, x_2540.y, x_2540.z) + vec3<f32>(x_2542.x, x_2542.y, x_2542.z));
  let x_2545 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2544.x, x_2544.y, x_2544.z, x_2545.w);
  let x_2548 : f32 = x_41.x_Surface;
  u_xlatb19 = (x_2548 == 1.0f);
  let x_2550 : bool = u_xlatb19;
  let x_2551 : bool = u_xlatb38;
  u_xlatb19 = (x_2550 | x_2551);
  let x_2553 : bool = u_xlatb19;
  if (x_2553) {
    let x_2558 : f32 = u_xlat0.x;
    x_2554 = x_2558;
  } else {
    x_2554 = 1.0f;
  }
  let x_2560 : f32 = x_2554;
  SV_Target0.w = x_2560;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

