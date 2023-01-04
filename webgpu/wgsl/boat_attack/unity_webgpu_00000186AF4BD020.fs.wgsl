struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
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

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_169 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_402 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1831 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2076 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2196 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat19 : f32;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_123 : f32;
  var u_xlatb19 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu19 : u32;
  var u_xlati19 : i32;
  var u_xlatb59 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat59 : f32;
  var u_xlatb60 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat60 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec5 : vec3<f32>;
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
  var u_xlatb22 : bool;
  var u_xlat22 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_1916 : f32;
  var x_1927 : vec3<f32>;
  var u_xlatu57 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu60 : u32;
  var u_xlati61 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu43 : u32;
  var u_xlati62 : i32;
  var u_xlati43 : i32;
  var u_xlati63 : i32;
  var u_xlatb43 : bool;
  var u_xlatb46 : vec2<bool>;
  var x_2496 : f32;
  var x_2509 : f32;
  var x_2561 : f32;
  var x_2573 : vec3<f32>;
  var x_2691 : f32;
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
  let x_60 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_57.x_BaseColor.w;
  let x_90 : f32 = x_57.x_Cutoff;
  u_xlat19 = ((x_85 * x_87) + -(x_90));
  let x_95 : f32 = u_xlat1.x;
  u_xlat38 = dpdxCoarse(x_95);
  let x_99 : f32 = u_xlat1.x;
  u_xlat57 = dpdyCoarse(x_99);
  let x_101 : f32 = u_xlat57;
  let x_103 : f32 = u_xlat38;
  u_xlat38 = (abs(x_101) + abs(x_103));
  let x_106 : f32 = u_xlat38;
  u_xlat38 = max(x_106, 0.0001f);
  let x_109 : f32 = u_xlat19;
  let x_110 : f32 = u_xlat38;
  u_xlat19 = (x_109 / x_110);
  let x_112 : f32 = u_xlat19;
  u_xlat19 = (x_112 + 0.5f);
  let x_115 : f32 = u_xlat19;
  u_xlat19 = clamp(x_115, 0.0f, 1.0f);
  let x_120 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb38 = !((x_120 == 0.0f));
  let x_122 : bool = u_xlatb38;
  if (x_122) {
    let x_126 : f32 = u_xlat19;
    x_123 = x_126;
  } else {
    let x_129 : f32 = u_xlat0.x;
    x_123 = x_129;
  }
  let x_130 : f32 = x_123;
  u_xlat0.x = x_130;
  let x_133 : f32 = u_xlat0.x;
  u_xlat19 = (x_133 + -0.0001f);
  let x_137 : f32 = u_xlat19;
  u_xlatb19 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb19;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_151 : vec3<f32> = vs_TEXCOORD2;
  u_xlat19 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat19;
  u_xlat19 = inverseSqrt(x_153);
  let x_156 : f32 = u_xlat19;
  let x_158 : vec3<f32> = vs_TEXCOORD2;
  let x_159 : vec3<f32> = (vec3<f32>(x_156, x_156, x_156) * x_158);
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_164 : vec3<f32> = vs_TEXCOORD1;
  let x_171 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres0;
  let x_174 : vec3<f32> = (x_164 + -(vec3<f32>(x_171.x, x_171.y, x_171.z)));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres1;
  let x_183 : vec3<f32> = (x_178 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = vs_TEXCOORD1;
  let x_190 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres2;
  let x_193 : vec3<f32> = (x_187 + -(vec3<f32>(x_190.x, x_190.y, x_190.z)));
  let x_194 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_197 : vec3<f32> = vs_TEXCOORD1;
  let x_199 : vec4<f32> = x_169.x_CascadeShadowSplitSpheres3;
  let x_202 : vec3<f32> = (x_197 + -(vec3<f32>(x_199.x, x_199.y, x_199.z)));
  let x_203 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
  let x_205 : vec4<f32> = u_xlat3;
  let x_207 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_211 : vec4<f32> = u_xlat4;
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_211.x, x_211.y, x_211.z), vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_218 : vec4<f32> = u_xlat5;
  let x_220 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_218.x, x_218.y, x_218.z), vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_225 : vec4<f32> = u_xlat6;
  let x_227 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_225.x, x_225.y, x_225.z), vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_234 : vec4<f32> = u_xlat3;
  let x_237 : vec4<f32> = x_169.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_234 < x_237);
  let x_240 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_240);
  let x_244 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_244);
  let x_248 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_248);
  let x_252 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_252);
  let x_256 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_256);
  let x_262 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_262);
  let x_266 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_266);
  let x_269 : vec4<f32> = u_xlat3;
  let x_271 : vec4<f32> = u_xlat4;
  let x_273 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + vec3<f32>(x_271.y, x_271.z, x_271.w));
  let x_274 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_276 : vec4<f32> = u_xlat3;
  let x_279 : vec3<f32> = max(vec3<f32>(x_276.x, x_276.y, x_276.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_280.x, x_279.x, x_279.y, x_279.z);
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat19 = dot(x_282, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_288 : f32 = u_xlat19;
  u_xlat19 = (-(x_288) + 4.0f);
  let x_293 : f32 = u_xlat19;
  u_xlatu19 = u32(x_293);
  let x_297 : u32 = u_xlatu19;
  u_xlati19 = (bitcast<i32>(x_297) << bitcast<u32>(2i));
  let x_300 : vec3<f32> = vs_TEXCOORD1;
  let x_302 : i32 = u_xlati19;
  let x_305 : i32 = u_xlati19;
  let x_309 : vec4<f32> = x_169.x_MainLightWorldToShadow[((x_302 + 1i) / 4i)][((x_305 + 1i) % 4i)];
  let x_311 : vec3<f32> = (vec3<f32>(x_300.y, x_300.y, x_300.y) * vec3<f32>(x_309.x, x_309.y, x_309.z));
  let x_312 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
  let x_314 : i32 = u_xlati19;
  let x_316 : i32 = u_xlati19;
  let x_319 : vec4<f32> = x_169.x_MainLightWorldToShadow[(x_314 / 4i)][(x_316 % 4i)];
  let x_321 : vec3<f32> = vs_TEXCOORD1;
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = ((vec3<f32>(x_319.x, x_319.y, x_319.z) * vec3<f32>(x_321.x, x_321.x, x_321.x)) + vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : i32 = u_xlati19;
  let x_332 : i32 = u_xlati19;
  let x_336 : vec4<f32> = x_169.x_MainLightWorldToShadow[((x_329 + 2i) / 4i)][((x_332 + 2i) % 4i)];
  let x_338 : vec3<f32> = vs_TEXCOORD1;
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.y, x_336.z) * vec3<f32>(x_338.z, x_338.z, x_338.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat3;
  let x_348 : i32 = u_xlati19;
  let x_351 : i32 = u_xlati19;
  let x_355 : vec4<f32> = x_169.x_MainLightWorldToShadow[((x_348 + 3i) / 4i)][((x_351 + 3i) % 4i)];
  let x_357 : vec3<f32> = (vec3<f32>(x_346.x, x_346.y, x_346.z) + vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : f32 = vs_TEXCOORD1.y;
  let x_364 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat19 = (x_361 * x_364);
  let x_367 : f32 = x_44.unity_MatrixV[0i].z;
  let x_369 : f32 = vs_TEXCOORD1.x;
  let x_371 : f32 = u_xlat19;
  u_xlat19 = ((x_367 * x_369) + x_371);
  let x_374 : f32 = x_44.unity_MatrixV[2i].z;
  let x_376 : f32 = vs_TEXCOORD1.z;
  let x_378 : f32 = u_xlat19;
  u_xlat19 = ((x_374 * x_376) + x_378);
  let x_380 : f32 = u_xlat19;
  let x_382 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat19 = (x_380 + x_382);
  let x_384 : f32 = u_xlat19;
  let x_388 : f32 = x_44.x_ProjectionParams.y;
  u_xlat19 = (-(x_384) + -(x_388));
  let x_391 : f32 = u_xlat19;
  u_xlat19 = max(x_391, 0.0f);
  let x_393 : f32 = u_xlat19;
  let x_396 : f32 = x_44.unity_FogParams.x;
  u_xlat19 = (x_393 * x_396);
  u_xlat2.w = 1.0f;
  let x_405 : vec4<f32> = x_402.unity_SHAr;
  let x_406 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_405, x_406);
  let x_411 : vec4<f32> = x_402.unity_SHAg;
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_411, x_412);
  let x_417 : vec4<f32> = x_402.unity_SHAb;
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_417, x_418);
  let x_421 : vec4<f32> = u_xlat2;
  let x_423 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_421.y, x_421.z, x_421.z, x_421.x) * vec4<f32>(x_423.x, x_423.y, x_423.z, x_423.z));
  let x_428 : vec4<f32> = x_402.unity_SHBr;
  let x_429 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_428, x_429);
  let x_434 : vec4<f32> = x_402.unity_SHBg;
  let x_435 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_434, x_435);
  let x_440 : vec4<f32> = x_402.unity_SHBb;
  let x_441 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_440, x_441);
  let x_445 : f32 = u_xlat2.y;
  let x_447 : f32 = u_xlat2.y;
  u_xlat57 = (x_445 * x_447);
  let x_450 : f32 = u_xlat2.x;
  let x_452 : f32 = u_xlat2.x;
  let x_454 : f32 = u_xlat57;
  u_xlat57 = ((x_450 * x_452) + -(x_454));
  let x_459 : vec4<f32> = x_402.unity_SHC;
  let x_461 : f32 = u_xlat57;
  let x_464 : vec4<f32> = u_xlat6;
  let x_466 : vec3<f32> = ((vec3<f32>(x_459.x, x_459.y, x_459.z) * vec3<f32>(x_461, x_461, x_461)) + vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_469 : vec4<f32> = u_xlat4;
  let x_471 : vec4<f32> = u_xlat5;
  let x_473 : vec3<f32> = (vec3<f32>(x_469.x, x_469.y, x_469.z) + vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat4;
  let x_478 : vec3<f32> = max(vec3<f32>(x_476.x, x_476.y, x_476.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_479 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
  let x_483 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_484 : vec2<f32> = vec2<f32>(x_483.x, x_483.y);
  let x_488 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_484.x, x_484.y));
  let x_489 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
  let x_491 : vec4<f32> = u_xlat5;
  let x_493 : vec4<f32> = hlslcc_FragCoord;
  let x_495 : vec2<f32> = (vec2<f32>(x_491.x, x_491.y) * vec2<f32>(x_493.x, x_493.y));
  let x_496 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
  let x_499 : f32 = u_xlat5.y;
  let x_502 : f32 = x_44.x_ScaleBiasRt.x;
  let x_505 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat57 = ((x_499 * x_502) + x_505);
  let x_507 : f32 = u_xlat57;
  u_xlat5.z = (-(x_507) + 1.0f);
  let x_516 : vec4<f32> = u_xlat5;
  let x_519 : f32 = x_44.x_GlobalMipBias.x;
  let x_520 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_516.x, x_516.z), x_519);
  u_xlat57 = x_520.x;
  let x_522 : f32 = u_xlat57;
  u_xlat1.x = (x_522 + -1.0f);
  let x_526 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_528 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_526 * x_528) + 1.0f);
  let x_532 : f32 = u_xlat57;
  u_xlat57 = min(x_532, 1.0f);
  let x_536 : f32 = x_169.x_MainLightShadowParams.y;
  u_xlatb59 = (0.0f < x_536);
  let x_538 : bool = u_xlatb59;
  if (x_538) {
    let x_542 : f32 = x_169.x_MainLightShadowParams.y;
    u_xlatb59 = (x_542 == 1.0f);
    let x_544 : bool = u_xlatb59;
    if (x_544) {
      let x_547 : vec4<f32> = u_xlat3;
      let x_551 : vec4<f32> = x_169.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_547.x, x_547.y, x_547.x, x_547.y) + x_551);
      let x_555 : vec4<f32> = u_xlat5;
      let x_556 : vec2<f32> = vec2<f32>(x_555.x, x_555.y);
      let x_558 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_556.x, x_556.y, x_558);
      let x_570 : vec3<f32> = txVec0;
      let x_572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_570.xy, x_570.z);
      u_xlat6.x = x_572;
      let x_575 : vec4<f32> = u_xlat5;
      let x_576 : vec2<f32> = vec2<f32>(x_575.z, x_575.w);
      let x_578 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_576.x, x_576.y, x_578);
      let x_585 : vec3<f32> = txVec1;
      let x_587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_585.xy, x_585.z);
      u_xlat6.y = x_587;
      let x_589 : vec4<f32> = u_xlat3;
      let x_593 : vec4<f32> = x_169.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_589.x, x_589.y, x_589.x, x_589.y) + x_593);
      let x_596 : vec4<f32> = u_xlat5;
      let x_597 : vec2<f32> = vec2<f32>(x_596.x, x_596.y);
      let x_599 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_597.x, x_597.y, x_599);
      let x_606 : vec3<f32> = txVec2;
      let x_608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_606.xy, x_606.z);
      u_xlat6.z = x_608;
      let x_611 : vec4<f32> = u_xlat5;
      let x_612 : vec2<f32> = vec2<f32>(x_611.z, x_611.w);
      let x_614 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_612.x, x_612.y, x_614);
      let x_621 : vec3<f32> = txVec3;
      let x_623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_621.xy, x_621.z);
      u_xlat6.w = x_623;
      let x_626 : vec4<f32> = u_xlat6;
      u_xlat59 = dot(x_626, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_633 : f32 = x_169.x_MainLightShadowParams.y;
      u_xlatb60 = (x_633 == 2.0f);
      let x_635 : bool = u_xlatb60;
      if (x_635) {
        let x_638 : vec4<f32> = u_xlat3;
        let x_641 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_645 : vec2<f32> = ((vec2<f32>(x_638.x, x_638.y) * vec2<f32>(x_641.z, x_641.w)) + vec2<f32>(0.5f, 0.5f));
        let x_646 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
        let x_648 : vec4<f32> = u_xlat5;
        let x_650 : vec2<f32> = floor(vec2<f32>(x_648.x, x_648.y));
        let x_651 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
        let x_655 : vec4<f32> = u_xlat3;
        let x_658 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_661 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_655.x, x_655.y) * vec2<f32>(x_658.z, x_658.w)) + -(vec2<f32>(x_661.x, x_661.y)));
        let x_665 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_665.x, x_665.x, x_665.y, x_665.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_670 : vec4<f32> = u_xlat6;
        let x_672 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_670.x, x_670.x, x_670.z, x_670.z) * vec4<f32>(x_672.x, x_672.x, x_672.z, x_672.z));
        let x_675 : vec4<f32> = u_xlat7;
        let x_679 : vec2<f32> = (vec2<f32>(x_675.y, x_675.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_680 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_679.x, x_680.y, x_679.y, x_680.w);
        let x_682 : vec4<f32> = u_xlat7;
        let x_685 : vec2<f32> = u_xlat43;
        let x_687 : vec2<f32> = ((vec2<f32>(x_682.x, x_682.z) * vec2<f32>(0.5f, 0.5f)) + -(x_685));
        let x_688 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_687.x, x_687.y, x_688.z, x_688.w);
        let x_691 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_691) + vec2<f32>(1.0f, 1.0f));
        let x_695 : vec2<f32> = u_xlat43;
        let x_697 : vec2<f32> = min(x_695, vec2<f32>(0.0f, 0.0f));
        let x_698 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
        let x_700 : vec4<f32> = u_xlat8;
        let x_703 : vec4<f32> = u_xlat8;
        let x_706 : vec2<f32> = u_xlat45;
        let x_707 : vec2<f32> = ((-(vec2<f32>(x_700.x, x_700.y)) * vec2<f32>(x_703.x, x_703.y)) + x_706);
        let x_708 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_707.x, x_707.y, x_708.z, x_708.w);
        let x_710 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_710, vec2<f32>(0.0f, 0.0f));
        let x_712 : vec2<f32> = u_xlat43;
        let x_714 : vec2<f32> = u_xlat43;
        let x_716 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_712) * x_714) + vec2<f32>(x_716.y, x_716.w));
        let x_719 : vec4<f32> = u_xlat8;
        let x_721 : vec2<f32> = (vec2<f32>(x_719.x, x_719.y) + vec2<f32>(1.0f, 1.0f));
        let x_722 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
        let x_724 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_724 + vec2<f32>(1.0f, 1.0f));
        let x_727 : vec4<f32> = u_xlat7;
        let x_731 : vec2<f32> = (vec2<f32>(x_727.x, x_727.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_732 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
        let x_734 : vec2<f32> = u_xlat45;
        let x_735 : vec2<f32> = (x_734 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_736 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
        let x_738 : vec4<f32> = u_xlat8;
        let x_740 : vec2<f32> = (vec2<f32>(x_738.x, x_738.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_741 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_740.x, x_740.y, x_741.z, x_741.w);
        let x_744 : vec2<f32> = u_xlat43;
        let x_745 : vec2<f32> = (x_744 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_746 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_745.x, x_745.y, x_746.z, x_746.w);
        let x_748 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_748.y, x_748.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_752 : f32 = u_xlat8.x;
        u_xlat9.z = x_752;
        let x_755 : f32 = u_xlat43.x;
        u_xlat9.w = x_755;
        let x_758 : f32 = u_xlat10.x;
        u_xlat7.z = x_758;
        let x_761 : f32 = u_xlat6.x;
        u_xlat7.w = x_761;
        let x_764 : vec4<f32> = u_xlat7;
        let x_766 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_764.z, x_764.w, x_764.x, x_764.z) + vec4<f32>(x_766.z, x_766.w, x_766.x, x_766.z));
        let x_770 : f32 = u_xlat9.y;
        u_xlat8.z = x_770;
        let x_773 : f32 = u_xlat43.y;
        u_xlat8.w = x_773;
        let x_776 : f32 = u_xlat7.y;
        u_xlat10.z = x_776;
        let x_779 : f32 = u_xlat6.z;
        u_xlat10.w = x_779;
        let x_781 : vec4<f32> = u_xlat8;
        let x_783 : vec4<f32> = u_xlat10;
        let x_785 : vec3<f32> = (vec3<f32>(x_781.z, x_781.y, x_781.w) + vec3<f32>(x_783.z, x_783.y, x_783.w));
        let x_786 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
        let x_788 : vec4<f32> = u_xlat7;
        let x_790 : vec4<f32> = u_xlat11;
        let x_792 : vec3<f32> = (vec3<f32>(x_788.x, x_788.z, x_788.w) / vec3<f32>(x_790.z, x_790.w, x_790.y));
        let x_793 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
        let x_795 : vec4<f32> = u_xlat7;
        let x_801 : vec3<f32> = (vec3<f32>(x_795.x, x_795.y, x_795.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_802 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
        let x_804 : vec4<f32> = u_xlat10;
        let x_806 : vec4<f32> = u_xlat6;
        let x_808 : vec3<f32> = (vec3<f32>(x_804.z, x_804.y, x_804.w) / vec3<f32>(x_806.x, x_806.y, x_806.z));
        let x_809 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
        let x_811 : vec4<f32> = u_xlat8;
        let x_813 : vec3<f32> = (vec3<f32>(x_811.x, x_811.y, x_811.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_814 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
        let x_816 : vec4<f32> = u_xlat7;
        let x_819 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_821 : vec3<f32> = (vec3<f32>(x_816.y, x_816.x, x_816.z) * vec3<f32>(x_819.x, x_819.x, x_819.x));
        let x_822 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
        let x_824 : vec4<f32> = u_xlat8;
        let x_827 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_829 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(x_827.y, x_827.y, x_827.y));
        let x_830 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
        let x_833 : f32 = u_xlat8.x;
        u_xlat7.w = x_833;
        let x_835 : vec4<f32> = u_xlat5;
        let x_838 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_841 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_835.x, x_835.y, x_835.x, x_835.y) * vec4<f32>(x_838.x, x_838.y, x_838.x, x_838.y)) + vec4<f32>(x_841.y, x_841.w, x_841.x, x_841.w));
        let x_844 : vec4<f32> = u_xlat5;
        let x_847 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_850 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_844.x, x_844.y) * vec2<f32>(x_847.x, x_847.y)) + vec2<f32>(x_850.z, x_850.w));
        let x_854 : f32 = u_xlat7.y;
        u_xlat8.w = x_854;
        let x_856 : vec4<f32> = u_xlat8;
        let x_857 : vec2<f32> = vec2<f32>(x_856.y, x_856.z);
        let x_858 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_858.x, x_857.x, x_858.z, x_857.y);
        let x_860 : vec4<f32> = u_xlat5;
        let x_863 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_866 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_860.x, x_860.y, x_860.x, x_860.y) * vec4<f32>(x_863.x, x_863.y, x_863.x, x_863.y)) + vec4<f32>(x_866.x, x_866.y, x_866.z, x_866.y));
        let x_869 : vec4<f32> = u_xlat5;
        let x_872 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_875 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_869.x, x_869.y, x_869.x, x_869.y) * vec4<f32>(x_872.x, x_872.y, x_872.x, x_872.y)) + vec4<f32>(x_875.w, x_875.y, x_875.w, x_875.z));
        let x_878 : vec4<f32> = u_xlat5;
        let x_881 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_884 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_878.x, x_878.y, x_878.x, x_878.y) * vec4<f32>(x_881.x, x_881.y, x_881.x, x_881.y)) + vec4<f32>(x_884.x, x_884.w, x_884.z, x_884.w));
        let x_888 : vec4<f32> = u_xlat6;
        let x_890 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_888.x, x_888.x, x_888.x, x_888.y) * vec4<f32>(x_890.z, x_890.w, x_890.y, x_890.z));
        let x_894 : vec4<f32> = u_xlat6;
        let x_896 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_894.y, x_894.y, x_894.z, x_894.z) * x_896);
        let x_900 : f32 = u_xlat6.z;
        let x_902 : f32 = u_xlat11.y;
        u_xlat60 = (x_900 * x_902);
        let x_905 : vec4<f32> = u_xlat9;
        let x_906 : vec2<f32> = vec2<f32>(x_905.x, x_905.y);
        let x_908 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_906.x, x_906.y, x_908);
        let x_916 : vec3<f32> = txVec4;
        let x_918 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_916.xy, x_916.z);
        u_xlat61 = x_918;
        let x_920 : vec4<f32> = u_xlat9;
        let x_921 : vec2<f32> = vec2<f32>(x_920.z, x_920.w);
        let x_923 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_921.x, x_921.y, x_923);
        let x_930 : vec3<f32> = txVec5;
        let x_932 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_930.xy, x_930.z);
        u_xlat5.x = x_932;
        let x_935 : f32 = u_xlat5.x;
        let x_937 : f32 = u_xlat12.y;
        u_xlat5.x = (x_935 * x_937);
        let x_941 : f32 = u_xlat12.x;
        let x_942 : f32 = u_xlat61;
        let x_945 : f32 = u_xlat5.x;
        u_xlat61 = ((x_941 * x_942) + x_945);
        let x_948 : vec2<f32> = u_xlat43;
        let x_950 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_948.x, x_948.y, x_950);
        let x_957 : vec3<f32> = txVec6;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_957.xy, x_957.z);
        u_xlat5.x = x_959;
        let x_962 : f32 = u_xlat12.z;
        let x_964 : f32 = u_xlat5.x;
        let x_966 : f32 = u_xlat61;
        u_xlat61 = ((x_962 * x_964) + x_966);
        let x_969 : vec4<f32> = u_xlat8;
        let x_970 : vec2<f32> = vec2<f32>(x_969.x, x_969.y);
        let x_972 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_970.x, x_970.y, x_972);
        let x_979 : vec3<f32> = txVec7;
        let x_981 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_979.xy, x_979.z);
        u_xlat5.x = x_981;
        let x_984 : f32 = u_xlat12.w;
        let x_986 : f32 = u_xlat5.x;
        let x_988 : f32 = u_xlat61;
        u_xlat61 = ((x_984 * x_986) + x_988);
        let x_991 : vec4<f32> = u_xlat10;
        let x_992 : vec2<f32> = vec2<f32>(x_991.x, x_991.y);
        let x_994 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_992.x, x_992.y, x_994);
        let x_1001 : vec3<f32> = txVec8;
        let x_1003 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1001.xy, x_1001.z);
        u_xlat5.x = x_1003;
        let x_1006 : f32 = u_xlat13.x;
        let x_1008 : f32 = u_xlat5.x;
        let x_1010 : f32 = u_xlat61;
        u_xlat61 = ((x_1006 * x_1008) + x_1010);
        let x_1013 : vec4<f32> = u_xlat10;
        let x_1014 : vec2<f32> = vec2<f32>(x_1013.z, x_1013.w);
        let x_1016 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1014.x, x_1014.y, x_1016);
        let x_1023 : vec3<f32> = txVec9;
        let x_1025 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1023.xy, x_1023.z);
        u_xlat5.x = x_1025;
        let x_1028 : f32 = u_xlat13.y;
        let x_1030 : f32 = u_xlat5.x;
        let x_1032 : f32 = u_xlat61;
        u_xlat61 = ((x_1028 * x_1030) + x_1032);
        let x_1035 : vec4<f32> = u_xlat8;
        let x_1036 : vec2<f32> = vec2<f32>(x_1035.z, x_1035.w);
        let x_1038 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1036.x, x_1036.y, x_1038);
        let x_1045 : vec3<f32> = txVec10;
        let x_1047 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1045.xy, x_1045.z);
        u_xlat5.x = x_1047;
        let x_1050 : f32 = u_xlat13.z;
        let x_1052 : f32 = u_xlat5.x;
        let x_1054 : f32 = u_xlat61;
        u_xlat61 = ((x_1050 * x_1052) + x_1054);
        let x_1057 : vec4<f32> = u_xlat7;
        let x_1058 : vec2<f32> = vec2<f32>(x_1057.x, x_1057.y);
        let x_1060 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1058.x, x_1058.y, x_1060);
        let x_1067 : vec3<f32> = txVec11;
        let x_1069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1067.xy, x_1067.z);
        u_xlat5.x = x_1069;
        let x_1072 : f32 = u_xlat13.w;
        let x_1074 : f32 = u_xlat5.x;
        let x_1076 : f32 = u_xlat61;
        u_xlat61 = ((x_1072 * x_1074) + x_1076);
        let x_1079 : vec4<f32> = u_xlat7;
        let x_1080 : vec2<f32> = vec2<f32>(x_1079.z, x_1079.w);
        let x_1082 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1080.x, x_1080.y, x_1082);
        let x_1089 : vec3<f32> = txVec12;
        let x_1091 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1089.xy, x_1089.z);
        u_xlat5.x = x_1091;
        let x_1093 : f32 = u_xlat60;
        let x_1095 : f32 = u_xlat5.x;
        let x_1097 : f32 = u_xlat61;
        u_xlat59 = ((x_1093 * x_1095) + x_1097);
      } else {
        let x_1100 : vec4<f32> = u_xlat3;
        let x_1103 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1106 : vec2<f32> = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1103.z, x_1103.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1107 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1109 : vec4<f32> = u_xlat5;
        let x_1111 : vec2<f32> = floor(vec2<f32>(x_1109.x, x_1109.y));
        let x_1112 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        let x_1114 : vec4<f32> = u_xlat3;
        let x_1117 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1120 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1114.x, x_1114.y) * vec2<f32>(x_1117.z, x_1117.w)) + -(vec2<f32>(x_1120.x, x_1120.y)));
        let x_1124 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1124.x, x_1124.x, x_1124.y, x_1124.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1127 : vec4<f32> = u_xlat6;
        let x_1129 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1127.x, x_1127.x, x_1127.z, x_1127.z) * vec4<f32>(x_1129.x, x_1129.x, x_1129.z, x_1129.z));
        let x_1132 : vec4<f32> = u_xlat7;
        let x_1136 : vec2<f32> = (vec2<f32>(x_1132.y, x_1132.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1137 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1137.x, x_1136.x, x_1137.z, x_1136.y);
        let x_1139 : vec4<f32> = u_xlat7;
        let x_1142 : vec2<f32> = u_xlat43;
        let x_1144 : vec2<f32> = ((vec2<f32>(x_1139.x, x_1139.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1142));
        let x_1145 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1144.x, x_1145.y, x_1144.y, x_1145.w);
        let x_1147 : vec2<f32> = u_xlat43;
        let x_1149 : vec2<f32> = (-(x_1147) + vec2<f32>(1.0f, 1.0f));
        let x_1150 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1149.x, x_1149.y, x_1150.z, x_1150.w);
        let x_1152 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1152, vec2<f32>(0.0f, 0.0f));
        let x_1154 : vec2<f32> = u_xlat45;
        let x_1156 : vec2<f32> = u_xlat45;
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1160 : vec2<f32> = ((-(x_1154) * x_1156) + vec2<f32>(x_1158.x, x_1158.y));
        let x_1161 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1160.x, x_1160.y, x_1161.z, x_1161.w);
        let x_1163 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1163, vec2<f32>(0.0f, 0.0f));
        let x_1166 : vec2<f32> = u_xlat45;
        let x_1168 : vec2<f32> = u_xlat45;
        let x_1170 : vec4<f32> = u_xlat6;
        let x_1172 : vec2<f32> = ((-(x_1166) * x_1168) + vec2<f32>(x_1170.y, x_1170.w));
        let x_1173 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1172.x, x_1173.y, x_1172.y);
        let x_1175 : vec4<f32> = u_xlat7;
        let x_1178 : vec2<f32> = (vec2<f32>(x_1175.x, x_1175.y) + vec2<f32>(2.0f, 2.0f));
        let x_1179 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1178.x, x_1178.y, x_1179.z, x_1179.w);
        let x_1181 : vec3<f32> = u_xlat25;
        let x_1183 : vec2<f32> = (vec2<f32>(x_1181.x, x_1181.z) + vec2<f32>(2.0f, 2.0f));
        let x_1184 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1184.x, x_1183.x, x_1184.z, x_1183.y);
        let x_1187 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1187 * 0.081632003f);
        let x_1191 : vec4<f32> = u_xlat6;
        let x_1194 : vec3<f32> = (vec3<f32>(x_1191.z, x_1191.x, x_1191.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1195 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
        let x_1197 : vec4<f32> = u_xlat7;
        let x_1200 : vec2<f32> = (vec2<f32>(x_1197.x, x_1197.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1201 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
        let x_1204 : f32 = u_xlat10.y;
        u_xlat9.x = x_1204;
        let x_1206 : vec2<f32> = u_xlat43;
        let x_1213 : vec2<f32> = ((vec2<f32>(x_1206.x, x_1206.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1214 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1214.x, x_1213.x, x_1214.z, x_1213.y);
        let x_1216 : vec2<f32> = u_xlat43;
        let x_1220 : vec2<f32> = ((vec2<f32>(x_1216.x, x_1216.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1221 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1220.x, x_1221.y, x_1220.y, x_1221.w);
        let x_1224 : f32 = u_xlat6.x;
        u_xlat7.y = x_1224;
        let x_1227 : f32 = u_xlat8.y;
        u_xlat7.w = x_1227;
        let x_1229 : vec4<f32> = u_xlat7;
        let x_1230 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1229 + x_1230);
        let x_1232 : vec2<f32> = u_xlat43;
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1232.y, x_1232.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1236 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1236.x, x_1235.x, x_1236.z, x_1235.y);
        let x_1238 : vec2<f32> = u_xlat43;
        let x_1241 : vec2<f32> = ((vec2<f32>(x_1238.y, x_1238.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1242 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1241.x, x_1242.y, x_1241.y, x_1242.w);
        let x_1245 : f32 = u_xlat6.y;
        u_xlat8.y = x_1245;
        let x_1247 : vec4<f32> = u_xlat8;
        let x_1248 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1247 + x_1248);
        let x_1250 : vec4<f32> = u_xlat7;
        let x_1251 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1250 / x_1251);
        let x_1253 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1253 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1259 : vec4<f32> = u_xlat8;
        let x_1260 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1259 / x_1260);
        let x_1262 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1262 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1264 : vec4<f32> = u_xlat7;
        let x_1267 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1264.w, x_1264.x, x_1264.y, x_1264.z) * vec4<f32>(x_1267.x, x_1267.x, x_1267.x, x_1267.x));
        let x_1270 : vec4<f32> = u_xlat8;
        let x_1273 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1270.x, x_1270.w, x_1270.y, x_1270.z) * vec4<f32>(x_1273.y, x_1273.y, x_1273.y, x_1273.y));
        let x_1276 : vec4<f32> = u_xlat7;
        let x_1277 : vec3<f32> = vec3<f32>(x_1276.y, x_1276.z, x_1276.w);
        let x_1278 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1277.x, x_1278.y, x_1277.y, x_1277.z);
        let x_1281 : f32 = u_xlat8.x;
        u_xlat10.y = x_1281;
        let x_1283 : vec4<f32> = u_xlat5;
        let x_1286 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1289 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.y) * vec4<f32>(x_1286.x, x_1286.y, x_1286.x, x_1286.y)) + vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1289.y));
        let x_1292 : vec4<f32> = u_xlat5;
        let x_1295 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1292.x, x_1292.y) * vec2<f32>(x_1295.x, x_1295.y)) + vec2<f32>(x_1298.w, x_1298.y));
        let x_1302 : f32 = u_xlat10.y;
        u_xlat7.y = x_1302;
        let x_1305 : f32 = u_xlat8.z;
        u_xlat10.y = x_1305;
        let x_1307 : vec4<f32> = u_xlat5;
        let x_1310 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1307.x, x_1307.y, x_1307.x, x_1307.y) * vec4<f32>(x_1310.x, x_1310.y, x_1310.x, x_1310.y)) + vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1313.y));
        let x_1316 : vec4<f32> = u_xlat5;
        let x_1319 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1322 : vec4<f32> = u_xlat10;
        let x_1324 : vec2<f32> = ((vec2<f32>(x_1316.x, x_1316.y) * vec2<f32>(x_1319.x, x_1319.y)) + vec2<f32>(x_1322.w, x_1322.y));
        let x_1325 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1324.x, x_1324.y, x_1325.z, x_1325.w);
        let x_1328 : f32 = u_xlat10.y;
        u_xlat7.z = x_1328;
        let x_1331 : vec4<f32> = u_xlat5;
        let x_1334 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y) * vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y)) + vec4<f32>(x_1337.x, x_1337.y, x_1337.x, x_1337.z));
        let x_1341 : f32 = u_xlat8.w;
        u_xlat10.y = x_1341;
        let x_1344 : vec4<f32> = u_xlat5;
        let x_1347 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1350 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1344.x, x_1344.y, x_1344.x, x_1344.y) * vec4<f32>(x_1347.x, x_1347.y, x_1347.x, x_1347.y)) + vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1350.y));
        let x_1354 : vec4<f32> = u_xlat5;
        let x_1357 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1360 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1354.x, x_1354.y) * vec2<f32>(x_1357.x, x_1357.y)) + vec2<f32>(x_1360.w, x_1360.y));
        let x_1364 : f32 = u_xlat10.y;
        u_xlat7.w = x_1364;
        let x_1367 : vec4<f32> = u_xlat5;
        let x_1370 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1373 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1367.x, x_1367.y) * vec2<f32>(x_1370.x, x_1370.y)) + vec2<f32>(x_1373.x, x_1373.w));
        let x_1376 : vec4<f32> = u_xlat10;
        let x_1377 : vec3<f32> = vec3<f32>(x_1376.x, x_1376.z, x_1376.w);
        let x_1378 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1377.x, x_1378.y, x_1377.y, x_1377.z);
        let x_1380 : vec4<f32> = u_xlat5;
        let x_1383 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1386 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1380.x, x_1380.y, x_1380.x, x_1380.y) * vec4<f32>(x_1383.x, x_1383.y, x_1383.x, x_1383.y)) + vec4<f32>(x_1386.x, x_1386.y, x_1386.z, x_1386.y));
        let x_1390 : vec4<f32> = u_xlat5;
        let x_1393 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1396 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1390.x, x_1390.y) * vec2<f32>(x_1393.x, x_1393.y)) + vec2<f32>(x_1396.w, x_1396.y));
        let x_1400 : f32 = u_xlat7.x;
        u_xlat8.x = x_1400;
        let x_1402 : vec4<f32> = u_xlat5;
        let x_1405 : vec4<f32> = x_169.x_MainLightShadowmapSize;
        let x_1408 : vec4<f32> = u_xlat8;
        let x_1410 : vec2<f32> = ((vec2<f32>(x_1402.x, x_1402.y) * vec2<f32>(x_1405.x, x_1405.y)) + vec2<f32>(x_1408.x, x_1408.y));
        let x_1411 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1410.x, x_1410.y, x_1411.z, x_1411.w);
        let x_1414 : vec4<f32> = u_xlat6;
        let x_1416 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1414.x, x_1414.x, x_1414.x, x_1414.x) * x_1416);
        let x_1419 : vec4<f32> = u_xlat6;
        let x_1421 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1419.y, x_1419.y, x_1419.y, x_1419.y) * x_1421);
        let x_1424 : vec4<f32> = u_xlat6;
        let x_1426 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1424.z, x_1424.z, x_1424.z, x_1424.z) * x_1426);
        let x_1428 : vec4<f32> = u_xlat6;
        let x_1430 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1428.w, x_1428.w, x_1428.w, x_1428.w) * x_1430);
        let x_1433 : vec4<f32> = u_xlat11;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec13;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1443.xy, x_1443.z);
        u_xlat60 = x_1445;
        let x_1447 : vec4<f32> = u_xlat11;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.z, x_1447.w);
        let x_1450 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec14;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1457.xy, x_1457.z);
        u_xlat61 = x_1459;
        let x_1460 : f32 = u_xlat61;
        let x_1462 : f32 = u_xlat16.y;
        u_xlat61 = (x_1460 * x_1462);
        let x_1465 : f32 = u_xlat16.x;
        let x_1466 : f32 = u_xlat60;
        let x_1468 : f32 = u_xlat61;
        u_xlat60 = ((x_1465 * x_1466) + x_1468);
        let x_1471 : vec2<f32> = u_xlat43;
        let x_1473 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec15;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1480.xy, x_1480.z);
        u_xlat61 = x_1482;
        let x_1484 : f32 = u_xlat16.z;
        let x_1485 : f32 = u_xlat61;
        let x_1487 : f32 = u_xlat60;
        u_xlat60 = ((x_1484 * x_1485) + x_1487);
        let x_1490 : vec4<f32> = u_xlat14;
        let x_1491 : vec2<f32> = vec2<f32>(x_1490.x, x_1490.y);
        let x_1493 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec16;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1500.xy, x_1500.z);
        u_xlat61 = x_1502;
        let x_1504 : f32 = u_xlat16.w;
        let x_1505 : f32 = u_xlat61;
        let x_1507 : f32 = u_xlat60;
        u_xlat60 = ((x_1504 * x_1505) + x_1507);
        let x_1510 : vec4<f32> = u_xlat12;
        let x_1511 : vec2<f32> = vec2<f32>(x_1510.x, x_1510.y);
        let x_1513 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec17;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1520.xy, x_1520.z);
        u_xlat61 = x_1522;
        let x_1524 : f32 = u_xlat17.x;
        let x_1525 : f32 = u_xlat61;
        let x_1527 : f32 = u_xlat60;
        u_xlat60 = ((x_1524 * x_1525) + x_1527);
        let x_1530 : vec4<f32> = u_xlat12;
        let x_1531 : vec2<f32> = vec2<f32>(x_1530.z, x_1530.w);
        let x_1533 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec18;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1540.xy, x_1540.z);
        u_xlat61 = x_1542;
        let x_1544 : f32 = u_xlat17.y;
        let x_1545 : f32 = u_xlat61;
        let x_1547 : f32 = u_xlat60;
        u_xlat60 = ((x_1544 * x_1545) + x_1547);
        let x_1550 : vec4<f32> = u_xlat13;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.x, x_1550.y);
        let x_1553 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec19;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1560.xy, x_1560.z);
        u_xlat61 = x_1562;
        let x_1564 : f32 = u_xlat17.z;
        let x_1565 : f32 = u_xlat61;
        let x_1567 : f32 = u_xlat60;
        u_xlat60 = ((x_1564 * x_1565) + x_1567);
        let x_1570 : vec4<f32> = u_xlat14;
        let x_1571 : vec2<f32> = vec2<f32>(x_1570.z, x_1570.w);
        let x_1573 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1571.x, x_1571.y, x_1573);
        let x_1580 : vec3<f32> = txVec20;
        let x_1582 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1580.xy, x_1580.z);
        u_xlat61 = x_1582;
        let x_1584 : f32 = u_xlat17.w;
        let x_1585 : f32 = u_xlat61;
        let x_1587 : f32 = u_xlat60;
        u_xlat60 = ((x_1584 * x_1585) + x_1587);
        let x_1590 : vec4<f32> = u_xlat15;
        let x_1591 : vec2<f32> = vec2<f32>(x_1590.x, x_1590.y);
        let x_1593 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1591.x, x_1591.y, x_1593);
        let x_1600 : vec3<f32> = txVec21;
        let x_1602 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1600.xy, x_1600.z);
        u_xlat61 = x_1602;
        let x_1604 : f32 = u_xlat18.x;
        let x_1605 : f32 = u_xlat61;
        let x_1607 : f32 = u_xlat60;
        u_xlat60 = ((x_1604 * x_1605) + x_1607);
        let x_1610 : vec4<f32> = u_xlat15;
        let x_1611 : vec2<f32> = vec2<f32>(x_1610.z, x_1610.w);
        let x_1613 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1611.x, x_1611.y, x_1613);
        let x_1620 : vec3<f32> = txVec22;
        let x_1622 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1620.xy, x_1620.z);
        u_xlat61 = x_1622;
        let x_1624 : f32 = u_xlat18.y;
        let x_1625 : f32 = u_xlat61;
        let x_1627 : f32 = u_xlat60;
        u_xlat60 = ((x_1624 * x_1625) + x_1627);
        let x_1630 : vec2<f32> = u_xlat26;
        let x_1632 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec23;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1639.xy, x_1639.z);
        u_xlat61 = x_1641;
        let x_1643 : f32 = u_xlat18.z;
        let x_1644 : f32 = u_xlat61;
        let x_1646 : f32 = u_xlat60;
        u_xlat60 = ((x_1643 * x_1644) + x_1646);
        let x_1649 : vec2<f32> = u_xlat51;
        let x_1651 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1649.x, x_1649.y, x_1651);
        let x_1658 : vec3<f32> = txVec24;
        let x_1660 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1658.xy, x_1658.z);
        u_xlat61 = x_1660;
        let x_1662 : f32 = u_xlat18.w;
        let x_1663 : f32 = u_xlat61;
        let x_1665 : f32 = u_xlat60;
        u_xlat60 = ((x_1662 * x_1663) + x_1665);
        let x_1668 : vec4<f32> = u_xlat10;
        let x_1669 : vec2<f32> = vec2<f32>(x_1668.x, x_1668.y);
        let x_1671 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
        let x_1678 : vec3<f32> = txVec25;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1678.xy, x_1678.z);
        u_xlat61 = x_1680;
        let x_1682 : f32 = u_xlat6.x;
        let x_1683 : f32 = u_xlat61;
        let x_1685 : f32 = u_xlat60;
        u_xlat60 = ((x_1682 * x_1683) + x_1685);
        let x_1688 : vec4<f32> = u_xlat10;
        let x_1689 : vec2<f32> = vec2<f32>(x_1688.z, x_1688.w);
        let x_1691 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1689.x, x_1689.y, x_1691);
        let x_1698 : vec3<f32> = txVec26;
        let x_1700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1698.xy, x_1698.z);
        u_xlat61 = x_1700;
        let x_1702 : f32 = u_xlat6.y;
        let x_1703 : f32 = u_xlat61;
        let x_1705 : f32 = u_xlat60;
        u_xlat60 = ((x_1702 * x_1703) + x_1705);
        let x_1708 : vec2<f32> = u_xlat46;
        let x_1710 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1708.x, x_1708.y, x_1710);
        let x_1717 : vec3<f32> = txVec27;
        let x_1719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1717.xy, x_1717.z);
        u_xlat61 = x_1719;
        let x_1721 : f32 = u_xlat6.z;
        let x_1722 : f32 = u_xlat61;
        let x_1724 : f32 = u_xlat60;
        u_xlat60 = ((x_1721 * x_1722) + x_1724);
        let x_1727 : vec4<f32> = u_xlat5;
        let x_1728 : vec2<f32> = vec2<f32>(x_1727.x, x_1727.y);
        let x_1730 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1728.x, x_1728.y, x_1730);
        let x_1737 : vec3<f32> = txVec28;
        let x_1739 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1737.xy, x_1737.z);
        u_xlat61 = x_1739;
        let x_1741 : f32 = u_xlat6.w;
        let x_1742 : f32 = u_xlat61;
        let x_1744 : f32 = u_xlat60;
        u_xlat59 = ((x_1741 * x_1742) + x_1744);
      }
    }
  } else {
    let x_1748 : vec4<f32> = u_xlat3;
    let x_1749 : vec2<f32> = vec2<f32>(x_1748.x, x_1748.y);
    let x_1751 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1749.x, x_1749.y, x_1751);
    let x_1758 : vec3<f32> = txVec29;
    let x_1760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1758.xy, x_1758.z);
    u_xlat59 = x_1760;
  }
  let x_1762 : f32 = x_169.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1762) + 1.0f);
  let x_1766 : f32 = u_xlat59;
  let x_1768 : f32 = x_169.x_MainLightShadowParams.x;
  let x_1771 : f32 = u_xlat3.x;
  u_xlat59 = ((x_1766 * x_1768) + x_1771);
  let x_1774 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_1774);
  let x_1779 : f32 = u_xlat3.z;
  u_xlatb22 = (x_1779 >= 1.0f);
  let x_1781 : bool = u_xlatb22;
  let x_1783 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_1781 | x_1783);
  let x_1787 : bool = u_xlatb3.x;
  let x_1788 : f32 = u_xlat59;
  u_xlat59 = select(x_1788, 1.0f, x_1787);
  let x_1790 : vec3<f32> = vs_TEXCOORD1;
  let x_1793 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1795 : vec3<f32> = (x_1790 + -(x_1793));
  let x_1796 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
  let x_1798 : vec4<f32> = u_xlat3;
  let x_1800 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_1798.x, x_1798.y, x_1798.z), vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
  let x_1805 : f32 = u_xlat3.x;
  let x_1807 : f32 = x_169.x_MainLightShadowParams.z;
  let x_1810 : f32 = x_169.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_1805 * x_1807) + x_1810);
  let x_1814 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1814, 0.0f, 1.0f);
  let x_1818 : f32 = u_xlat59;
  u_xlat22 = (-(x_1818) + 1.0f);
  let x_1822 : f32 = u_xlat3.x;
  let x_1823 : f32 = u_xlat22;
  let x_1825 : f32 = u_xlat59;
  u_xlat59 = ((x_1822 * x_1823) + x_1825);
  let x_1833 : f32 = x_1831.x_MainLightCookieTextureFormat;
  u_xlatb3.x = !((x_1833 == -1.0f));
  let x_1837 : bool = u_xlatb3.x;
  if (x_1837) {
    let x_1840 : vec3<f32> = vs_TEXCOORD1;
    let x_1843 : vec4<f32> = x_1831.x_MainLightWorldToLight[1i];
    let x_1845 : vec2<f32> = (vec2<f32>(x_1840.y, x_1840.y) * vec2<f32>(x_1843.x, x_1843.y));
    let x_1846 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1845.x, x_1845.y, x_1846.z, x_1846.w);
    let x_1849 : vec4<f32> = x_1831.x_MainLightWorldToLight[0i];
    let x_1851 : vec3<f32> = vs_TEXCOORD1;
    let x_1854 : vec4<f32> = u_xlat3;
    let x_1856 : vec2<f32> = ((vec2<f32>(x_1849.x, x_1849.y) * vec2<f32>(x_1851.x, x_1851.x)) + vec2<f32>(x_1854.x, x_1854.y));
    let x_1857 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1856.x, x_1856.y, x_1857.z, x_1857.w);
    let x_1860 : vec4<f32> = x_1831.x_MainLightWorldToLight[2i];
    let x_1862 : vec3<f32> = vs_TEXCOORD1;
    let x_1865 : vec4<f32> = u_xlat3;
    let x_1867 : vec2<f32> = ((vec2<f32>(x_1860.x, x_1860.y) * vec2<f32>(x_1862.z, x_1862.z)) + vec2<f32>(x_1865.x, x_1865.y));
    let x_1868 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1867.x, x_1867.y, x_1868.z, x_1868.w);
    let x_1870 : vec4<f32> = u_xlat3;
    let x_1873 : vec4<f32> = x_1831.x_MainLightWorldToLight[3i];
    let x_1875 : vec2<f32> = (vec2<f32>(x_1870.x, x_1870.y) + vec2<f32>(x_1873.x, x_1873.y));
    let x_1876 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1875.x, x_1875.y, x_1876.z, x_1876.w);
    let x_1878 : vec4<f32> = u_xlat3;
    let x_1881 : vec2<f32> = ((vec2<f32>(x_1878.x, x_1878.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1882 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1881.x, x_1881.y, x_1882.z, x_1882.w);
    let x_1889 : vec4<f32> = u_xlat3;
    let x_1892 : f32 = x_44.x_GlobalMipBias.x;
    let x_1893 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1889.x, x_1889.y), x_1892);
    u_xlat3 = x_1893;
    let x_1898 : f32 = x_1831.x_MainLightCookieTextureFormat;
    let x_1900 : f32 = x_1831.x_MainLightCookieTextureFormat;
    let x_1902 : f32 = x_1831.x_MainLightCookieTextureFormat;
    let x_1904 : f32 = x_1831.x_MainLightCookieTextureFormat;
    let x_1905 : vec4<f32> = vec4<f32>(x_1898, x_1900, x_1902, x_1904);
    let x_1912 : vec4<bool> = (vec4<f32>(x_1905.x, x_1905.y, x_1905.z, x_1905.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1912.x, x_1912.y);
    let x_1915 : bool = u_xlatb5.y;
    if (x_1915) {
      let x_1920 : f32 = u_xlat3.w;
      x_1916 = x_1920;
    } else {
      let x_1923 : f32 = u_xlat3.x;
      x_1916 = x_1923;
    }
    let x_1924 : f32 = x_1916;
    u_xlat60 = x_1924;
    let x_1926 : bool = u_xlatb5.x;
    if (x_1926) {
      let x_1930 : vec4<f32> = u_xlat3;
      x_1927 = vec3<f32>(x_1930.x, x_1930.y, x_1930.z);
    } else {
      let x_1933 : f32 = u_xlat60;
      x_1927 = vec3<f32>(x_1933, x_1933, x_1933);
    }
    let x_1935 : vec3<f32> = x_1927;
    let x_1936 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1935.x, x_1935.y, x_1935.z, x_1936.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1942 : vec4<f32> = u_xlat3;
  let x_1945 : vec4<f32> = x_44.x_MainLightColor;
  let x_1947 : vec3<f32> = (vec3<f32>(x_1942.x, x_1942.y, x_1942.z) * vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
  let x_1948 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
  let x_1950 : vec4<f32> = u_xlat1;
  let x_1952 : vec4<f32> = u_xlat3;
  let x_1954 : vec3<f32> = (vec3<f32>(x_1950.x, x_1950.x, x_1950.x) * vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
  let x_1955 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
  let x_1957 : f32 = u_xlat57;
  let x_1959 : vec4<f32> = u_xlat4;
  let x_1961 : vec3<f32> = (vec3<f32>(x_1957, x_1957, x_1957) * vec3<f32>(x_1959.x, x_1959.y, x_1959.z));
  let x_1962 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1961.x, x_1961.y, x_1961.z, x_1962.w);
  let x_1964 : f32 = u_xlat59;
  let x_1966 : f32 = x_402.unity_LightData.z;
  u_xlat57 = (x_1964 * x_1966);
  let x_1968 : f32 = u_xlat57;
  let x_1970 : vec4<f32> = u_xlat3;
  let x_1972 : vec3<f32> = (vec3<f32>(x_1968, x_1968, x_1968) * vec3<f32>(x_1970.x, x_1970.y, x_1970.z));
  let x_1973 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1972.x, x_1972.y, x_1972.z, x_1973.w);
  let x_1975 : vec4<f32> = u_xlat2;
  let x_1978 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat57 = dot(vec3<f32>(x_1975.x, x_1975.y, x_1975.z), vec3<f32>(x_1978.x, x_1978.y, x_1978.z));
  let x_1981 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1981, 0.0f, 1.0f);
  let x_1983 : f32 = u_xlat57;
  let x_1985 : vec4<f32> = u_xlat3;
  let x_1987 : vec3<f32> = (vec3<f32>(x_1983, x_1983, x_1983) * vec3<f32>(x_1985.x, x_1985.y, x_1985.z));
  let x_1988 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1987.x, x_1987.y, x_1987.z, x_1988.w);
  let x_1990 : vec4<f32> = u_xlat1;
  let x_1992 : vec4<f32> = u_xlat3;
  let x_1994 : vec3<f32> = (vec3<f32>(x_1990.y, x_1990.z, x_1990.w) * vec3<f32>(x_1992.x, x_1992.y, x_1992.z));
  let x_1995 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1994.x, x_1994.y, x_1994.z, x_1995.w);
  let x_1998 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2000 : f32 = x_402.unity_LightData.y;
  u_xlat57 = min(x_1998, x_2000);
  let x_2003 : f32 = u_xlat57;
  u_xlatu57 = bitcast<u32>(i32(x_2003));
  let x_2007 : f32 = x_1831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2009 : f32 = x_1831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2011 : f32 = x_1831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2013 : f32 = x_1831.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2014 : vec4<f32> = vec4<f32>(x_2007, x_2009, x_2011, x_2013);
  let x_2020 : vec4<bool> = (vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2014.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_2020.x, x_2020.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2031 : u32 = u_xlatu_loop_1;
    let x_2032 : u32 = u_xlatu57;
    if ((x_2031 < x_2032)) {
    } else {
      break;
    }
    let x_2035 : u32 = u_xlatu_loop_1;
    u_xlatu60 = (x_2035 >> 2u);
    let x_2038 : u32 = u_xlatu_loop_1;
    u_xlati61 = bitcast<i32>((x_2038 & 3u));
    let x_2041 : u32 = u_xlatu60;
    let x_2044 : vec4<f32> = x_402.unity_LightIndices[bitcast<i32>(x_2041)];
    let x_2054 : i32 = u_xlati61;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2059 : vec4<u32> = indexable[x_2054];
    u_xlat60 = dot(x_2044, bitcast<vec4<f32>>(x_2059));
    let x_2062 : f32 = u_xlat60;
    u_xlatu60 = bitcast<u32>(i32(x_2062));
    let x_2065 : vec3<f32> = vs_TEXCOORD1;
    let x_2077 : u32 = u_xlatu60;
    let x_2080 : vec4<f32> = x_2076.x_AdditionalLightsPosition[bitcast<i32>(x_2077)];
    let x_2083 : u32 = u_xlatu60;
    let x_2086 : vec4<f32> = x_2076.x_AdditionalLightsPosition[bitcast<i32>(x_2083)];
    let x_2088 : vec3<f32> = ((-(x_2065) * vec3<f32>(x_2080.w, x_2080.w, x_2080.w)) + vec3<f32>(x_2086.x, x_2086.y, x_2086.z));
    let x_2089 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2088.x, x_2088.y, x_2088.z, x_2089.w);
    let x_2091 : vec4<f32> = u_xlat7;
    let x_2093 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2091.x, x_2091.y, x_2091.z), vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
    let x_2096 : f32 = u_xlat61;
    u_xlat61 = max(x_2096, 6.10351562e-05f);
    let x_2099 : f32 = u_xlat61;
    u_xlat43.x = inverseSqrt(x_2099);
    let x_2102 : vec2<f32> = u_xlat43;
    let x_2104 : vec4<f32> = u_xlat7;
    let x_2106 : vec3<f32> = (vec3<f32>(x_2102.x, x_2102.x, x_2102.x) * vec3<f32>(x_2104.x, x_2104.y, x_2104.z));
    let x_2107 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2106.x, x_2106.y, x_2106.z, x_2107.w);
    let x_2109 : f32 = u_xlat61;
    u_xlat43.x = (1.0f / x_2109);
    let x_2112 : f32 = u_xlat61;
    let x_2113 : u32 = u_xlatu60;
    let x_2116 : f32 = x_2076.x_AdditionalLightsAttenuation[bitcast<i32>(x_2113)].x;
    u_xlat61 = (x_2112 * x_2116);
    let x_2118 : f32 = u_xlat61;
    let x_2120 : f32 = u_xlat61;
    u_xlat61 = ((-(x_2118) * x_2120) + 1.0f);
    let x_2123 : f32 = u_xlat61;
    u_xlat61 = max(x_2123, 0.0f);
    let x_2125 : f32 = u_xlat61;
    let x_2126 : f32 = u_xlat61;
    u_xlat61 = (x_2125 * x_2126);
    let x_2128 : f32 = u_xlat61;
    let x_2130 : f32 = u_xlat43.x;
    u_xlat61 = (x_2128 * x_2130);
    let x_2132 : u32 = u_xlatu60;
    let x_2135 : vec4<f32> = x_2076.x_AdditionalLightsSpotDir[bitcast<i32>(x_2132)];
    let x_2137 : vec4<f32> = u_xlat7;
    u_xlat43.x = dot(vec3<f32>(x_2135.x, x_2135.y, x_2135.z), vec3<f32>(x_2137.x, x_2137.y, x_2137.z));
    let x_2142 : f32 = u_xlat43.x;
    let x_2143 : u32 = u_xlatu60;
    let x_2146 : f32 = x_2076.x_AdditionalLightsAttenuation[bitcast<i32>(x_2143)].z;
    let x_2148 : u32 = u_xlatu60;
    let x_2151 : f32 = x_2076.x_AdditionalLightsAttenuation[bitcast<i32>(x_2148)].w;
    u_xlat43.x = ((x_2142 * x_2146) + x_2151);
    let x_2155 : f32 = u_xlat43.x;
    u_xlat43.x = clamp(x_2155, 0.0f, 1.0f);
    let x_2159 : f32 = u_xlat43.x;
    let x_2161 : f32 = u_xlat43.x;
    u_xlat43.x = (x_2159 * x_2161);
    let x_2164 : f32 = u_xlat61;
    let x_2166 : f32 = u_xlat43.x;
    u_xlat61 = (x_2164 * x_2166);
    let x_2169 : u32 = u_xlatu60;
    u_xlatu43 = (x_2169 >> 5u);
    let x_2172 : u32 = u_xlatu60;
    u_xlati62 = (1i << bitcast<u32>((bitcast<i32>(x_2172) & 31i)));
    let x_2178 : i32 = u_xlati62;
    let x_2180 : u32 = u_xlatu43;
    let x_2183 : f32 = x_1831.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2180)].el;
    u_xlati43 = bitcast<i32>((bitcast<u32>(x_2178) & bitcast<u32>(x_2183)));
    let x_2187 : i32 = u_xlati43;
    if ((x_2187 != 0i)) {
      let x_2197 : u32 = u_xlatu60;
      let x_2200 : f32 = x_2196.x_AdditionalLightsLightTypes[bitcast<i32>(x_2197)].el;
      u_xlati43 = i32(x_2200);
      let x_2202 : i32 = u_xlati43;
      u_xlati62 = select(1i, 0i, (x_2202 != 0i));
      let x_2206 : u32 = u_xlatu60;
      u_xlati63 = (bitcast<i32>(x_2206) << bitcast<u32>(2i));
      let x_2209 : i32 = u_xlati62;
      if ((x_2209 != 0i)) {
        let x_2213 : vec3<f32> = vs_TEXCOORD1;
        let x_2215 : i32 = u_xlati63;
        let x_2218 : i32 = u_xlati63;
        let x_2222 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[((x_2215 + 1i) / 4i)][((x_2218 + 1i) % 4i)];
        let x_2224 : vec3<f32> = (vec3<f32>(x_2213.y, x_2213.y, x_2213.y) * vec3<f32>(x_2222.x, x_2222.y, x_2222.w));
        let x_2225 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2224.x, x_2224.y, x_2224.z, x_2225.w);
        let x_2227 : i32 = u_xlati63;
        let x_2229 : i32 = u_xlati63;
        let x_2232 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[(x_2227 / 4i)][(x_2229 % 4i)];
        let x_2234 : vec3<f32> = vs_TEXCOORD1;
        let x_2237 : vec4<f32> = u_xlat8;
        let x_2239 : vec3<f32> = ((vec3<f32>(x_2232.x, x_2232.y, x_2232.w) * vec3<f32>(x_2234.x, x_2234.x, x_2234.x)) + vec3<f32>(x_2237.x, x_2237.y, x_2237.z));
        let x_2240 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2239.x, x_2239.y, x_2239.z, x_2240.w);
        let x_2242 : i32 = u_xlati63;
        let x_2245 : i32 = u_xlati63;
        let x_2249 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[((x_2242 + 2i) / 4i)][((x_2245 + 2i) % 4i)];
        let x_2251 : vec3<f32> = vs_TEXCOORD1;
        let x_2254 : vec4<f32> = u_xlat8;
        let x_2256 : vec3<f32> = ((vec3<f32>(x_2249.x, x_2249.y, x_2249.w) * vec3<f32>(x_2251.z, x_2251.z, x_2251.z)) + vec3<f32>(x_2254.x, x_2254.y, x_2254.z));
        let x_2257 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
        let x_2259 : vec4<f32> = u_xlat8;
        let x_2261 : i32 = u_xlati63;
        let x_2264 : i32 = u_xlati63;
        let x_2268 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[((x_2261 + 3i) / 4i)][((x_2264 + 3i) % 4i)];
        let x_2270 : vec3<f32> = (vec3<f32>(x_2259.x, x_2259.y, x_2259.z) + vec3<f32>(x_2268.x, x_2268.y, x_2268.w));
        let x_2271 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2270.x, x_2270.y, x_2270.z, x_2271.w);
        let x_2273 : vec4<f32> = u_xlat8;
        let x_2275 : vec4<f32> = u_xlat8;
        let x_2277 : vec2<f32> = (vec2<f32>(x_2273.x, x_2273.y) / vec2<f32>(x_2275.z, x_2275.z));
        let x_2278 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2277.x, x_2277.y, x_2278.z, x_2278.w);
        let x_2280 : vec4<f32> = u_xlat8;
        let x_2283 : vec2<f32> = ((vec2<f32>(x_2280.x, x_2280.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2284 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2283.x, x_2283.y, x_2284.z, x_2284.w);
        let x_2286 : vec4<f32> = u_xlat8;
        let x_2290 : vec2<f32> = clamp(vec2<f32>(x_2286.x, x_2286.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2291 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2290.x, x_2290.y, x_2291.z, x_2291.w);
        let x_2293 : u32 = u_xlatu60;
        let x_2296 : vec4<f32> = x_2196.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2293)];
        let x_2298 : vec4<f32> = u_xlat8;
        let x_2301 : u32 = u_xlatu60;
        let x_2304 : vec4<f32> = x_2196.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2301)];
        let x_2306 : vec2<f32> = ((vec2<f32>(x_2296.x, x_2296.y) * vec2<f32>(x_2298.x, x_2298.y)) + vec2<f32>(x_2304.z, x_2304.w));
        let x_2307 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2306.x, x_2306.y, x_2307.z, x_2307.w);
      } else {
        let x_2311 : i32 = u_xlati43;
        u_xlatb43 = (x_2311 == 1i);
        let x_2313 : bool = u_xlatb43;
        u_xlati43 = select(0i, 1i, x_2313);
        let x_2315 : i32 = u_xlati43;
        if ((x_2315 != 0i)) {
          let x_2319 : vec3<f32> = vs_TEXCOORD1;
          let x_2321 : i32 = u_xlati63;
          let x_2324 : i32 = u_xlati63;
          let x_2328 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[((x_2321 + 1i) / 4i)][((x_2324 + 1i) % 4i)];
          u_xlat43 = (vec2<f32>(x_2319.y, x_2319.y) * vec2<f32>(x_2328.x, x_2328.y));
          let x_2331 : i32 = u_xlati63;
          let x_2333 : i32 = u_xlati63;
          let x_2336 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[(x_2331 / 4i)][(x_2333 % 4i)];
          let x_2338 : vec3<f32> = vs_TEXCOORD1;
          let x_2341 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2336.x, x_2336.y) * vec2<f32>(x_2338.x, x_2338.x)) + x_2341);
          let x_2343 : i32 = u_xlati63;
          let x_2346 : i32 = u_xlati63;
          let x_2350 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[((x_2343 + 2i) / 4i)][((x_2346 + 2i) % 4i)];
          let x_2352 : vec3<f32> = vs_TEXCOORD1;
          let x_2355 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2350.x, x_2350.y) * vec2<f32>(x_2352.z, x_2352.z)) + x_2355);
          let x_2357 : vec2<f32> = u_xlat43;
          let x_2358 : i32 = u_xlati63;
          let x_2361 : i32 = u_xlati63;
          let x_2365 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[((x_2358 + 3i) / 4i)][((x_2361 + 3i) % 4i)];
          u_xlat43 = (x_2357 + vec2<f32>(x_2365.x, x_2365.y));
          let x_2368 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2368 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2371 : vec2<f32> = u_xlat43;
          u_xlat43 = fract(x_2371);
          let x_2373 : u32 = u_xlatu60;
          let x_2376 : vec4<f32> = x_2196.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2373)];
          let x_2378 : vec2<f32> = u_xlat43;
          let x_2380 : u32 = u_xlatu60;
          let x_2383 : vec4<f32> = x_2196.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2380)];
          let x_2385 : vec2<f32> = ((vec2<f32>(x_2376.x, x_2376.y) * x_2378) + vec2<f32>(x_2383.z, x_2383.w));
          let x_2386 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2385.x, x_2385.y, x_2386.z, x_2386.w);
        } else {
          let x_2389 : vec3<f32> = vs_TEXCOORD1;
          let x_2391 : i32 = u_xlati63;
          let x_2394 : i32 = u_xlati63;
          let x_2398 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[((x_2391 + 1i) / 4i)][((x_2394 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2389.y, x_2389.y, x_2389.y, x_2389.y) * x_2398);
          let x_2400 : i32 = u_xlati63;
          let x_2402 : i32 = u_xlati63;
          let x_2405 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[(x_2400 / 4i)][(x_2402 % 4i)];
          let x_2406 : vec3<f32> = vs_TEXCOORD1;
          let x_2409 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2405 * vec4<f32>(x_2406.x, x_2406.x, x_2406.x, x_2406.x)) + x_2409);
          let x_2411 : i32 = u_xlati63;
          let x_2414 : i32 = u_xlati63;
          let x_2418 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[((x_2411 + 2i) / 4i)][((x_2414 + 2i) % 4i)];
          let x_2419 : vec3<f32> = vs_TEXCOORD1;
          let x_2422 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2418 * vec4<f32>(x_2419.z, x_2419.z, x_2419.z, x_2419.z)) + x_2422);
          let x_2424 : vec4<f32> = u_xlat9;
          let x_2425 : i32 = u_xlati63;
          let x_2428 : i32 = u_xlati63;
          let x_2432 : vec4<f32> = x_2196.x_AdditionalLightsWorldToLights[((x_2425 + 3i) / 4i)][((x_2428 + 3i) % 4i)];
          u_xlat9 = (x_2424 + x_2432);
          let x_2434 : vec4<f32> = u_xlat9;
          let x_2436 : vec4<f32> = u_xlat9;
          let x_2438 : vec3<f32> = (vec3<f32>(x_2434.x, x_2434.y, x_2434.z) / vec3<f32>(x_2436.w, x_2436.w, x_2436.w));
          let x_2439 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2438.x, x_2438.y, x_2438.z, x_2439.w);
          let x_2441 : vec4<f32> = u_xlat9;
          let x_2443 : vec4<f32> = u_xlat9;
          u_xlat43.x = dot(vec3<f32>(x_2441.x, x_2441.y, x_2441.z), vec3<f32>(x_2443.x, x_2443.y, x_2443.z));
          let x_2448 : f32 = u_xlat43.x;
          u_xlat43.x = inverseSqrt(x_2448);
          let x_2451 : vec2<f32> = u_xlat43;
          let x_2453 : vec4<f32> = u_xlat9;
          let x_2455 : vec3<f32> = (vec3<f32>(x_2451.x, x_2451.x, x_2451.x) * vec3<f32>(x_2453.x, x_2453.y, x_2453.z));
          let x_2456 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2455.x, x_2455.y, x_2455.z, x_2456.w);
          let x_2458 : vec4<f32> = u_xlat9;
          u_xlat43.x = dot(abs(vec3<f32>(x_2458.x, x_2458.y, x_2458.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2465 : f32 = u_xlat43.x;
          u_xlat43.x = max(x_2465, 0.000001f);
          let x_2470 : f32 = u_xlat43.x;
          u_xlat43.x = (1.0f / x_2470);
          let x_2473 : vec2<f32> = u_xlat43;
          let x_2475 : vec4<f32> = u_xlat9;
          let x_2477 : vec3<f32> = (vec3<f32>(x_2473.x, x_2473.x, x_2473.x) * vec3<f32>(x_2475.z, x_2475.x, x_2475.y));
          let x_2478 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2477.x, x_2477.y, x_2477.z, x_2478.w);
          let x_2481 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2481);
          let x_2485 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2485, 0.0f, 1.0f);
          let x_2489 : vec4<f32> = u_xlat10;
          let x_2492 : vec4<bool> = (vec4<f32>(x_2489.y, x_2489.z, x_2489.y, x_2489.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb46 = vec2<bool>(x_2492.x, x_2492.y);
          let x_2495 : bool = u_xlatb46.x;
          if (x_2495) {
            let x_2500 : f32 = u_xlat10.x;
            x_2496 = x_2500;
          } else {
            let x_2503 : f32 = u_xlat10.x;
            x_2496 = -(x_2503);
          }
          let x_2505 : f32 = x_2496;
          u_xlat46.x = x_2505;
          let x_2508 : bool = u_xlatb46.y;
          if (x_2508) {
            let x_2513 : f32 = u_xlat10.x;
            x_2509 = x_2513;
          } else {
            let x_2516 : f32 = u_xlat10.x;
            x_2509 = -(x_2516);
          }
          let x_2518 : f32 = x_2509;
          u_xlat46.y = x_2518;
          let x_2520 : vec4<f32> = u_xlat9;
          let x_2522 : vec2<f32> = u_xlat43;
          let x_2525 : vec2<f32> = u_xlat46;
          u_xlat43 = ((vec2<f32>(x_2520.x, x_2520.y) * vec2<f32>(x_2522.x, x_2522.x)) + x_2525);
          let x_2527 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2527 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2530 : vec2<f32> = u_xlat43;
          u_xlat43 = clamp(x_2530, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2534 : u32 = u_xlatu60;
          let x_2537 : vec4<f32> = x_2196.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2534)];
          let x_2539 : vec2<f32> = u_xlat43;
          let x_2541 : u32 = u_xlatu60;
          let x_2544 : vec4<f32> = x_2196.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2541)];
          let x_2546 : vec2<f32> = ((vec2<f32>(x_2537.x, x_2537.y) * x_2539) + vec2<f32>(x_2544.z, x_2544.w));
          let x_2547 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2546.x, x_2546.y, x_2547.z, x_2547.w);
        }
      }
      let x_2554 : vec4<f32> = u_xlat8;
      let x_2557 : f32 = x_44.x_GlobalMipBias.x;
      let x_2558 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2554.x, x_2554.y), x_2557);
      u_xlat8 = x_2558;
      let x_2560 : bool = u_xlatb5.y;
      if (x_2560) {
        let x_2565 : f32 = u_xlat8.w;
        x_2561 = x_2565;
      } else {
        let x_2568 : f32 = u_xlat8.x;
        x_2561 = x_2568;
      }
      let x_2569 : f32 = x_2561;
      u_xlat43.x = x_2569;
      let x_2572 : bool = u_xlatb5.x;
      if (x_2572) {
        let x_2576 : vec4<f32> = u_xlat8;
        x_2573 = vec3<f32>(x_2576.x, x_2576.y, x_2576.z);
      } else {
        let x_2579 : vec2<f32> = u_xlat43;
        x_2573 = vec3<f32>(x_2579.x, x_2579.x, x_2579.x);
      }
      let x_2581 : vec3<f32> = x_2573;
      let x_2582 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2581.x, x_2581.y, x_2581.z, x_2582.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2588 : vec4<f32> = u_xlat8;
    let x_2590 : u32 = u_xlatu60;
    let x_2593 : vec4<f32> = x_2076.x_AdditionalLightsColor[bitcast<i32>(x_2590)];
    let x_2595 : vec3<f32> = (vec3<f32>(x_2588.x, x_2588.y, x_2588.z) * vec3<f32>(x_2593.x, x_2593.y, x_2593.z));
    let x_2596 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2595.x, x_2595.y, x_2595.z, x_2596.w);
    let x_2598 : vec4<f32> = u_xlat1;
    let x_2600 : vec4<f32> = u_xlat8;
    let x_2602 : vec3<f32> = (vec3<f32>(x_2598.x, x_2598.x, x_2598.x) * vec3<f32>(x_2600.x, x_2600.y, x_2600.z));
    let x_2603 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2602.x, x_2602.y, x_2602.z, x_2603.w);
    let x_2605 : f32 = u_xlat61;
    let x_2607 : vec4<f32> = u_xlat8;
    let x_2609 : vec3<f32> = (vec3<f32>(x_2605, x_2605, x_2605) * vec3<f32>(x_2607.x, x_2607.y, x_2607.z));
    let x_2610 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2609.x, x_2609.y, x_2609.z, x_2610.w);
    let x_2612 : vec4<f32> = u_xlat2;
    let x_2614 : vec4<f32> = u_xlat7;
    u_xlat60 = dot(vec3<f32>(x_2612.x, x_2612.y, x_2612.z), vec3<f32>(x_2614.x, x_2614.y, x_2614.z));
    let x_2617 : f32 = u_xlat60;
    u_xlat60 = clamp(x_2617, 0.0f, 1.0f);
    let x_2619 : f32 = u_xlat60;
    let x_2621 : vec4<f32> = u_xlat8;
    let x_2623 : vec3<f32> = (vec3<f32>(x_2619, x_2619, x_2619) * vec3<f32>(x_2621.x, x_2621.y, x_2621.z));
    let x_2624 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2623.x, x_2623.y, x_2623.z, x_2624.w);
    let x_2626 : vec4<f32> = u_xlat7;
    let x_2628 : vec4<f32> = u_xlat1;
    let x_2631 : vec4<f32> = u_xlat6;
    let x_2633 : vec3<f32> = ((vec3<f32>(x_2626.x, x_2626.y, x_2626.z) * vec3<f32>(x_2628.y, x_2628.z, x_2628.w)) + vec3<f32>(x_2631.x, x_2631.y, x_2631.z));
    let x_2634 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2633.x, x_2633.y, x_2633.z, x_2634.w);

    continuing {
      let x_2636 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2636 + bitcast<u32>(1i));
    }
  }
  let x_2638 : vec4<f32> = u_xlat4;
  let x_2640 : vec4<f32> = u_xlat1;
  let x_2643 : vec4<f32> = u_xlat3;
  let x_2645 : vec3<f32> = ((vec3<f32>(x_2638.x, x_2638.y, x_2638.z) * vec3<f32>(x_2640.y, x_2640.z, x_2640.w)) + vec3<f32>(x_2643.x, x_2643.y, x_2643.z));
  let x_2646 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2645.x, x_2645.y, x_2645.z, x_2646.w);
  let x_2648 : vec4<f32> = u_xlat6;
  let x_2650 : vec4<f32> = u_xlat1;
  let x_2652 : vec3<f32> = (vec3<f32>(x_2648.x, x_2648.y, x_2648.z) + vec3<f32>(x_2650.x, x_2650.y, x_2650.z));
  let x_2653 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2652.x, x_2652.y, x_2652.z, x_2653.w);
  let x_2655 : f32 = u_xlat19;
  let x_2656 : f32 = u_xlat19;
  u_xlat19 = (x_2655 * -(x_2656));
  let x_2659 : f32 = u_xlat19;
  u_xlat19 = exp2(x_2659);
  let x_2661 : vec4<f32> = u_xlat1;
  let x_2665 : vec4<f32> = x_44.unity_FogColor;
  let x_2668 : vec3<f32> = (vec3<f32>(x_2661.x, x_2661.y, x_2661.z) + -(vec3<f32>(x_2665.x, x_2665.y, x_2665.z)));
  let x_2669 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2668.x, x_2668.y, x_2668.z, x_2669.w);
  let x_2673 : f32 = u_xlat19;
  let x_2675 : vec4<f32> = u_xlat1;
  let x_2679 : vec4<f32> = x_44.unity_FogColor;
  let x_2681 : vec3<f32> = ((vec3<f32>(x_2673, x_2673, x_2673) * vec3<f32>(x_2675.x, x_2675.y, x_2675.z)) + vec3<f32>(x_2679.x, x_2679.y, x_2679.z));
  let x_2682 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2681.x, x_2681.y, x_2681.z, x_2682.w);
  let x_2685 : f32 = x_57.x_Surface;
  u_xlatb19 = (x_2685 == 1.0f);
  let x_2687 : bool = u_xlatb19;
  let x_2688 : bool = u_xlatb38;
  u_xlatb19 = (x_2687 | x_2688);
  let x_2690 : bool = u_xlatb19;
  if (x_2690) {
    let x_2695 : f32 = u_xlat0.x;
    x_2691 = x_2695;
  } else {
    x_2691 = 1.0f;
  }
  let x_2697 : f32 = x_2691;
  SV_Target0.w = x_2697;
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

