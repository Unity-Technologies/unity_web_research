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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_277 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_1851 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2010 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlat40 : f32;
  var u_xlat60 : f32;
  var u_xlatb40 : bool;
  var x_130 : f32;
  var u_xlatb20 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlatb4 : vec4<bool>;
  var u_xlatu60 : u32;
  var u_xlati60 : i32;
  var u_xlatb62 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlatb63 : bool;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat63 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat64 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
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
  var u_xlatu62 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu64 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati64 : i32;
  var u_xlat66 : f32;
  var x_2212 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat20.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat40 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat60 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat60;
  let x_104 : f32 = u_xlat40;
  u_xlat40 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat40;
  u_xlat40 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat20.x;
  let x_112 : f32 = u_xlat40;
  u_xlat20.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat20.x;
  u_xlat20.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb40 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb40;
  if (x_129) {
    let x_134 : f32 = u_xlat20.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat20.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat20.x;
  u_xlatb20 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb20;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_164 : vec2<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_43.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_164, x_166);
  u_xlat2 = vec3<f32>(x_167.x, x_167.y, x_167.w);
  let x_170 : f32 = u_xlat2.x;
  let x_173 : f32 = u_xlat2.z;
  u_xlat2.x = (x_170 * x_173);
  let x_176 : vec3<f32> = u_xlat2;
  let x_183 : vec2<f32> = ((vec2<f32>(x_176.x, x_176.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_184 : vec3<f32> = u_xlat20;
  u_xlat20 = vec3<f32>(x_183.x, x_184.y, x_183.y);
  let x_186 : vec3<f32> = u_xlat20;
  let x_188 : vec3<f32> = u_xlat20;
  u_xlat1.x = dot(vec2<f32>(x_186.x, x_186.z), vec2<f32>(x_188.x, x_188.z));
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_193, 1.0f);
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_197) + 1.0f);
  let x_202 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_202);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_206, 1.00000002e-16f);
  let x_210 : vec3<f32> = u_xlat20;
  let x_213 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_210.z, x_210.z, x_210.z) * vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec3<f32> = u_xlat20;
  let x_219 : vec4<f32> = vs_TEXCOORD3;
  let x_222 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_216.x, x_216.x, x_216.x) * vec3<f32>(x_219.x, x_219.y, x_219.z)) + x_222);
  let x_224 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = vs_TEXCOORD2;
  let x_230 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_224.x, x_224.x, x_224.x) * vec3<f32>(x_227.x, x_227.y, x_227.z)) + x_230);
  let x_232 : vec3<f32> = u_xlat2;
  let x_233 : vec3<f32> = u_xlat2;
  u_xlat20.x = dot(x_232, x_233);
  let x_237 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_237);
  let x_240 : vec3<f32> = u_xlat20;
  let x_242 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_240.x, x_240.x, x_240.x) * x_242);
  let x_246 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_246;
  let x_249 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_249;
  let x_253 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_253;
  let x_255 : vec3<f32> = u_xlat3;
  let x_256 : vec3<f32> = u_xlat3;
  u_xlat20.x = dot(x_255, x_256);
  let x_260 : f32 = u_xlat20.x;
  u_xlat20.x = max(x_260, 1.17549435e-37f);
  let x_265 : f32 = u_xlat20.x;
  u_xlat20.x = inverseSqrt(x_265);
  let x_271 : vec3<f32> = vs_TEXCOORD1;
  let x_279 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres0;
  let x_282 : vec3<f32> = (x_271 + -(vec3<f32>(x_279.x, x_279.y, x_279.z)));
  let x_283 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_282.x, x_282.y, x_282.z, x_283.w);
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres1;
  let x_291 : vec3<f32> = (x_286 + -(vec3<f32>(x_288.x, x_288.y, x_288.z)));
  let x_292 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_291.x, x_291.y, x_291.z, x_292.w);
  let x_295 : vec3<f32> = vs_TEXCOORD1;
  let x_298 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres2;
  let x_301 : vec3<f32> = (x_295 + -(vec3<f32>(x_298.x, x_298.y, x_298.z)));
  let x_302 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_305 : vec3<f32> = vs_TEXCOORD1;
  let x_307 : vec4<f32> = x_277.x_CascadeShadowSplitSpheres3;
  let x_310 : vec3<f32> = (x_305 + -(vec3<f32>(x_307.x, x_307.y, x_307.z)));
  let x_311 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_310.x, x_310.y, x_310.z, x_311.w);
  let x_313 : vec4<f32> = u_xlat4;
  let x_315 : vec4<f32> = u_xlat4;
  u_xlat4.x = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_319 : vec4<f32> = u_xlat5;
  let x_321 : vec4<f32> = u_xlat5;
  u_xlat4.y = dot(vec3<f32>(x_319.x, x_319.y, x_319.z), vec3<f32>(x_321.x, x_321.y, x_321.z));
  let x_325 : vec4<f32> = u_xlat6;
  let x_327 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_325.x, x_325.y, x_325.z), vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_331 : vec4<f32> = u_xlat7;
  let x_333 : vec4<f32> = u_xlat7;
  u_xlat4.w = dot(vec3<f32>(x_331.x, x_331.y, x_331.z), vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_340 : vec4<f32> = u_xlat4;
  let x_343 : vec4<f32> = x_277.x_CascadeShadowSplitSphereRadii;
  u_xlatb4 = (x_340 < x_343);
  let x_346 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_346);
  let x_350 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_350);
  let x_354 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_354);
  let x_358 : bool = u_xlatb4.w;
  u_xlat5.w = select(0.0f, 1.0f, x_358);
  let x_362 : bool = u_xlatb4.x;
  u_xlat4.x = select(-0.0f, -1.0f, x_362);
  let x_367 : bool = u_xlatb4.y;
  u_xlat4.y = select(-0.0f, -1.0f, x_367);
  let x_371 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.0f, -1.0f, x_371);
  let x_374 : vec4<f32> = u_xlat4;
  let x_376 : vec4<f32> = u_xlat5;
  let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) + vec3<f32>(x_376.y, x_376.z, x_376.w));
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec4<f32> = u_xlat4;
  let x_384 : vec3<f32> = max(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_385 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_385.x, x_384.x, x_384.y, x_384.z);
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat60 = dot(x_387, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_392 : f32 = u_xlat60;
  u_xlat60 = (-(x_392) + 4.0f);
  let x_397 : f32 = u_xlat60;
  u_xlatu60 = u32(x_397);
  let x_401 : u32 = u_xlatu60;
  u_xlati60 = (bitcast<i32>(x_401) << bitcast<u32>(2i));
  let x_404 : vec3<f32> = vs_TEXCOORD1;
  let x_406 : i32 = u_xlati60;
  let x_409 : i32 = u_xlati60;
  let x_413 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_406 + 1i) / 4i)][((x_409 + 1i) % 4i)];
  let x_415 : vec3<f32> = (vec3<f32>(x_404.y, x_404.y, x_404.y) * vec3<f32>(x_413.x, x_413.y, x_413.z));
  let x_416 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_415.x, x_415.y, x_415.z, x_416.w);
  let x_418 : i32 = u_xlati60;
  let x_420 : i32 = u_xlati60;
  let x_423 : vec4<f32> = x_277.x_MainLightWorldToShadow[(x_418 / 4i)][(x_420 % 4i)];
  let x_425 : vec3<f32> = vs_TEXCOORD1;
  let x_428 : vec4<f32> = u_xlat4;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423.x, x_423.y, x_423.z) * vec3<f32>(x_425.x, x_425.x, x_425.x)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_433 : i32 = u_xlati60;
  let x_436 : i32 = u_xlati60;
  let x_440 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_433 + 2i) / 4i)][((x_436 + 2i) % 4i)];
  let x_442 : vec3<f32> = vs_TEXCOORD1;
  let x_445 : vec4<f32> = u_xlat4;
  let x_447 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_442.z, x_442.z, x_442.z)) + vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
  let x_450 : vec4<f32> = u_xlat4;
  let x_452 : i32 = u_xlati60;
  let x_455 : i32 = u_xlati60;
  let x_459 : vec4<f32> = x_277.x_MainLightWorldToShadow[((x_452 + 3i) / 4i)][((x_455 + 3i) % 4i)];
  let x_461 : vec3<f32> = (vec3<f32>(x_450.x, x_450.y, x_450.z) + vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
  let x_470 : vec2<f32> = vs_TEXCOORD7;
  let x_472 : f32 = x_43.x_GlobalMipBias.x;
  let x_473 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_470, x_472);
  u_xlat5 = x_473;
  let x_478 : vec2<f32> = vs_TEXCOORD7;
  let x_480 : f32 = x_43.x_GlobalMipBias.x;
  let x_481 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_478, x_480);
  let x_482 : vec3<f32> = vec3<f32>(x_481.x, x_481.y, x_481.z);
  let x_483 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec4<f32> = u_xlat5;
  let x_489 : vec3<f32> = (vec3<f32>(x_485.x, x_485.y, x_485.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_490 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_492 : vec3<f32> = u_xlat2;
  let x_493 : vec4<f32> = u_xlat5;
  u_xlat60 = dot(x_492, vec3<f32>(x_493.x, x_493.y, x_493.z));
  let x_496 : f32 = u_xlat60;
  u_xlat60 = (x_496 + 0.5f);
  let x_498 : f32 = u_xlat60;
  let x_500 : vec4<f32> = u_xlat6;
  let x_502 : vec3<f32> = (vec3<f32>(x_498, x_498, x_498) * vec3<f32>(x_500.x, x_500.y, x_500.z));
  let x_503 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : f32 = u_xlat5.w;
  u_xlat60 = max(x_506, 0.0001f);
  let x_508 : vec4<f32> = u_xlat5;
  let x_510 : f32 = u_xlat60;
  let x_512 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) / vec3<f32>(x_510, x_510, x_510));
  let x_513 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_517 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_518 : vec2<f32> = vec2<f32>(x_517.x, x_517.y);
  let x_522 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_518.x, x_518.y));
  let x_523 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat6;
  let x_527 : vec4<f32> = hlslcc_FragCoord;
  let x_529 : vec2<f32> = (vec2<f32>(x_525.x, x_525.y) * vec2<f32>(x_527.x, x_527.y));
  let x_530 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
  let x_533 : f32 = u_xlat6.y;
  let x_536 : f32 = x_43.x_ScaleBiasRt.x;
  let x_539 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat60 = ((x_533 * x_536) + x_539);
  let x_541 : f32 = u_xlat60;
  u_xlat6.z = (-(x_541) + 1.0f);
  let x_550 : vec4<f32> = u_xlat6;
  let x_553 : f32 = x_43.x_GlobalMipBias.x;
  let x_554 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_550.x, x_550.z), x_553);
  u_xlat60 = x_554.x;
  let x_556 : f32 = u_xlat60;
  u_xlat1.x = (x_556 + -1.0f);
  let x_560 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_562 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_560 * x_562) + 1.0f);
  let x_566 : f32 = u_xlat60;
  u_xlat60 = min(x_566, 1.0f);
  let x_570 : f32 = x_277.x_MainLightShadowParams.y;
  u_xlatb62 = (0.0f < x_570);
  let x_572 : bool = u_xlatb62;
  if (x_572) {
    let x_576 : f32 = x_277.x_MainLightShadowParams.y;
    u_xlatb62 = (x_576 == 1.0f);
    let x_578 : bool = u_xlatb62;
    if (x_578) {
      let x_581 : vec4<f32> = u_xlat4;
      let x_585 : vec4<f32> = x_277.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y) + x_585);
      let x_588 : vec4<f32> = u_xlat6;
      let x_589 : vec2<f32> = vec2<f32>(x_588.x, x_588.y);
      let x_591 : f32 = u_xlat4.z;
      txVec0 = vec3<f32>(x_589.x, x_589.y, x_591);
      let x_603 : vec3<f32> = txVec0;
      let x_605 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_603.xy, x_603.z);
      u_xlat7.x = x_605;
      let x_608 : vec4<f32> = u_xlat6;
      let x_609 : vec2<f32> = vec2<f32>(x_608.z, x_608.w);
      let x_611 : f32 = u_xlat4.z;
      txVec1 = vec3<f32>(x_609.x, x_609.y, x_611);
      let x_618 : vec3<f32> = txVec1;
      let x_620 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_618.xy, x_618.z);
      u_xlat7.y = x_620;
      let x_622 : vec4<f32> = u_xlat4;
      let x_626 : vec4<f32> = x_277.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_622.x, x_622.y, x_622.x, x_622.y) + x_626);
      let x_629 : vec4<f32> = u_xlat6;
      let x_630 : vec2<f32> = vec2<f32>(x_629.x, x_629.y);
      let x_632 : f32 = u_xlat4.z;
      txVec2 = vec3<f32>(x_630.x, x_630.y, x_632);
      let x_639 : vec3<f32> = txVec2;
      let x_641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_639.xy, x_639.z);
      u_xlat7.z = x_641;
      let x_644 : vec4<f32> = u_xlat6;
      let x_645 : vec2<f32> = vec2<f32>(x_644.z, x_644.w);
      let x_647 : f32 = u_xlat4.z;
      txVec3 = vec3<f32>(x_645.x, x_645.y, x_647);
      let x_654 : vec3<f32> = txVec3;
      let x_656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_654.xy, x_654.z);
      u_xlat7.w = x_656;
      let x_659 : vec4<f32> = u_xlat7;
      u_xlat62 = dot(x_659, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_666 : f32 = x_277.x_MainLightShadowParams.y;
      u_xlatb63 = (x_666 == 2.0f);
      let x_668 : bool = u_xlatb63;
      if (x_668) {
        let x_671 : vec4<f32> = u_xlat4;
        let x_675 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_679 : vec2<f32> = ((vec2<f32>(x_671.x, x_671.y) * vec2<f32>(x_675.z, x_675.w)) + vec2<f32>(0.5f, 0.5f));
        let x_680 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
        let x_682 : vec4<f32> = u_xlat6;
        let x_684 : vec2<f32> = floor(vec2<f32>(x_682.x, x_682.y));
        let x_685 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
        let x_689 : vec4<f32> = u_xlat4;
        let x_692 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_695 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_689.x, x_689.y) * vec2<f32>(x_692.z, x_692.w)) + -(vec2<f32>(x_695.x, x_695.y)));
        let x_699 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_699.x, x_699.x, x_699.y, x_699.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_704 : vec4<f32> = u_xlat7;
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_704.x, x_704.x, x_704.z, x_704.z) * vec4<f32>(x_706.x, x_706.x, x_706.z, x_706.z));
        let x_709 : vec4<f32> = u_xlat8;
        let x_713 : vec2<f32> = (vec2<f32>(x_709.y, x_709.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_714 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_713.x, x_714.y, x_713.y, x_714.w);
        let x_716 : vec4<f32> = u_xlat8;
        let x_719 : vec2<f32> = u_xlat46;
        let x_721 : vec2<f32> = ((vec2<f32>(x_716.x, x_716.z) * vec2<f32>(0.5f, 0.5f)) + -(x_719));
        let x_722 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
        let x_725 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_725) + vec2<f32>(1.0f, 1.0f));
        let x_729 : vec2<f32> = u_xlat46;
        let x_731 : vec2<f32> = min(x_729, vec2<f32>(0.0f, 0.0f));
        let x_732 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_731.x, x_731.y, x_732.z, x_732.w);
        let x_734 : vec4<f32> = u_xlat9;
        let x_737 : vec4<f32> = u_xlat9;
        let x_740 : vec2<f32> = u_xlat48;
        let x_741 : vec2<f32> = ((-(vec2<f32>(x_734.x, x_734.y)) * vec2<f32>(x_737.x, x_737.y)) + x_740);
        let x_742 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_741.x, x_741.y, x_742.z, x_742.w);
        let x_744 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_744, vec2<f32>(0.0f, 0.0f));
        let x_746 : vec2<f32> = u_xlat46;
        let x_748 : vec2<f32> = u_xlat46;
        let x_750 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_746) * x_748) + vec2<f32>(x_750.y, x_750.w));
        let x_753 : vec4<f32> = u_xlat9;
        let x_755 : vec2<f32> = (vec2<f32>(x_753.x, x_753.y) + vec2<f32>(1.0f, 1.0f));
        let x_756 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
        let x_758 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_758 + vec2<f32>(1.0f, 1.0f));
        let x_761 : vec4<f32> = u_xlat8;
        let x_765 : vec2<f32> = (vec2<f32>(x_761.x, x_761.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_766 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
        let x_768 : vec2<f32> = u_xlat48;
        let x_769 : vec2<f32> = (x_768 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_770 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
        let x_772 : vec4<f32> = u_xlat9;
        let x_774 : vec2<f32> = (vec2<f32>(x_772.x, x_772.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_775 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
        let x_778 : vec2<f32> = u_xlat46;
        let x_779 : vec2<f32> = (x_778 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_780 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_779.x, x_779.y, x_780.z, x_780.w);
        let x_782 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_782.y, x_782.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_786 : f32 = u_xlat9.x;
        u_xlat10.z = x_786;
        let x_789 : f32 = u_xlat46.x;
        u_xlat10.w = x_789;
        let x_792 : f32 = u_xlat11.x;
        u_xlat8.z = x_792;
        let x_795 : f32 = u_xlat7.x;
        u_xlat8.w = x_795;
        let x_798 : vec4<f32> = u_xlat8;
        let x_800 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_798.z, x_798.w, x_798.x, x_798.z) + vec4<f32>(x_800.z, x_800.w, x_800.x, x_800.z));
        let x_804 : f32 = u_xlat10.y;
        u_xlat9.z = x_804;
        let x_807 : f32 = u_xlat46.y;
        u_xlat9.w = x_807;
        let x_810 : f32 = u_xlat8.y;
        u_xlat11.z = x_810;
        let x_813 : f32 = u_xlat7.z;
        u_xlat11.w = x_813;
        let x_815 : vec4<f32> = u_xlat9;
        let x_817 : vec4<f32> = u_xlat11;
        let x_819 : vec3<f32> = (vec3<f32>(x_815.z, x_815.y, x_815.w) + vec3<f32>(x_817.z, x_817.y, x_817.w));
        let x_820 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
        let x_822 : vec4<f32> = u_xlat8;
        let x_824 : vec4<f32> = u_xlat12;
        let x_826 : vec3<f32> = (vec3<f32>(x_822.x, x_822.z, x_822.w) / vec3<f32>(x_824.z, x_824.w, x_824.y));
        let x_827 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
        let x_829 : vec4<f32> = u_xlat8;
        let x_834 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_835 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
        let x_837 : vec4<f32> = u_xlat11;
        let x_839 : vec4<f32> = u_xlat7;
        let x_841 : vec3<f32> = (vec3<f32>(x_837.z, x_837.y, x_837.w) / vec3<f32>(x_839.x, x_839.y, x_839.z));
        let x_842 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
        let x_844 : vec4<f32> = u_xlat9;
        let x_846 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_847 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
        let x_849 : vec4<f32> = u_xlat8;
        let x_852 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_854 : vec3<f32> = (vec3<f32>(x_849.y, x_849.x, x_849.z) * vec3<f32>(x_852.x, x_852.x, x_852.x));
        let x_855 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
        let x_857 : vec4<f32> = u_xlat9;
        let x_860 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_862 : vec3<f32> = (vec3<f32>(x_857.x, x_857.y, x_857.z) * vec3<f32>(x_860.y, x_860.y, x_860.y));
        let x_863 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
        let x_866 : f32 = u_xlat9.x;
        u_xlat8.w = x_866;
        let x_868 : vec4<f32> = u_xlat6;
        let x_871 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_874 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_868.x, x_868.y, x_868.x, x_868.y) * vec4<f32>(x_871.x, x_871.y, x_871.x, x_871.y)) + vec4<f32>(x_874.y, x_874.w, x_874.x, x_874.w));
        let x_877 : vec4<f32> = u_xlat6;
        let x_880 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_883 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_877.x, x_877.y) * vec2<f32>(x_880.x, x_880.y)) + vec2<f32>(x_883.z, x_883.w));
        let x_887 : f32 = u_xlat8.y;
        u_xlat9.w = x_887;
        let x_889 : vec4<f32> = u_xlat9;
        let x_890 : vec2<f32> = vec2<f32>(x_889.y, x_889.z);
        let x_891 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_891.x, x_890.x, x_891.z, x_890.y);
        let x_893 : vec4<f32> = u_xlat6;
        let x_896 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_899 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_893.x, x_893.y, x_893.x, x_893.y) * vec4<f32>(x_896.x, x_896.y, x_896.x, x_896.y)) + vec4<f32>(x_899.x, x_899.y, x_899.z, x_899.y));
        let x_902 : vec4<f32> = u_xlat6;
        let x_905 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_908 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_902.x, x_902.y, x_902.x, x_902.y) * vec4<f32>(x_905.x, x_905.y, x_905.x, x_905.y)) + vec4<f32>(x_908.w, x_908.y, x_908.w, x_908.z));
        let x_911 : vec4<f32> = u_xlat6;
        let x_914 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_917 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_911.x, x_911.y, x_911.x, x_911.y) * vec4<f32>(x_914.x, x_914.y, x_914.x, x_914.y)) + vec4<f32>(x_917.x, x_917.w, x_917.z, x_917.w));
        let x_921 : vec4<f32> = u_xlat7;
        let x_923 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_921.x, x_921.x, x_921.x, x_921.y) * vec4<f32>(x_923.z, x_923.w, x_923.y, x_923.z));
        let x_927 : vec4<f32> = u_xlat7;
        let x_929 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_927.y, x_927.y, x_927.z, x_927.z) * x_929);
        let x_933 : f32 = u_xlat7.z;
        let x_935 : f32 = u_xlat12.y;
        u_xlat63 = (x_933 * x_935);
        let x_938 : vec4<f32> = u_xlat10;
        let x_939 : vec2<f32> = vec2<f32>(x_938.x, x_938.y);
        let x_941 : f32 = u_xlat4.z;
        txVec4 = vec3<f32>(x_939.x, x_939.y, x_941);
        let x_949 : vec3<f32> = txVec4;
        let x_951 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_949.xy, x_949.z);
        u_xlat64 = x_951;
        let x_953 : vec4<f32> = u_xlat10;
        let x_954 : vec2<f32> = vec2<f32>(x_953.z, x_953.w);
        let x_956 : f32 = u_xlat4.z;
        txVec5 = vec3<f32>(x_954.x, x_954.y, x_956);
        let x_964 : vec3<f32> = txVec5;
        let x_966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_964.xy, x_964.z);
        u_xlat65 = x_966;
        let x_967 : f32 = u_xlat65;
        let x_969 : f32 = u_xlat13.y;
        u_xlat65 = (x_967 * x_969);
        let x_972 : f32 = u_xlat13.x;
        let x_973 : f32 = u_xlat64;
        let x_975 : f32 = u_xlat65;
        u_xlat64 = ((x_972 * x_973) + x_975);
        let x_978 : vec2<f32> = u_xlat46;
        let x_980 : f32 = u_xlat4.z;
        txVec6 = vec3<f32>(x_978.x, x_978.y, x_980);
        let x_987 : vec3<f32> = txVec6;
        let x_989 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_987.xy, x_987.z);
        u_xlat65 = x_989;
        let x_991 : f32 = u_xlat13.z;
        let x_992 : f32 = u_xlat65;
        let x_994 : f32 = u_xlat64;
        u_xlat64 = ((x_991 * x_992) + x_994);
        let x_997 : vec4<f32> = u_xlat9;
        let x_998 : vec2<f32> = vec2<f32>(x_997.x, x_997.y);
        let x_1000 : f32 = u_xlat4.z;
        txVec7 = vec3<f32>(x_998.x, x_998.y, x_1000);
        let x_1007 : vec3<f32> = txVec7;
        let x_1009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1007.xy, x_1007.z);
        u_xlat65 = x_1009;
        let x_1011 : f32 = u_xlat13.w;
        let x_1012 : f32 = u_xlat65;
        let x_1014 : f32 = u_xlat64;
        u_xlat64 = ((x_1011 * x_1012) + x_1014);
        let x_1017 : vec4<f32> = u_xlat11;
        let x_1018 : vec2<f32> = vec2<f32>(x_1017.x, x_1017.y);
        let x_1020 : f32 = u_xlat4.z;
        txVec8 = vec3<f32>(x_1018.x, x_1018.y, x_1020);
        let x_1027 : vec3<f32> = txVec8;
        let x_1029 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1027.xy, x_1027.z);
        u_xlat65 = x_1029;
        let x_1031 : f32 = u_xlat14.x;
        let x_1032 : f32 = u_xlat65;
        let x_1034 : f32 = u_xlat64;
        u_xlat64 = ((x_1031 * x_1032) + x_1034);
        let x_1037 : vec4<f32> = u_xlat11;
        let x_1038 : vec2<f32> = vec2<f32>(x_1037.z, x_1037.w);
        let x_1040 : f32 = u_xlat4.z;
        txVec9 = vec3<f32>(x_1038.x, x_1038.y, x_1040);
        let x_1047 : vec3<f32> = txVec9;
        let x_1049 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1047.xy, x_1047.z);
        u_xlat65 = x_1049;
        let x_1051 : f32 = u_xlat14.y;
        let x_1052 : f32 = u_xlat65;
        let x_1054 : f32 = u_xlat64;
        u_xlat64 = ((x_1051 * x_1052) + x_1054);
        let x_1057 : vec4<f32> = u_xlat9;
        let x_1058 : vec2<f32> = vec2<f32>(x_1057.z, x_1057.w);
        let x_1060 : f32 = u_xlat4.z;
        txVec10 = vec3<f32>(x_1058.x, x_1058.y, x_1060);
        let x_1067 : vec3<f32> = txVec10;
        let x_1069 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1067.xy, x_1067.z);
        u_xlat65 = x_1069;
        let x_1071 : f32 = u_xlat14.z;
        let x_1072 : f32 = u_xlat65;
        let x_1074 : f32 = u_xlat64;
        u_xlat64 = ((x_1071 * x_1072) + x_1074);
        let x_1077 : vec4<f32> = u_xlat8;
        let x_1078 : vec2<f32> = vec2<f32>(x_1077.x, x_1077.y);
        let x_1080 : f32 = u_xlat4.z;
        txVec11 = vec3<f32>(x_1078.x, x_1078.y, x_1080);
        let x_1087 : vec3<f32> = txVec11;
        let x_1089 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1087.xy, x_1087.z);
        u_xlat65 = x_1089;
        let x_1091 : f32 = u_xlat14.w;
        let x_1092 : f32 = u_xlat65;
        let x_1094 : f32 = u_xlat64;
        u_xlat64 = ((x_1091 * x_1092) + x_1094);
        let x_1097 : vec4<f32> = u_xlat8;
        let x_1098 : vec2<f32> = vec2<f32>(x_1097.z, x_1097.w);
        let x_1100 : f32 = u_xlat4.z;
        txVec12 = vec3<f32>(x_1098.x, x_1098.y, x_1100);
        let x_1107 : vec3<f32> = txVec12;
        let x_1109 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1107.xy, x_1107.z);
        u_xlat65 = x_1109;
        let x_1110 : f32 = u_xlat63;
        let x_1111 : f32 = u_xlat65;
        let x_1113 : f32 = u_xlat64;
        u_xlat62 = ((x_1110 * x_1111) + x_1113);
      } else {
        let x_1116 : vec4<f32> = u_xlat4;
        let x_1119 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1122 : vec2<f32> = ((vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(x_1119.z, x_1119.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1123 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1123.w);
        let x_1125 : vec4<f32> = u_xlat6;
        let x_1127 : vec2<f32> = floor(vec2<f32>(x_1125.x, x_1125.y));
        let x_1128 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1127.x, x_1127.y, x_1128.z, x_1128.w);
        let x_1130 : vec4<f32> = u_xlat4;
        let x_1133 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1136 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1130.x, x_1130.y) * vec2<f32>(x_1133.z, x_1133.w)) + -(vec2<f32>(x_1136.x, x_1136.y)));
        let x_1140 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1140.x, x_1140.x, x_1140.y, x_1140.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1145 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1143.x, x_1143.x, x_1143.z, x_1143.z) * vec4<f32>(x_1145.x, x_1145.x, x_1145.z, x_1145.z));
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1152 : vec2<f32> = (vec2<f32>(x_1148.y, x_1148.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1153 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1153.x, x_1152.x, x_1153.z, x_1152.y);
        let x_1155 : vec4<f32> = u_xlat8;
        let x_1158 : vec2<f32> = u_xlat46;
        let x_1160 : vec2<f32> = ((vec2<f32>(x_1155.x, x_1155.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1158));
        let x_1161 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1160.x, x_1161.y, x_1160.y, x_1161.w);
        let x_1163 : vec2<f32> = u_xlat46;
        let x_1165 : vec2<f32> = (-(x_1163) + vec2<f32>(1.0f, 1.0f));
        let x_1166 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1168 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1168, vec2<f32>(0.0f, 0.0f));
        let x_1170 : vec2<f32> = u_xlat48;
        let x_1172 : vec2<f32> = u_xlat48;
        let x_1174 : vec4<f32> = u_xlat8;
        let x_1176 : vec2<f32> = ((-(x_1170) * x_1172) + vec2<f32>(x_1174.x, x_1174.y));
        let x_1177 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
        let x_1179 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1179, vec2<f32>(0.0f, 0.0f));
        let x_1182 : vec2<f32> = u_xlat48;
        let x_1184 : vec2<f32> = u_xlat48;
        let x_1186 : vec4<f32> = u_xlat7;
        let x_1188 : vec2<f32> = ((-(x_1182) * x_1184) + vec2<f32>(x_1186.y, x_1186.w));
        let x_1189 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1188.x, x_1189.y, x_1188.y);
        let x_1191 : vec4<f32> = u_xlat8;
        let x_1193 : vec2<f32> = (vec2<f32>(x_1191.x, x_1191.y) + vec2<f32>(2.0f, 2.0f));
        let x_1194 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1193.x, x_1193.y, x_1194.z, x_1194.w);
        let x_1196 : vec3<f32> = u_xlat27;
        let x_1198 : vec2<f32> = (vec2<f32>(x_1196.x, x_1196.z) + vec2<f32>(2.0f, 2.0f));
        let x_1199 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1199.x, x_1198.x, x_1199.z, x_1198.y);
        let x_1202 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1202 * 0.081632003f);
        let x_1206 : vec4<f32> = u_xlat7;
        let x_1209 : vec3<f32> = (vec3<f32>(x_1206.z, x_1206.x, x_1206.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1210 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
        let x_1212 : vec4<f32> = u_xlat8;
        let x_1215 : vec2<f32> = (vec2<f32>(x_1212.x, x_1212.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1216 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1215.x, x_1215.y, x_1216.z, x_1216.w);
        let x_1219 : f32 = u_xlat11.y;
        u_xlat10.x = x_1219;
        let x_1221 : vec2<f32> = u_xlat46;
        let x_1228 : vec2<f32> = ((vec2<f32>(x_1221.x, x_1221.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1229 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1229.x, x_1228.x, x_1229.z, x_1228.y);
        let x_1231 : vec2<f32> = u_xlat46;
        let x_1235 : vec2<f32> = ((vec2<f32>(x_1231.x, x_1231.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1236 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1235.x, x_1236.y, x_1235.y, x_1236.w);
        let x_1239 : f32 = u_xlat7.x;
        u_xlat8.y = x_1239;
        let x_1242 : f32 = u_xlat9.y;
        u_xlat8.w = x_1242;
        let x_1244 : vec4<f32> = u_xlat8;
        let x_1245 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1244 + x_1245);
        let x_1247 : vec2<f32> = u_xlat46;
        let x_1250 : vec2<f32> = ((vec2<f32>(x_1247.y, x_1247.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1251 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1251.x, x_1250.x, x_1251.z, x_1250.y);
        let x_1253 : vec2<f32> = u_xlat46;
        let x_1256 : vec2<f32> = ((vec2<f32>(x_1253.y, x_1253.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1257 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1256.x, x_1257.y, x_1256.y, x_1257.w);
        let x_1260 : f32 = u_xlat7.y;
        u_xlat9.y = x_1260;
        let x_1262 : vec4<f32> = u_xlat9;
        let x_1263 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1262 + x_1263);
        let x_1265 : vec4<f32> = u_xlat8;
        let x_1266 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1265 / x_1266);
        let x_1268 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1268 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1274 : vec4<f32> = u_xlat9;
        let x_1275 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1274 / x_1275);
        let x_1277 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1277 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1279 : vec4<f32> = u_xlat8;
        let x_1282 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1279.w, x_1279.x, x_1279.y, x_1279.z) * vec4<f32>(x_1282.x, x_1282.x, x_1282.x, x_1282.x));
        let x_1285 : vec4<f32> = u_xlat9;
        let x_1288 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1285.x, x_1285.w, x_1285.y, x_1285.z) * vec4<f32>(x_1288.y, x_1288.y, x_1288.y, x_1288.y));
        let x_1291 : vec4<f32> = u_xlat8;
        let x_1292 : vec3<f32> = vec3<f32>(x_1291.y, x_1291.z, x_1291.w);
        let x_1293 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1292.x, x_1293.y, x_1292.y, x_1292.z);
        let x_1296 : f32 = u_xlat9.x;
        u_xlat11.y = x_1296;
        let x_1298 : vec4<f32> = u_xlat6;
        let x_1301 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1304 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y) * vec4<f32>(x_1301.x, x_1301.y, x_1301.x, x_1301.y)) + vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1304.y));
        let x_1307 : vec4<f32> = u_xlat6;
        let x_1310 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1313 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1307.x, x_1307.y) * vec2<f32>(x_1310.x, x_1310.y)) + vec2<f32>(x_1313.w, x_1313.y));
        let x_1317 : f32 = u_xlat11.y;
        u_xlat8.y = x_1317;
        let x_1320 : f32 = u_xlat9.z;
        u_xlat11.y = x_1320;
        let x_1322 : vec4<f32> = u_xlat6;
        let x_1325 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1328 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1322.x, x_1322.y, x_1322.x, x_1322.y) * vec4<f32>(x_1325.x, x_1325.y, x_1325.x, x_1325.y)) + vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1328.y));
        let x_1331 : vec4<f32> = u_xlat6;
        let x_1334 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat11;
        let x_1339 : vec2<f32> = ((vec2<f32>(x_1331.x, x_1331.y) * vec2<f32>(x_1334.x, x_1334.y)) + vec2<f32>(x_1337.w, x_1337.y));
        let x_1340 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1339.x, x_1339.y, x_1340.z, x_1340.w);
        let x_1343 : f32 = u_xlat11.y;
        u_xlat8.z = x_1343;
        let x_1346 : vec4<f32> = u_xlat6;
        let x_1349 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1352 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1346.x, x_1346.y, x_1346.x, x_1346.y) * vec4<f32>(x_1349.x, x_1349.y, x_1349.x, x_1349.y)) + vec4<f32>(x_1352.x, x_1352.y, x_1352.x, x_1352.z));
        let x_1356 : f32 = u_xlat9.w;
        u_xlat11.y = x_1356;
        let x_1359 : vec4<f32> = u_xlat6;
        let x_1362 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1365 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1359.x, x_1359.y, x_1359.x, x_1359.y) * vec4<f32>(x_1362.x, x_1362.y, x_1362.x, x_1362.y)) + vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1365.y));
        let x_1369 : vec4<f32> = u_xlat6;
        let x_1372 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1375 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1369.x, x_1369.y) * vec2<f32>(x_1372.x, x_1372.y)) + vec2<f32>(x_1375.w, x_1375.y));
        let x_1379 : f32 = u_xlat11.y;
        u_xlat8.w = x_1379;
        let x_1382 : vec4<f32> = u_xlat6;
        let x_1385 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1388 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1382.x, x_1382.y) * vec2<f32>(x_1385.x, x_1385.y)) + vec2<f32>(x_1388.x, x_1388.w));
        let x_1391 : vec4<f32> = u_xlat11;
        let x_1392 : vec3<f32> = vec3<f32>(x_1391.x, x_1391.z, x_1391.w);
        let x_1393 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1392.x, x_1393.y, x_1392.y, x_1392.z);
        let x_1395 : vec4<f32> = u_xlat6;
        let x_1398 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1401 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1395.x, x_1395.y, x_1395.x, x_1395.y) * vec4<f32>(x_1398.x, x_1398.y, x_1398.x, x_1398.y)) + vec4<f32>(x_1401.x, x_1401.y, x_1401.z, x_1401.y));
        let x_1405 : vec4<f32> = u_xlat6;
        let x_1408 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1411 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1405.x, x_1405.y) * vec2<f32>(x_1408.x, x_1408.y)) + vec2<f32>(x_1411.w, x_1411.y));
        let x_1415 : f32 = u_xlat8.x;
        u_xlat9.x = x_1415;
        let x_1417 : vec4<f32> = u_xlat6;
        let x_1420 : vec4<f32> = x_277.x_MainLightShadowmapSize;
        let x_1423 : vec4<f32> = u_xlat9;
        let x_1425 : vec2<f32> = ((vec2<f32>(x_1417.x, x_1417.y) * vec2<f32>(x_1420.x, x_1420.y)) + vec2<f32>(x_1423.x, x_1423.y));
        let x_1426 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1425.x, x_1425.y, x_1426.z, x_1426.w);
        let x_1429 : vec4<f32> = u_xlat7;
        let x_1431 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1429.x, x_1429.x, x_1429.x, x_1429.x) * x_1431);
        let x_1434 : vec4<f32> = u_xlat7;
        let x_1436 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1434.y, x_1434.y, x_1434.y, x_1434.y) * x_1436);
        let x_1439 : vec4<f32> = u_xlat7;
        let x_1441 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1439.z, x_1439.z, x_1439.z, x_1439.z) * x_1441);
        let x_1443 : vec4<f32> = u_xlat7;
        let x_1445 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1443.w, x_1443.w, x_1443.w, x_1443.w) * x_1445);
        let x_1448 : vec4<f32> = u_xlat12;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.x, x_1448.y);
        let x_1451 : f32 = u_xlat4.z;
        txVec13 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec13;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1458.xy, x_1458.z);
        u_xlat63 = x_1460;
        let x_1462 : vec4<f32> = u_xlat12;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = u_xlat4.z;
        txVec14 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec14;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1472.xy, x_1472.z);
        u_xlat64 = x_1474;
        let x_1475 : f32 = u_xlat64;
        let x_1477 : f32 = u_xlat17.y;
        u_xlat64 = (x_1475 * x_1477);
        let x_1480 : f32 = u_xlat17.x;
        let x_1481 : f32 = u_xlat63;
        let x_1483 : f32 = u_xlat64;
        u_xlat63 = ((x_1480 * x_1481) + x_1483);
        let x_1486 : vec2<f32> = u_xlat46;
        let x_1488 : f32 = u_xlat4.z;
        txVec15 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec15;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1495.xy, x_1495.z);
        u_xlat64 = x_1497;
        let x_1499 : f32 = u_xlat17.z;
        let x_1500 : f32 = u_xlat64;
        let x_1502 : f32 = u_xlat63;
        u_xlat63 = ((x_1499 * x_1500) + x_1502);
        let x_1505 : vec4<f32> = u_xlat15;
        let x_1506 : vec2<f32> = vec2<f32>(x_1505.x, x_1505.y);
        let x_1508 : f32 = u_xlat4.z;
        txVec16 = vec3<f32>(x_1506.x, x_1506.y, x_1508);
        let x_1515 : vec3<f32> = txVec16;
        let x_1517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1515.xy, x_1515.z);
        u_xlat64 = x_1517;
        let x_1519 : f32 = u_xlat17.w;
        let x_1520 : f32 = u_xlat64;
        let x_1522 : f32 = u_xlat63;
        u_xlat63 = ((x_1519 * x_1520) + x_1522);
        let x_1525 : vec4<f32> = u_xlat13;
        let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
        let x_1528 : f32 = u_xlat4.z;
        txVec17 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1535 : vec3<f32> = txVec17;
        let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1535.xy, x_1535.z);
        u_xlat64 = x_1537;
        let x_1539 : f32 = u_xlat18.x;
        let x_1540 : f32 = u_xlat64;
        let x_1542 : f32 = u_xlat63;
        u_xlat63 = ((x_1539 * x_1540) + x_1542);
        let x_1545 : vec4<f32> = u_xlat13;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.z, x_1545.w);
        let x_1548 : f32 = u_xlat4.z;
        txVec18 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec18;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1555.xy, x_1555.z);
        u_xlat64 = x_1557;
        let x_1559 : f32 = u_xlat18.y;
        let x_1560 : f32 = u_xlat64;
        let x_1562 : f32 = u_xlat63;
        u_xlat63 = ((x_1559 * x_1560) + x_1562);
        let x_1565 : vec4<f32> = u_xlat14;
        let x_1566 : vec2<f32> = vec2<f32>(x_1565.x, x_1565.y);
        let x_1568 : f32 = u_xlat4.z;
        txVec19 = vec3<f32>(x_1566.x, x_1566.y, x_1568);
        let x_1575 : vec3<f32> = txVec19;
        let x_1577 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1575.xy, x_1575.z);
        u_xlat64 = x_1577;
        let x_1579 : f32 = u_xlat18.z;
        let x_1580 : f32 = u_xlat64;
        let x_1582 : f32 = u_xlat63;
        u_xlat63 = ((x_1579 * x_1580) + x_1582);
        let x_1585 : vec4<f32> = u_xlat15;
        let x_1586 : vec2<f32> = vec2<f32>(x_1585.z, x_1585.w);
        let x_1588 : f32 = u_xlat4.z;
        txVec20 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec20;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1595.xy, x_1595.z);
        u_xlat64 = x_1597;
        let x_1599 : f32 = u_xlat18.w;
        let x_1600 : f32 = u_xlat64;
        let x_1602 : f32 = u_xlat63;
        u_xlat63 = ((x_1599 * x_1600) + x_1602);
        let x_1605 : vec4<f32> = u_xlat16;
        let x_1606 : vec2<f32> = vec2<f32>(x_1605.x, x_1605.y);
        let x_1608 : f32 = u_xlat4.z;
        txVec21 = vec3<f32>(x_1606.x, x_1606.y, x_1608);
        let x_1615 : vec3<f32> = txVec21;
        let x_1617 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1615.xy, x_1615.z);
        u_xlat64 = x_1617;
        let x_1619 : f32 = u_xlat19.x;
        let x_1620 : f32 = u_xlat64;
        let x_1622 : f32 = u_xlat63;
        u_xlat63 = ((x_1619 * x_1620) + x_1622);
        let x_1625 : vec4<f32> = u_xlat16;
        let x_1626 : vec2<f32> = vec2<f32>(x_1625.z, x_1625.w);
        let x_1628 : f32 = u_xlat4.z;
        txVec22 = vec3<f32>(x_1626.x, x_1626.y, x_1628);
        let x_1635 : vec3<f32> = txVec22;
        let x_1637 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1635.xy, x_1635.z);
        u_xlat64 = x_1637;
        let x_1639 : f32 = u_xlat19.y;
        let x_1640 : f32 = u_xlat64;
        let x_1642 : f32 = u_xlat63;
        u_xlat63 = ((x_1639 * x_1640) + x_1642);
        let x_1645 : vec2<f32> = u_xlat28;
        let x_1647 : f32 = u_xlat4.z;
        txVec23 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
        let x_1654 : vec3<f32> = txVec23;
        let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1654.xy, x_1654.z);
        u_xlat64 = x_1656;
        let x_1658 : f32 = u_xlat19.z;
        let x_1659 : f32 = u_xlat64;
        let x_1661 : f32 = u_xlat63;
        u_xlat63 = ((x_1658 * x_1659) + x_1661);
        let x_1664 : vec2<f32> = u_xlat54;
        let x_1666 : f32 = u_xlat4.z;
        txVec24 = vec3<f32>(x_1664.x, x_1664.y, x_1666);
        let x_1673 : vec3<f32> = txVec24;
        let x_1675 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1673.xy, x_1673.z);
        u_xlat64 = x_1675;
        let x_1677 : f32 = u_xlat19.w;
        let x_1678 : f32 = u_xlat64;
        let x_1680 : f32 = u_xlat63;
        u_xlat63 = ((x_1677 * x_1678) + x_1680);
        let x_1683 : vec4<f32> = u_xlat11;
        let x_1684 : vec2<f32> = vec2<f32>(x_1683.x, x_1683.y);
        let x_1686 : f32 = u_xlat4.z;
        txVec25 = vec3<f32>(x_1684.x, x_1684.y, x_1686);
        let x_1693 : vec3<f32> = txVec25;
        let x_1695 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1693.xy, x_1693.z);
        u_xlat64 = x_1695;
        let x_1697 : f32 = u_xlat7.x;
        let x_1698 : f32 = u_xlat64;
        let x_1700 : f32 = u_xlat63;
        u_xlat63 = ((x_1697 * x_1698) + x_1700);
        let x_1703 : vec4<f32> = u_xlat11;
        let x_1704 : vec2<f32> = vec2<f32>(x_1703.z, x_1703.w);
        let x_1706 : f32 = u_xlat4.z;
        txVec26 = vec3<f32>(x_1704.x, x_1704.y, x_1706);
        let x_1713 : vec3<f32> = txVec26;
        let x_1715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1713.xy, x_1713.z);
        u_xlat64 = x_1715;
        let x_1717 : f32 = u_xlat7.y;
        let x_1718 : f32 = u_xlat64;
        let x_1720 : f32 = u_xlat63;
        u_xlat63 = ((x_1717 * x_1718) + x_1720);
        let x_1723 : vec2<f32> = u_xlat49;
        let x_1725 : f32 = u_xlat4.z;
        txVec27 = vec3<f32>(x_1723.x, x_1723.y, x_1725);
        let x_1732 : vec3<f32> = txVec27;
        let x_1734 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1732.xy, x_1732.z);
        u_xlat64 = x_1734;
        let x_1736 : f32 = u_xlat7.z;
        let x_1737 : f32 = u_xlat64;
        let x_1739 : f32 = u_xlat63;
        u_xlat63 = ((x_1736 * x_1737) + x_1739);
        let x_1742 : vec4<f32> = u_xlat6;
        let x_1743 : vec2<f32> = vec2<f32>(x_1742.x, x_1742.y);
        let x_1745 : f32 = u_xlat4.z;
        txVec28 = vec3<f32>(x_1743.x, x_1743.y, x_1745);
        let x_1752 : vec3<f32> = txVec28;
        let x_1754 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1752.xy, x_1752.z);
        u_xlat64 = x_1754;
        let x_1756 : f32 = u_xlat7.w;
        let x_1757 : f32 = u_xlat64;
        let x_1759 : f32 = u_xlat63;
        u_xlat62 = ((x_1756 * x_1757) + x_1759);
      }
    }
  } else {
    let x_1763 : vec4<f32> = u_xlat4;
    let x_1764 : vec2<f32> = vec2<f32>(x_1763.x, x_1763.y);
    let x_1766 : f32 = u_xlat4.z;
    txVec29 = vec3<f32>(x_1764.x, x_1764.y, x_1766);
    let x_1773 : vec3<f32> = txVec29;
    let x_1775 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1773.xy, x_1773.z);
    u_xlat62 = x_1775;
  }
  let x_1777 : f32 = x_277.x_MainLightShadowParams.x;
  u_xlat63 = (-(x_1777) + 1.0f);
  let x_1780 : f32 = u_xlat62;
  let x_1782 : f32 = x_277.x_MainLightShadowParams.x;
  let x_1784 : f32 = u_xlat63;
  u_xlat62 = ((x_1780 * x_1782) + x_1784);
  let x_1787 : f32 = u_xlat4.z;
  u_xlatb63 = (0.0f >= x_1787);
  let x_1790 : f32 = u_xlat4.z;
  u_xlatb4.x = (x_1790 >= 1.0f);
  let x_1793 : bool = u_xlatb63;
  let x_1795 : bool = u_xlatb4.x;
  u_xlatb63 = (x_1793 | x_1795);
  let x_1797 : bool = u_xlatb63;
  let x_1798 : f32 = u_xlat62;
  u_xlat62 = select(x_1798, 1.0f, x_1797);
  let x_1800 : vec3<f32> = vs_TEXCOORD1;
  let x_1803 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1805 : vec3<f32> = (x_1800 + -(x_1803));
  let x_1806 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1805.x, x_1805.y, x_1805.z, x_1806.w);
  let x_1808 : vec4<f32> = u_xlat4;
  let x_1810 : vec4<f32> = u_xlat4;
  u_xlat63 = dot(vec3<f32>(x_1808.x, x_1808.y, x_1808.z), vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
  let x_1813 : f32 = u_xlat63;
  let x_1815 : f32 = x_277.x_MainLightShadowParams.z;
  let x_1818 : f32 = x_277.x_MainLightShadowParams.w;
  u_xlat63 = ((x_1813 * x_1815) + x_1818);
  let x_1820 : f32 = u_xlat63;
  u_xlat63 = clamp(x_1820, 0.0f, 1.0f);
  let x_1822 : f32 = u_xlat62;
  u_xlat4.x = (-(x_1822) + 1.0f);
  let x_1826 : f32 = u_xlat63;
  let x_1828 : f32 = u_xlat4.x;
  let x_1830 : f32 = u_xlat62;
  u_xlat62 = ((x_1826 * x_1828) + x_1830);
  let x_1832 : vec4<f32> = u_xlat1;
  let x_1835 : vec4<f32> = x_43.x_MainLightColor;
  let x_1837 : vec3<f32> = (vec3<f32>(x_1832.x, x_1832.x, x_1832.x) * vec3<f32>(x_1835.x, x_1835.y, x_1835.z));
  let x_1838 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1837.x, x_1837.y, x_1837.z, x_1838.w);
  let x_1840 : f32 = u_xlat60;
  let x_1842 : vec4<f32> = u_xlat5;
  let x_1844 : vec3<f32> = (vec3<f32>(x_1840, x_1840, x_1840) * vec3<f32>(x_1842.x, x_1842.y, x_1842.z));
  let x_1845 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1844.x, x_1844.y, x_1844.z, x_1845.w);
  let x_1847 : f32 = u_xlat62;
  let x_1853 : f32 = x_1851.unity_LightData.z;
  u_xlat60 = (x_1847 * x_1853);
  let x_1855 : f32 = u_xlat60;
  let x_1857 : vec4<f32> = u_xlat4;
  let x_1859 : vec3<f32> = (vec3<f32>(x_1855, x_1855, x_1855) * vec3<f32>(x_1857.x, x_1857.y, x_1857.z));
  let x_1860 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1859.x, x_1859.y, x_1859.z, x_1860.w);
  let x_1862 : vec3<f32> = u_xlat2;
  let x_1864 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat60 = dot(x_1862, vec3<f32>(x_1864.x, x_1864.y, x_1864.z));
  let x_1867 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1867, 0.0f, 1.0f);
  let x_1869 : f32 = u_xlat60;
  let x_1871 : vec4<f32> = u_xlat4;
  let x_1873 : vec3<f32> = (vec3<f32>(x_1869, x_1869, x_1869) * vec3<f32>(x_1871.x, x_1871.y, x_1871.z));
  let x_1874 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1873.x, x_1873.y, x_1873.z, x_1874.w);
  let x_1877 : f32 = x_56.x_SpecColor.w;
  u_xlat60 = ((x_1877 * 10.0f) + 1.0f);
  let x_1881 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1881);
  let x_1883 : vec3<f32> = u_xlat3;
  let x_1884 : vec3<f32> = u_xlat20;
  let x_1888 : vec4<f32> = x_43.x_MainLightPosition;
  let x_1890 : vec3<f32> = ((x_1883 * vec3<f32>(x_1884.x, x_1884.x, x_1884.x)) + vec3<f32>(x_1888.x, x_1888.y, x_1888.z));
  let x_1891 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
  let x_1893 : vec4<f32> = u_xlat7;
  let x_1895 : vec4<f32> = u_xlat7;
  u_xlat62 = dot(vec3<f32>(x_1893.x, x_1893.y, x_1893.z), vec3<f32>(x_1895.x, x_1895.y, x_1895.z));
  let x_1898 : f32 = u_xlat62;
  u_xlat62 = max(x_1898, 1.17549435e-37f);
  let x_1900 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_1900);
  let x_1902 : f32 = u_xlat62;
  let x_1904 : vec4<f32> = u_xlat7;
  let x_1906 : vec3<f32> = (vec3<f32>(x_1902, x_1902, x_1902) * vec3<f32>(x_1904.x, x_1904.y, x_1904.z));
  let x_1907 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1906.x, x_1906.y, x_1906.z, x_1907.w);
  let x_1909 : vec3<f32> = u_xlat2;
  let x_1910 : vec4<f32> = u_xlat7;
  u_xlat62 = dot(x_1909, vec3<f32>(x_1910.x, x_1910.y, x_1910.z));
  let x_1913 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1913, 0.0f, 1.0f);
  let x_1915 : f32 = u_xlat62;
  u_xlat62 = log2(x_1915);
  let x_1917 : f32 = u_xlat60;
  let x_1918 : f32 = u_xlat62;
  u_xlat62 = (x_1917 * x_1918);
  let x_1920 : f32 = u_xlat62;
  u_xlat62 = exp2(x_1920);
  let x_1922 : f32 = u_xlat62;
  let x_1925 : vec4<f32> = x_56.x_SpecColor;
  let x_1927 : vec3<f32> = (vec3<f32>(x_1922, x_1922, x_1922) * vec3<f32>(x_1925.x, x_1925.y, x_1925.z));
  let x_1928 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1927.x, x_1927.y, x_1927.z, x_1928.w);
  let x_1930 : vec4<f32> = u_xlat4;
  let x_1932 : vec4<f32> = u_xlat7;
  let x_1934 : vec3<f32> = (vec3<f32>(x_1930.x, x_1930.y, x_1930.z) * vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
  let x_1935 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1934.x, x_1934.y, x_1934.z, x_1935.w);
  let x_1937 : vec4<f32> = u_xlat6;
  let x_1939 : vec4<f32> = u_xlat1;
  let x_1942 : vec4<f32> = u_xlat4;
  let x_1944 : vec3<f32> = ((vec3<f32>(x_1937.x, x_1937.y, x_1937.z) * vec3<f32>(x_1939.y, x_1939.z, x_1939.w)) + vec3<f32>(x_1942.x, x_1942.y, x_1942.z));
  let x_1945 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1944.x, x_1944.y, x_1944.z, x_1945.w);
  let x_1948 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1950 : f32 = x_1851.unity_LightData.y;
  u_xlat62 = min(x_1948, x_1950);
  let x_1953 : f32 = u_xlat62;
  u_xlatu62 = bitcast<u32>(i32(x_1953));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1965 : u32 = u_xlatu_loop_1;
    let x_1966 : u32 = u_xlatu62;
    if ((x_1965 < x_1966)) {
    } else {
      break;
    }
    let x_1969 : u32 = u_xlatu_loop_1;
    u_xlatu64 = (x_1969 >> 2u);
    let x_1972 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_1972 & 3u));
    let x_1975 : u32 = u_xlatu64;
    let x_1978 : vec4<f32> = x_1851.unity_LightIndices[bitcast<i32>(x_1975)];
    let x_1988 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1993 : vec4<u32> = indexable[x_1988];
    u_xlat64 = dot(x_1978, bitcast<vec4<f32>>(x_1993));
    let x_1997 : f32 = u_xlat64;
    u_xlati64 = i32(x_1997);
    let x_1999 : vec3<f32> = vs_TEXCOORD1;
    let x_2011 : i32 = u_xlati64;
    let x_2013 : vec4<f32> = x_2010.x_AdditionalLightsPosition[x_2011];
    let x_2016 : i32 = u_xlati64;
    let x_2018 : vec4<f32> = x_2010.x_AdditionalLightsPosition[x_2016];
    let x_2020 : vec3<f32> = ((-(x_1999) * vec3<f32>(x_2013.w, x_2013.w, x_2013.w)) + vec3<f32>(x_2018.x, x_2018.y, x_2018.z));
    let x_2021 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2020.x, x_2020.y, x_2020.z, x_2021.w);
    let x_2023 : vec4<f32> = u_xlat7;
    let x_2025 : vec4<f32> = u_xlat7;
    u_xlat65 = dot(vec3<f32>(x_2023.x, x_2023.y, x_2023.z), vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
    let x_2028 : f32 = u_xlat65;
    u_xlat65 = max(x_2028, 6.10351562e-05f);
    let x_2032 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2032);
    let x_2034 : f32 = u_xlat66;
    let x_2036 : vec4<f32> = u_xlat7;
    let x_2038 : vec3<f32> = (vec3<f32>(x_2034, x_2034, x_2034) * vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
    let x_2039 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
    let x_2041 : f32 = u_xlat65;
    u_xlat66 = (1.0f / x_2041);
    let x_2043 : f32 = u_xlat65;
    let x_2044 : i32 = u_xlati64;
    let x_2046 : f32 = x_2010.x_AdditionalLightsAttenuation[x_2044].x;
    u_xlat65 = (x_2043 * x_2046);
    let x_2048 : f32 = u_xlat65;
    let x_2050 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2048) * x_2050) + 1.0f);
    let x_2053 : f32 = u_xlat65;
    u_xlat65 = max(x_2053, 0.0f);
    let x_2055 : f32 = u_xlat65;
    let x_2056 : f32 = u_xlat65;
    u_xlat65 = (x_2055 * x_2056);
    let x_2058 : f32 = u_xlat65;
    let x_2059 : f32 = u_xlat66;
    u_xlat65 = (x_2058 * x_2059);
    let x_2061 : i32 = u_xlati64;
    let x_2063 : vec4<f32> = x_2010.x_AdditionalLightsSpotDir[x_2061];
    let x_2065 : vec4<f32> = u_xlat7;
    u_xlat66 = dot(vec3<f32>(x_2063.x, x_2063.y, x_2063.z), vec3<f32>(x_2065.x, x_2065.y, x_2065.z));
    let x_2068 : f32 = u_xlat66;
    let x_2069 : i32 = u_xlati64;
    let x_2071 : f32 = x_2010.x_AdditionalLightsAttenuation[x_2069].z;
    let x_2073 : i32 = u_xlati64;
    let x_2075 : f32 = x_2010.x_AdditionalLightsAttenuation[x_2073].w;
    u_xlat66 = ((x_2068 * x_2071) + x_2075);
    let x_2077 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2077, 0.0f, 1.0f);
    let x_2079 : f32 = u_xlat66;
    let x_2080 : f32 = u_xlat66;
    u_xlat66 = (x_2079 * x_2080);
    let x_2082 : f32 = u_xlat65;
    let x_2083 : f32 = u_xlat66;
    u_xlat65 = (x_2082 * x_2083);
    let x_2085 : vec4<f32> = u_xlat1;
    let x_2087 : i32 = u_xlati64;
    let x_2089 : vec4<f32> = x_2010.x_AdditionalLightsColor[x_2087];
    let x_2091 : vec3<f32> = (vec3<f32>(x_2085.x, x_2085.x, x_2085.x) * vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
    let x_2092 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
    let x_2094 : f32 = u_xlat65;
    let x_2096 : vec4<f32> = u_xlat8;
    let x_2098 : vec3<f32> = (vec3<f32>(x_2094, x_2094, x_2094) * vec3<f32>(x_2096.x, x_2096.y, x_2096.z));
    let x_2099 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2098.x, x_2098.y, x_2098.z, x_2099.w);
    let x_2101 : vec3<f32> = u_xlat2;
    let x_2102 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(x_2101, vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
    let x_2105 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2105, 0.0f, 1.0f);
    let x_2107 : f32 = u_xlat64;
    let x_2109 : vec4<f32> = u_xlat8;
    let x_2111 : vec3<f32> = (vec3<f32>(x_2107, x_2107, x_2107) * vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
    let x_2112 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
    let x_2114 : vec3<f32> = u_xlat3;
    let x_2115 : vec3<f32> = u_xlat20;
    let x_2118 : vec4<f32> = u_xlat7;
    let x_2120 : vec3<f32> = ((x_2114 * vec3<f32>(x_2115.x, x_2115.x, x_2115.x)) + vec3<f32>(x_2118.x, x_2118.y, x_2118.z));
    let x_2121 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2120.x, x_2120.y, x_2120.z, x_2121.w);
    let x_2123 : vec4<f32> = u_xlat7;
    let x_2125 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(vec3<f32>(x_2123.x, x_2123.y, x_2123.z), vec3<f32>(x_2125.x, x_2125.y, x_2125.z));
    let x_2128 : f32 = u_xlat64;
    u_xlat64 = max(x_2128, 1.17549435e-37f);
    let x_2130 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_2130);
    let x_2132 : f32 = u_xlat64;
    let x_2134 : vec4<f32> = u_xlat7;
    let x_2136 : vec3<f32> = (vec3<f32>(x_2132, x_2132, x_2132) * vec3<f32>(x_2134.x, x_2134.y, x_2134.z));
    let x_2137 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2136.x, x_2136.y, x_2136.z, x_2137.w);
    let x_2139 : vec3<f32> = u_xlat2;
    let x_2140 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(x_2139, vec3<f32>(x_2140.x, x_2140.y, x_2140.z));
    let x_2143 : f32 = u_xlat64;
    u_xlat64 = clamp(x_2143, 0.0f, 1.0f);
    let x_2145 : f32 = u_xlat64;
    u_xlat64 = log2(x_2145);
    let x_2147 : f32 = u_xlat60;
    let x_2148 : f32 = u_xlat64;
    u_xlat64 = (x_2147 * x_2148);
    let x_2150 : f32 = u_xlat64;
    u_xlat64 = exp2(x_2150);
    let x_2152 : f32 = u_xlat64;
    let x_2155 : vec4<f32> = x_56.x_SpecColor;
    let x_2157 : vec3<f32> = (vec3<f32>(x_2152, x_2152, x_2152) * vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
    let x_2158 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2158.w);
    let x_2160 : vec4<f32> = u_xlat7;
    let x_2162 : vec4<f32> = u_xlat8;
    let x_2164 : vec3<f32> = (vec3<f32>(x_2160.x, x_2160.y, x_2160.z) * vec3<f32>(x_2162.x, x_2162.y, x_2162.z));
    let x_2165 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2164.x, x_2164.y, x_2164.z, x_2165.w);
    let x_2167 : vec4<f32> = u_xlat9;
    let x_2169 : vec4<f32> = u_xlat1;
    let x_2172 : vec4<f32> = u_xlat7;
    let x_2174 : vec3<f32> = ((vec3<f32>(x_2167.x, x_2167.y, x_2167.z) * vec3<f32>(x_2169.y, x_2169.z, x_2169.w)) + vec3<f32>(x_2172.x, x_2172.y, x_2172.z));
    let x_2175 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2174.x, x_2174.y, x_2174.z, x_2175.w);
    let x_2177 : vec4<f32> = u_xlat6;
    let x_2179 : vec4<f32> = u_xlat7;
    let x_2181 : vec3<f32> = (vec3<f32>(x_2177.x, x_2177.y, x_2177.z) + vec3<f32>(x_2179.x, x_2179.y, x_2179.z));
    let x_2182 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2181.x, x_2181.y, x_2181.z, x_2182.w);

    continuing {
      let x_2184 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2184 + bitcast<u32>(1i));
    }
  }
  let x_2186 : vec4<f32> = u_xlat5;
  let x_2188 : vec4<f32> = u_xlat1;
  let x_2191 : vec4<f32> = u_xlat4;
  let x_2193 : vec3<f32> = ((vec3<f32>(x_2186.x, x_2186.y, x_2186.z) * vec3<f32>(x_2188.y, x_2188.z, x_2188.w)) + vec3<f32>(x_2191.x, x_2191.y, x_2191.z));
  let x_2194 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2193.x, x_2193.y, x_2193.z, x_2194.w);
  let x_2198 : vec4<f32> = u_xlat6;
  let x_2200 : vec4<f32> = u_xlat1;
  let x_2202 : vec3<f32> = (vec3<f32>(x_2198.x, x_2198.y, x_2198.z) + vec3<f32>(x_2200.x, x_2200.y, x_2200.z));
  let x_2203 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2202.x, x_2202.y, x_2202.z, x_2203.w);
  let x_2206 : f32 = x_56.x_Surface;
  u_xlatb20 = (x_2206 == 1.0f);
  let x_2208 : bool = u_xlatb20;
  let x_2209 : bool = u_xlatb40;
  u_xlatb20 = (x_2208 | x_2209);
  let x_2211 : bool = u_xlatb20;
  if (x_2211) {
    let x_2216 : f32 = u_xlat0.x;
    x_2212 = x_2216;
  } else {
    x_2212 = 1.0f;
  }
  let x_2218 : f32 = x_2212;
  SV_Target0.w = x_2218;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

