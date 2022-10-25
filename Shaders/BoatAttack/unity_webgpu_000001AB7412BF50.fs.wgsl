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
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_158 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_1695 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1797 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_57 : f32;
  var u_xlat19 : f32;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_108 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu0 : u32;
  var u_xlati0 : i32;
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
  var u_xlat58 : f32;
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
  var u_xlatb58 : bool;
  var x_1648 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu58 : u32;
  var u_xlati59 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati58 : i32;
  var u_xlat60 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_37 * x_40);
  let x_48 : f32 = u_xlat1.w;
  let x_54 : f32 = x_51.x_Cutoff;
  u_xlatb0 = (x_48 >= x_54);
  let x_56 : bool = u_xlatb0;
  if (x_56) {
    let x_61 : f32 = u_xlat1.w;
    x_57 = x_61;
  } else {
    x_57 = 0.0f;
  }
  let x_64 : f32 = x_57;
  u_xlat0.x = x_64;
  let x_68 : f32 = u_xlat0.w;
  let x_71 : f32 = vs_TEXCOORD7.w;
  let x_74 : f32 = x_51.x_Cutoff;
  u_xlat19 = ((x_68 * x_71) + -(x_74));
  let x_79 : f32 = u_xlat1.w;
  u_xlat38 = dpdxCoarse(x_79);
  let x_83 : f32 = u_xlat1.w;
  u_xlat57 = dpdyCoarse(x_83);
  let x_85 : f32 = u_xlat57;
  let x_87 : f32 = u_xlat38;
  u_xlat38 = (abs(x_85) + abs(x_87));
  let x_90 : f32 = u_xlat38;
  u_xlat38 = max(x_90, 0.0001f);
  let x_93 : f32 = u_xlat19;
  let x_94 : f32 = u_xlat38;
  u_xlat19 = (x_93 / x_94);
  let x_96 : f32 = u_xlat19;
  u_xlat19 = (x_96 + 0.5f);
  let x_99 : f32 = u_xlat19;
  u_xlat19 = clamp(x_99, 0.0f, 1.0f);
  let x_105 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb38 = !((x_105 == 0.0f));
  let x_107 : bool = u_xlatb38;
  if (x_107) {
    let x_111 : f32 = u_xlat19;
    x_108 = x_111;
  } else {
    let x_114 : f32 = u_xlat0.x;
    x_108 = x_114;
  }
  let x_115 : f32 = x_108;
  u_xlat0.x = x_115;
  let x_118 : f32 = u_xlat0.x;
  u_xlat0.x = (x_118 + -0.0001f);
  let x_123 : f32 = u_xlat0.x;
  u_xlatb0 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb0;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD3;
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_140);
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_145.x, x_145.x, x_145.x) * x_147);
  let x_151 : vec4<f32> = vs_TEXCOORD2;
  let x_161 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres0;
  let x_164 : vec3<f32> = (vec3<f32>(x_151.x, x_151.y, x_151.z) + -(vec3<f32>(x_161.x, x_161.y, x_161.z)));
  let x_165 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
  let x_168 : vec4<f32> = vs_TEXCOORD2;
  let x_172 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres1;
  let x_175 : vec3<f32> = (vec3<f32>(x_168.x, x_168.y, x_168.z) + -(vec3<f32>(x_172.x, x_172.y, x_172.z)));
  let x_176 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_175.x, x_175.y, x_175.z, x_176.w);
  let x_179 : vec4<f32> = vs_TEXCOORD2;
  let x_183 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres2;
  let x_186 : vec3<f32> = (vec3<f32>(x_179.x, x_179.y, x_179.z) + -(vec3<f32>(x_183.x, x_183.y, x_183.z)));
  let x_187 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_186.x, x_186.y, x_186.z, x_187.w);
  let x_190 : vec4<f32> = vs_TEXCOORD2;
  let x_193 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres3;
  let x_196 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + -(vec3<f32>(x_193.x, x_193.y, x_193.z)));
  let x_197 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_199 : vec4<f32> = u_xlat3;
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_199.x, x_199.y, x_199.z), vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec4<f32> = u_xlat4;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_205.x, x_205.y, x_205.z), vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_212 : vec4<f32> = u_xlat5;
  let x_214 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_212.x, x_212.y, x_212.z), vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_219 : vec4<f32> = u_xlat6;
  let x_221 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_219.x, x_219.y, x_219.z), vec3<f32>(x_221.x, x_221.y, x_221.z));
  let x_228 : vec4<f32> = u_xlat3;
  let x_231 : vec4<f32> = x_158.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_228 < x_231);
  let x_234 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_242);
  let x_246 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_246);
  let x_250 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_250);
  let x_256 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_256);
  let x_260 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_260);
  let x_263 : vec4<f32> = u_xlat3;
  let x_265 : vec4<f32> = u_xlat4;
  let x_267 : vec3<f32> = (vec3<f32>(x_263.x, x_263.y, x_263.z) + vec3<f32>(x_265.y, x_265.z, x_265.w));
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_270 : vec4<f32> = u_xlat3;
  let x_273 : vec3<f32> = max(vec3<f32>(x_270.x, x_270.y, x_270.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_274 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_274.x, x_273.x, x_273.y, x_273.z);
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_276, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_284 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_284) + 4.0f);
  let x_291 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_291);
  let x_295 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_295) << bitcast<u32>(2i));
  let x_298 : vec4<f32> = vs_TEXCOORD2;
  let x_300 : i32 = u_xlati0;
  let x_303 : i32 = u_xlati0;
  let x_307 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_300 + 1i) / 4i)][((x_303 + 1i) % 4i)];
  let x_309 : vec3<f32> = (vec3<f32>(x_298.y, x_298.y, x_298.y) * vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : i32 = u_xlati0;
  let x_314 : i32 = u_xlati0;
  let x_317 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_312 / 4i)][(x_314 % 4i)];
  let x_319 : vec4<f32> = vs_TEXCOORD2;
  let x_322 : vec4<f32> = u_xlat3;
  let x_324 : vec3<f32> = ((vec3<f32>(x_317.x, x_317.y, x_317.z) * vec3<f32>(x_319.x, x_319.x, x_319.x)) + vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_325 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_324.x, x_324.y, x_324.z, x_325.w);
  let x_327 : i32 = u_xlati0;
  let x_330 : i32 = u_xlati0;
  let x_334 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_327 + 2i) / 4i)][((x_330 + 2i) % 4i)];
  let x_336 : vec4<f32> = vs_TEXCOORD2;
  let x_339 : vec4<f32> = u_xlat3;
  let x_341 : vec3<f32> = ((vec3<f32>(x_334.x, x_334.y, x_334.z) * vec3<f32>(x_336.z, x_336.z, x_336.z)) + vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat3;
  let x_346 : i32 = u_xlati0;
  let x_349 : i32 = u_xlati0;
  let x_353 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_346 + 3i) / 4i)][((x_349 + 3i) % 4i)];
  let x_355 : vec3<f32> = (vec3<f32>(x_344.x, x_344.y, x_344.z) + vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_356 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_364 : vec2<f32> = vs_TEXCOORD1;
  let x_366 : f32 = x_27.x_GlobalMipBias.x;
  let x_367 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_364, x_366);
  u_xlat4 = x_367;
  let x_372 : vec2<f32> = vs_TEXCOORD1;
  let x_374 : f32 = x_27.x_GlobalMipBias.x;
  let x_375 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_372, x_374);
  let x_376 : vec3<f32> = vec3<f32>(x_375.x, x_375.y, x_375.z);
  let x_377 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat4;
  let x_383 : vec3<f32> = (vec3<f32>(x_379.x, x_379.y, x_379.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_384 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : vec3<f32> = u_xlat2;
  let x_387 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_386, vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_392 : f32 = u_xlat0.x;
  u_xlat0.x = (x_392 + 0.5f);
  let x_395 : vec4<f32> = u_xlat0;
  let x_397 : vec4<f32> = u_xlat5;
  let x_399 : vec3<f32> = (vec3<f32>(x_395.x, x_395.x, x_395.x) * vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_403 : f32 = u_xlat4.w;
  u_xlat0.x = max(x_403, 0.0001f);
  let x_406 : vec4<f32> = u_xlat4;
  let x_408 : vec4<f32> = u_xlat0;
  let x_410 : vec3<f32> = (vec3<f32>(x_406.x, x_406.y, x_406.z) / vec3<f32>(x_408.x, x_408.x, x_408.x));
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_415 : f32 = x_158.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_415);
  let x_417 : bool = u_xlatb0;
  if (x_417) {
    let x_421 : f32 = x_158.x_MainLightShadowParams.y;
    u_xlatb0 = (x_421 == 1.0f);
    let x_423 : bool = u_xlatb0;
    if (x_423) {
      let x_426 : vec4<f32> = u_xlat3;
      let x_430 : vec4<f32> = x_158.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_426.x, x_426.y, x_426.x, x_426.y) + x_430);
      let x_433 : vec4<f32> = u_xlat5;
      let x_434 : vec2<f32> = vec2<f32>(x_433.x, x_433.y);
      let x_436 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_434.x, x_434.y, x_436);
      let x_448 : vec3<f32> = txVec0;
      let x_450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_448.xy, x_448.z);
      u_xlat6.x = x_450;
      let x_453 : vec4<f32> = u_xlat5;
      let x_454 : vec2<f32> = vec2<f32>(x_453.z, x_453.w);
      let x_456 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_454.x, x_454.y, x_456);
      let x_463 : vec3<f32> = txVec1;
      let x_465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_463.xy, x_463.z);
      u_xlat6.y = x_465;
      let x_467 : vec4<f32> = u_xlat3;
      let x_471 : vec4<f32> = x_158.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_467.x, x_467.y, x_467.x, x_467.y) + x_471);
      let x_474 : vec4<f32> = u_xlat5;
      let x_475 : vec2<f32> = vec2<f32>(x_474.x, x_474.y);
      let x_477 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_475.x, x_475.y, x_477);
      let x_484 : vec3<f32> = txVec2;
      let x_486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_484.xy, x_484.z);
      u_xlat6.z = x_486;
      let x_489 : vec4<f32> = u_xlat5;
      let x_490 : vec2<f32> = vec2<f32>(x_489.z, x_489.w);
      let x_492 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_490.x, x_490.y, x_492);
      let x_499 : vec3<f32> = txVec3;
      let x_501 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_499.xy, x_499.z);
      u_xlat6.w = x_501;
      let x_503 : vec4<f32> = u_xlat6;
      u_xlat0.x = dot(x_503, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_511 : f32 = x_158.x_MainLightShadowParams.y;
      u_xlatb57 = (x_511 == 2.0f);
      let x_513 : bool = u_xlatb57;
      if (x_513) {
        let x_516 : vec4<f32> = u_xlat3;
        let x_520 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_524 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_520.z, x_520.w)) + vec2<f32>(0.5f, 0.5f));
        let x_525 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
        let x_527 : vec4<f32> = u_xlat5;
        let x_529 : vec2<f32> = floor(vec2<f32>(x_527.x, x_527.y));
        let x_530 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_534 : vec4<f32> = u_xlat3;
        let x_537 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_540 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_534.x, x_534.y) * vec2<f32>(x_537.z, x_537.w)) + -(vec2<f32>(x_540.x, x_540.y)));
        let x_544 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_544.x, x_544.x, x_544.y, x_544.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_549 : vec4<f32> = u_xlat6;
        let x_551 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_549.x, x_549.x, x_549.z, x_549.z) * vec4<f32>(x_551.x, x_551.x, x_551.z, x_551.z));
        let x_554 : vec4<f32> = u_xlat7;
        let x_558 : vec2<f32> = (vec2<f32>(x_554.y, x_554.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_559 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_558.x, x_559.y, x_558.y, x_559.w);
        let x_561 : vec4<f32> = u_xlat7;
        let x_564 : vec2<f32> = u_xlat43;
        let x_566 : vec2<f32> = ((vec2<f32>(x_561.x, x_561.z) * vec2<f32>(0.5f, 0.5f)) + -(x_564));
        let x_567 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_566.x, x_566.y, x_567.z, x_567.w);
        let x_570 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_570) + vec2<f32>(1.0f, 1.0f));
        let x_575 : vec2<f32> = u_xlat43;
        let x_577 : vec2<f32> = min(x_575, vec2<f32>(0.0f, 0.0f));
        let x_578 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat8;
        let x_583 : vec4<f32> = u_xlat8;
        let x_586 : vec2<f32> = u_xlat45;
        let x_587 : vec2<f32> = ((-(vec2<f32>(x_580.x, x_580.y)) * vec2<f32>(x_583.x, x_583.y)) + x_586);
        let x_588 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
        let x_590 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_590, vec2<f32>(0.0f, 0.0f));
        let x_592 : vec2<f32> = u_xlat43;
        let x_594 : vec2<f32> = u_xlat43;
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_592) * x_594) + vec2<f32>(x_596.y, x_596.w));
        let x_599 : vec4<f32> = u_xlat8;
        let x_601 : vec2<f32> = (vec2<f32>(x_599.x, x_599.y) + vec2<f32>(1.0f, 1.0f));
        let x_602 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
        let x_604 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_604 + vec2<f32>(1.0f, 1.0f));
        let x_607 : vec4<f32> = u_xlat7;
        let x_611 : vec2<f32> = (vec2<f32>(x_607.x, x_607.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_612 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
        let x_614 : vec2<f32> = u_xlat45;
        let x_615 : vec2<f32> = (x_614 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_616 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat8;
        let x_620 : vec2<f32> = (vec2<f32>(x_618.x, x_618.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_621 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
        let x_624 : vec2<f32> = u_xlat43;
        let x_625 : vec2<f32> = (x_624 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_626 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_628.y, x_628.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_632 : f32 = u_xlat8.x;
        u_xlat9.z = x_632;
        let x_635 : f32 = u_xlat43.x;
        u_xlat9.w = x_635;
        let x_638 : f32 = u_xlat10.x;
        u_xlat7.z = x_638;
        let x_641 : f32 = u_xlat6.x;
        u_xlat7.w = x_641;
        let x_644 : vec4<f32> = u_xlat7;
        let x_646 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_644.z, x_644.w, x_644.x, x_644.z) + vec4<f32>(x_646.z, x_646.w, x_646.x, x_646.z));
        let x_650 : f32 = u_xlat9.y;
        u_xlat8.z = x_650;
        let x_653 : f32 = u_xlat43.y;
        u_xlat8.w = x_653;
        let x_656 : f32 = u_xlat7.y;
        u_xlat10.z = x_656;
        let x_659 : f32 = u_xlat6.z;
        u_xlat10.w = x_659;
        let x_661 : vec4<f32> = u_xlat8;
        let x_663 : vec4<f32> = u_xlat10;
        let x_665 : vec3<f32> = (vec3<f32>(x_661.z, x_661.y, x_661.w) + vec3<f32>(x_663.z, x_663.y, x_663.w));
        let x_666 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
        let x_668 : vec4<f32> = u_xlat7;
        let x_670 : vec4<f32> = u_xlat11;
        let x_672 : vec3<f32> = (vec3<f32>(x_668.x, x_668.z, x_668.w) / vec3<f32>(x_670.z, x_670.w, x_670.y));
        let x_673 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
        let x_675 : vec4<f32> = u_xlat7;
        let x_680 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_681 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
        let x_683 : vec4<f32> = u_xlat10;
        let x_685 : vec4<f32> = u_xlat6;
        let x_687 : vec3<f32> = (vec3<f32>(x_683.z, x_683.y, x_683.w) / vec3<f32>(x_685.x, x_685.y, x_685.z));
        let x_688 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
        let x_690 : vec4<f32> = u_xlat8;
        let x_692 : vec3<f32> = (vec3<f32>(x_690.x, x_690.y, x_690.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_693 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
        let x_695 : vec4<f32> = u_xlat7;
        let x_698 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_700 : vec3<f32> = (vec3<f32>(x_695.y, x_695.x, x_695.z) * vec3<f32>(x_698.x, x_698.x, x_698.x));
        let x_701 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
        let x_703 : vec4<f32> = u_xlat8;
        let x_706 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_708 : vec3<f32> = (vec3<f32>(x_703.x, x_703.y, x_703.z) * vec3<f32>(x_706.y, x_706.y, x_706.y));
        let x_709 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
        let x_712 : f32 = u_xlat8.x;
        u_xlat7.w = x_712;
        let x_714 : vec4<f32> = u_xlat5;
        let x_717 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_720 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_714.x, x_714.y, x_714.x, x_714.y) * vec4<f32>(x_717.x, x_717.y, x_717.x, x_717.y)) + vec4<f32>(x_720.y, x_720.w, x_720.x, x_720.w));
        let x_723 : vec4<f32> = u_xlat5;
        let x_726 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_729 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_723.x, x_723.y) * vec2<f32>(x_726.x, x_726.y)) + vec2<f32>(x_729.z, x_729.w));
        let x_733 : f32 = u_xlat7.y;
        u_xlat8.w = x_733;
        let x_735 : vec4<f32> = u_xlat8;
        let x_736 : vec2<f32> = vec2<f32>(x_735.y, x_735.z);
        let x_737 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_737.x, x_736.x, x_737.z, x_736.y);
        let x_739 : vec4<f32> = u_xlat5;
        let x_742 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_745 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y) * vec4<f32>(x_742.x, x_742.y, x_742.x, x_742.y)) + vec4<f32>(x_745.x, x_745.y, x_745.z, x_745.y));
        let x_748 : vec4<f32> = u_xlat5;
        let x_751 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_754 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_748.x, x_748.y, x_748.x, x_748.y) * vec4<f32>(x_751.x, x_751.y, x_751.x, x_751.y)) + vec4<f32>(x_754.w, x_754.y, x_754.w, x_754.z));
        let x_757 : vec4<f32> = u_xlat5;
        let x_760 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_763 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_757.x, x_757.y, x_757.x, x_757.y) * vec4<f32>(x_760.x, x_760.y, x_760.x, x_760.y)) + vec4<f32>(x_763.x, x_763.w, x_763.z, x_763.w));
        let x_767 : vec4<f32> = u_xlat6;
        let x_769 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_767.x, x_767.x, x_767.x, x_767.y) * vec4<f32>(x_769.z, x_769.w, x_769.y, x_769.z));
        let x_773 : vec4<f32> = u_xlat6;
        let x_775 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_773.y, x_773.y, x_773.z, x_773.z) * x_775);
        let x_778 : f32 = u_xlat6.z;
        let x_780 : f32 = u_xlat11.y;
        u_xlat57 = (x_778 * x_780);
        let x_783 : vec4<f32> = u_xlat9;
        let x_784 : vec2<f32> = vec2<f32>(x_783.x, x_783.y);
        let x_786 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_784.x, x_784.y, x_786);
        let x_794 : vec3<f32> = txVec4;
        let x_796 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_794.xy, x_794.z);
        u_xlat58 = x_796;
        let x_798 : vec4<f32> = u_xlat9;
        let x_799 : vec2<f32> = vec2<f32>(x_798.z, x_798.w);
        let x_801 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_809 : vec3<f32> = txVec5;
        let x_811 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_809.xy, x_809.z);
        u_xlat59 = x_811;
        let x_812 : f32 = u_xlat59;
        let x_814 : f32 = u_xlat12.y;
        u_xlat59 = (x_812 * x_814);
        let x_817 : f32 = u_xlat12.x;
        let x_818 : f32 = u_xlat58;
        let x_820 : f32 = u_xlat59;
        u_xlat58 = ((x_817 * x_818) + x_820);
        let x_823 : vec2<f32> = u_xlat43;
        let x_825 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_823.x, x_823.y, x_825);
        let x_832 : vec3<f32> = txVec6;
        let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_832.xy, x_832.z);
        u_xlat59 = x_834;
        let x_836 : f32 = u_xlat12.z;
        let x_837 : f32 = u_xlat59;
        let x_839 : f32 = u_xlat58;
        u_xlat58 = ((x_836 * x_837) + x_839);
        let x_842 : vec4<f32> = u_xlat8;
        let x_843 : vec2<f32> = vec2<f32>(x_842.x, x_842.y);
        let x_845 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_843.x, x_843.y, x_845);
        let x_852 : vec3<f32> = txVec7;
        let x_854 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_852.xy, x_852.z);
        u_xlat59 = x_854;
        let x_856 : f32 = u_xlat12.w;
        let x_857 : f32 = u_xlat59;
        let x_859 : f32 = u_xlat58;
        u_xlat58 = ((x_856 * x_857) + x_859);
        let x_862 : vec4<f32> = u_xlat10;
        let x_863 : vec2<f32> = vec2<f32>(x_862.x, x_862.y);
        let x_865 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_863.x, x_863.y, x_865);
        let x_872 : vec3<f32> = txVec8;
        let x_874 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_872.xy, x_872.z);
        u_xlat59 = x_874;
        let x_876 : f32 = u_xlat13.x;
        let x_877 : f32 = u_xlat59;
        let x_879 : f32 = u_xlat58;
        u_xlat58 = ((x_876 * x_877) + x_879);
        let x_882 : vec4<f32> = u_xlat10;
        let x_883 : vec2<f32> = vec2<f32>(x_882.z, x_882.w);
        let x_885 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_883.x, x_883.y, x_885);
        let x_892 : vec3<f32> = txVec9;
        let x_894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_892.xy, x_892.z);
        u_xlat59 = x_894;
        let x_896 : f32 = u_xlat13.y;
        let x_897 : f32 = u_xlat59;
        let x_899 : f32 = u_xlat58;
        u_xlat58 = ((x_896 * x_897) + x_899);
        let x_902 : vec4<f32> = u_xlat8;
        let x_903 : vec2<f32> = vec2<f32>(x_902.z, x_902.w);
        let x_905 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_903.x, x_903.y, x_905);
        let x_912 : vec3<f32> = txVec10;
        let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_912.xy, x_912.z);
        u_xlat59 = x_914;
        let x_916 : f32 = u_xlat13.z;
        let x_917 : f32 = u_xlat59;
        let x_919 : f32 = u_xlat58;
        u_xlat58 = ((x_916 * x_917) + x_919);
        let x_922 : vec4<f32> = u_xlat7;
        let x_923 : vec2<f32> = vec2<f32>(x_922.x, x_922.y);
        let x_925 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_932 : vec3<f32> = txVec11;
        let x_934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_932.xy, x_932.z);
        u_xlat59 = x_934;
        let x_936 : f32 = u_xlat13.w;
        let x_937 : f32 = u_xlat59;
        let x_939 : f32 = u_xlat58;
        u_xlat58 = ((x_936 * x_937) + x_939);
        let x_942 : vec4<f32> = u_xlat7;
        let x_943 : vec2<f32> = vec2<f32>(x_942.z, x_942.w);
        let x_945 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_943.x, x_943.y, x_945);
        let x_952 : vec3<f32> = txVec12;
        let x_954 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_952.xy, x_952.z);
        u_xlat59 = x_954;
        let x_955 : f32 = u_xlat57;
        let x_956 : f32 = u_xlat59;
        let x_958 : f32 = u_xlat58;
        u_xlat0.x = ((x_955 * x_956) + x_958);
      } else {
        let x_962 : vec4<f32> = u_xlat3;
        let x_965 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_968 : vec2<f32> = ((vec2<f32>(x_962.x, x_962.y) * vec2<f32>(x_965.z, x_965.w)) + vec2<f32>(0.5f, 0.5f));
        let x_969 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
        let x_971 : vec4<f32> = u_xlat5;
        let x_973 : vec2<f32> = floor(vec2<f32>(x_971.x, x_971.y));
        let x_974 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec4<f32> = u_xlat3;
        let x_979 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_982 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_976.x, x_976.y) * vec2<f32>(x_979.z, x_979.w)) + -(vec2<f32>(x_982.x, x_982.y)));
        let x_986 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_986.x, x_986.x, x_986.y, x_986.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_989 : vec4<f32> = u_xlat6;
        let x_991 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_989.x, x_989.x, x_989.z, x_989.z) * vec4<f32>(x_991.x, x_991.x, x_991.z, x_991.z));
        let x_994 : vec4<f32> = u_xlat7;
        let x_998 : vec2<f32> = (vec2<f32>(x_994.y, x_994.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_999.x, x_998.x, x_999.z, x_998.y);
        let x_1001 : vec4<f32> = u_xlat7;
        let x_1004 : vec2<f32> = u_xlat43;
        let x_1006 : vec2<f32> = ((vec2<f32>(x_1001.x, x_1001.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1004));
        let x_1007 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1006.x, x_1007.y, x_1006.y, x_1007.w);
        let x_1009 : vec2<f32> = u_xlat43;
        let x_1011 : vec2<f32> = (-(x_1009) + vec2<f32>(1.0f, 1.0f));
        let x_1012 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1011.x, x_1011.y, x_1012.z, x_1012.w);
        let x_1014 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1014, vec2<f32>(0.0f, 0.0f));
        let x_1016 : vec2<f32> = u_xlat45;
        let x_1018 : vec2<f32> = u_xlat45;
        let x_1020 : vec4<f32> = u_xlat7;
        let x_1022 : vec2<f32> = ((-(x_1016) * x_1018) + vec2<f32>(x_1020.x, x_1020.y));
        let x_1023 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1022.x, x_1022.y, x_1023.z, x_1023.w);
        let x_1025 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1025, vec2<f32>(0.0f, 0.0f));
        let x_1028 : vec2<f32> = u_xlat45;
        let x_1030 : vec2<f32> = u_xlat45;
        let x_1032 : vec4<f32> = u_xlat6;
        let x_1034 : vec2<f32> = ((-(x_1028) * x_1030) + vec2<f32>(x_1032.y, x_1032.w));
        let x_1035 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1034.x, x_1035.y, x_1034.y);
        let x_1037 : vec4<f32> = u_xlat7;
        let x_1040 : vec2<f32> = (vec2<f32>(x_1037.x, x_1037.y) + vec2<f32>(2.0f, 2.0f));
        let x_1041 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1040.x, x_1040.y, x_1041.z, x_1041.w);
        let x_1043 : vec3<f32> = u_xlat25;
        let x_1045 : vec2<f32> = (vec2<f32>(x_1043.x, x_1043.z) + vec2<f32>(2.0f, 2.0f));
        let x_1046 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1046.x, x_1045.x, x_1046.z, x_1045.y);
        let x_1049 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1049 * 0.081632003f);
        let x_1053 : vec4<f32> = u_xlat6;
        let x_1056 : vec3<f32> = (vec3<f32>(x_1053.z, x_1053.x, x_1053.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1057 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat7;
        let x_1062 : vec2<f32> = (vec2<f32>(x_1059.x, x_1059.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1063 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1066 : f32 = u_xlat10.y;
        u_xlat9.x = x_1066;
        let x_1068 : vec2<f32> = u_xlat43;
        let x_1075 : vec2<f32> = ((vec2<f32>(x_1068.x, x_1068.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1076.x, x_1075.x, x_1076.z, x_1075.y);
        let x_1078 : vec2<f32> = u_xlat43;
        let x_1082 : vec2<f32> = ((vec2<f32>(x_1078.x, x_1078.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1083 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1082.x, x_1083.y, x_1082.y, x_1083.w);
        let x_1086 : f32 = u_xlat6.x;
        u_xlat7.y = x_1086;
        let x_1089 : f32 = u_xlat8.y;
        u_xlat7.w = x_1089;
        let x_1091 : vec4<f32> = u_xlat7;
        let x_1092 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1091 + x_1092);
        let x_1094 : vec2<f32> = u_xlat43;
        let x_1097 : vec2<f32> = ((vec2<f32>(x_1094.y, x_1094.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1098 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1098.x, x_1097.x, x_1098.z, x_1097.y);
        let x_1100 : vec2<f32> = u_xlat43;
        let x_1103 : vec2<f32> = ((vec2<f32>(x_1100.y, x_1100.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1104 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1103.x, x_1104.y, x_1103.y, x_1104.w);
        let x_1107 : f32 = u_xlat6.y;
        u_xlat8.y = x_1107;
        let x_1109 : vec4<f32> = u_xlat8;
        let x_1110 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1109 + x_1110);
        let x_1112 : vec4<f32> = u_xlat7;
        let x_1113 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1112 / x_1113);
        let x_1115 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1115 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1121 : vec4<f32> = u_xlat8;
        let x_1122 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1121 / x_1122);
        let x_1124 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1124 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1126 : vec4<f32> = u_xlat7;
        let x_1129 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1126.w, x_1126.x, x_1126.y, x_1126.z) * vec4<f32>(x_1129.x, x_1129.x, x_1129.x, x_1129.x));
        let x_1132 : vec4<f32> = u_xlat8;
        let x_1135 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1132.x, x_1132.w, x_1132.y, x_1132.z) * vec4<f32>(x_1135.y, x_1135.y, x_1135.y, x_1135.y));
        let x_1138 : vec4<f32> = u_xlat7;
        let x_1139 : vec3<f32> = vec3<f32>(x_1138.y, x_1138.z, x_1138.w);
        let x_1140 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1139.x, x_1140.y, x_1139.y, x_1139.z);
        let x_1143 : f32 = u_xlat8.x;
        u_xlat10.y = x_1143;
        let x_1145 : vec4<f32> = u_xlat5;
        let x_1148 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1145.x, x_1145.y, x_1145.x, x_1145.y) * vec4<f32>(x_1148.x, x_1148.y, x_1148.x, x_1148.y)) + vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1151.y));
        let x_1154 : vec4<f32> = u_xlat5;
        let x_1157 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1160 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1154.x, x_1154.y) * vec2<f32>(x_1157.x, x_1157.y)) + vec2<f32>(x_1160.w, x_1160.y));
        let x_1164 : f32 = u_xlat10.y;
        u_xlat7.y = x_1164;
        let x_1167 : f32 = u_xlat8.z;
        u_xlat10.y = x_1167;
        let x_1169 : vec4<f32> = u_xlat5;
        let x_1172 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1175 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1169.x, x_1169.y, x_1169.x, x_1169.y) * vec4<f32>(x_1172.x, x_1172.y, x_1172.x, x_1172.y)) + vec4<f32>(x_1175.x, x_1175.y, x_1175.z, x_1175.y));
        let x_1178 : vec4<f32> = u_xlat5;
        let x_1181 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1184 : vec4<f32> = u_xlat10;
        let x_1186 : vec2<f32> = ((vec2<f32>(x_1178.x, x_1178.y) * vec2<f32>(x_1181.x, x_1181.y)) + vec2<f32>(x_1184.w, x_1184.y));
        let x_1187 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1186.x, x_1186.y, x_1187.z, x_1187.w);
        let x_1190 : f32 = u_xlat10.y;
        u_xlat7.z = x_1190;
        let x_1193 : vec4<f32> = u_xlat5;
        let x_1196 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1199 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y) * vec4<f32>(x_1196.x, x_1196.y, x_1196.x, x_1196.y)) + vec4<f32>(x_1199.x, x_1199.y, x_1199.x, x_1199.z));
        let x_1203 : f32 = u_xlat8.w;
        u_xlat10.y = x_1203;
        let x_1206 : vec4<f32> = u_xlat5;
        let x_1209 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1212 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1206.x, x_1206.y, x_1206.x, x_1206.y) * vec4<f32>(x_1209.x, x_1209.y, x_1209.x, x_1209.y)) + vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1212.y));
        let x_1216 : vec4<f32> = u_xlat5;
        let x_1219 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1222 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1216.x, x_1216.y) * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1222.w, x_1222.y));
        let x_1226 : f32 = u_xlat10.y;
        u_xlat7.w = x_1226;
        let x_1229 : vec4<f32> = u_xlat5;
        let x_1232 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1229.x, x_1229.y) * vec2<f32>(x_1232.x, x_1232.y)) + vec2<f32>(x_1235.x, x_1235.w));
        let x_1238 : vec4<f32> = u_xlat10;
        let x_1239 : vec3<f32> = vec3<f32>(x_1238.x, x_1238.z, x_1238.w);
        let x_1240 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1239.x, x_1240.y, x_1239.y, x_1239.z);
        let x_1242 : vec4<f32> = u_xlat5;
        let x_1245 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1248 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1242.x, x_1242.y, x_1242.x, x_1242.y) * vec4<f32>(x_1245.x, x_1245.y, x_1245.x, x_1245.y)) + vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1248.y));
        let x_1252 : vec4<f32> = u_xlat5;
        let x_1255 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1258 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1252.x, x_1252.y) * vec2<f32>(x_1255.x, x_1255.y)) + vec2<f32>(x_1258.w, x_1258.y));
        let x_1262 : f32 = u_xlat7.x;
        u_xlat8.x = x_1262;
        let x_1264 : vec4<f32> = u_xlat5;
        let x_1267 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1270 : vec4<f32> = u_xlat8;
        let x_1272 : vec2<f32> = ((vec2<f32>(x_1264.x, x_1264.y) * vec2<f32>(x_1267.x, x_1267.y)) + vec2<f32>(x_1270.x, x_1270.y));
        let x_1273 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1272.x, x_1272.y, x_1273.z, x_1273.w);
        let x_1276 : vec4<f32> = u_xlat6;
        let x_1278 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1276.x, x_1276.x, x_1276.x, x_1276.x) * x_1278);
        let x_1281 : vec4<f32> = u_xlat6;
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1281.y, x_1281.y, x_1281.y, x_1281.y) * x_1283);
        let x_1286 : vec4<f32> = u_xlat6;
        let x_1288 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1286.z, x_1286.z, x_1286.z, x_1286.z) * x_1288);
        let x_1290 : vec4<f32> = u_xlat6;
        let x_1292 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1290.w, x_1290.w, x_1290.w, x_1290.w) * x_1292);
        let x_1295 : vec4<f32> = u_xlat11;
        let x_1296 : vec2<f32> = vec2<f32>(x_1295.x, x_1295.y);
        let x_1298 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec13;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1305.xy, x_1305.z);
        u_xlat57 = x_1307;
        let x_1309 : vec4<f32> = u_xlat11;
        let x_1310 : vec2<f32> = vec2<f32>(x_1309.z, x_1309.w);
        let x_1312 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1310.x, x_1310.y, x_1312);
        let x_1319 : vec3<f32> = txVec14;
        let x_1321 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1319.xy, x_1319.z);
        u_xlat58 = x_1321;
        let x_1322 : f32 = u_xlat58;
        let x_1324 : f32 = u_xlat16.y;
        u_xlat58 = (x_1322 * x_1324);
        let x_1327 : f32 = u_xlat16.x;
        let x_1328 : f32 = u_xlat57;
        let x_1330 : f32 = u_xlat58;
        u_xlat57 = ((x_1327 * x_1328) + x_1330);
        let x_1333 : vec2<f32> = u_xlat43;
        let x_1335 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1333.x, x_1333.y, x_1335);
        let x_1342 : vec3<f32> = txVec15;
        let x_1344 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1342.xy, x_1342.z);
        u_xlat58 = x_1344;
        let x_1346 : f32 = u_xlat16.z;
        let x_1347 : f32 = u_xlat58;
        let x_1349 : f32 = u_xlat57;
        u_xlat57 = ((x_1346 * x_1347) + x_1349);
        let x_1352 : vec4<f32> = u_xlat14;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.x, x_1352.y);
        let x_1355 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec16;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1362.xy, x_1362.z);
        u_xlat58 = x_1364;
        let x_1366 : f32 = u_xlat16.w;
        let x_1367 : f32 = u_xlat58;
        let x_1369 : f32 = u_xlat57;
        u_xlat57 = ((x_1366 * x_1367) + x_1369);
        let x_1372 : vec4<f32> = u_xlat12;
        let x_1373 : vec2<f32> = vec2<f32>(x_1372.x, x_1372.y);
        let x_1375 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1373.x, x_1373.y, x_1375);
        let x_1382 : vec3<f32> = txVec17;
        let x_1384 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1382.xy, x_1382.z);
        u_xlat58 = x_1384;
        let x_1386 : f32 = u_xlat17.x;
        let x_1387 : f32 = u_xlat58;
        let x_1389 : f32 = u_xlat57;
        u_xlat57 = ((x_1386 * x_1387) + x_1389);
        let x_1392 : vec4<f32> = u_xlat12;
        let x_1393 : vec2<f32> = vec2<f32>(x_1392.z, x_1392.w);
        let x_1395 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
        let x_1402 : vec3<f32> = txVec18;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1402.xy, x_1402.z);
        u_xlat58 = x_1404;
        let x_1406 : f32 = u_xlat17.y;
        let x_1407 : f32 = u_xlat58;
        let x_1409 : f32 = u_xlat57;
        u_xlat57 = ((x_1406 * x_1407) + x_1409);
        let x_1412 : vec4<f32> = u_xlat13;
        let x_1413 : vec2<f32> = vec2<f32>(x_1412.x, x_1412.y);
        let x_1415 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1413.x, x_1413.y, x_1415);
        let x_1422 : vec3<f32> = txVec19;
        let x_1424 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1422.xy, x_1422.z);
        u_xlat58 = x_1424;
        let x_1426 : f32 = u_xlat17.z;
        let x_1427 : f32 = u_xlat58;
        let x_1429 : f32 = u_xlat57;
        u_xlat57 = ((x_1426 * x_1427) + x_1429);
        let x_1432 : vec4<f32> = u_xlat14;
        let x_1433 : vec2<f32> = vec2<f32>(x_1432.z, x_1432.w);
        let x_1435 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1433.x, x_1433.y, x_1435);
        let x_1442 : vec3<f32> = txVec20;
        let x_1444 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1442.xy, x_1442.z);
        u_xlat58 = x_1444;
        let x_1446 : f32 = u_xlat17.w;
        let x_1447 : f32 = u_xlat58;
        let x_1449 : f32 = u_xlat57;
        u_xlat57 = ((x_1446 * x_1447) + x_1449);
        let x_1452 : vec4<f32> = u_xlat15;
        let x_1453 : vec2<f32> = vec2<f32>(x_1452.x, x_1452.y);
        let x_1455 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1453.x, x_1453.y, x_1455);
        let x_1462 : vec3<f32> = txVec21;
        let x_1464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1462.xy, x_1462.z);
        u_xlat58 = x_1464;
        let x_1466 : f32 = u_xlat18.x;
        let x_1467 : f32 = u_xlat58;
        let x_1469 : f32 = u_xlat57;
        u_xlat57 = ((x_1466 * x_1467) + x_1469);
        let x_1472 : vec4<f32> = u_xlat15;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.z, x_1472.w);
        let x_1475 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec22;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat58 = x_1484;
        let x_1486 : f32 = u_xlat18.y;
        let x_1487 : f32 = u_xlat58;
        let x_1489 : f32 = u_xlat57;
        u_xlat57 = ((x_1486 * x_1487) + x_1489);
        let x_1492 : vec2<f32> = u_xlat26;
        let x_1494 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1492.x, x_1492.y, x_1494);
        let x_1501 : vec3<f32> = txVec23;
        let x_1503 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1501.xy, x_1501.z);
        u_xlat58 = x_1503;
        let x_1505 : f32 = u_xlat18.z;
        let x_1506 : f32 = u_xlat58;
        let x_1508 : f32 = u_xlat57;
        u_xlat57 = ((x_1505 * x_1506) + x_1508);
        let x_1511 : vec2<f32> = u_xlat51;
        let x_1513 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1511.x, x_1511.y, x_1513);
        let x_1520 : vec3<f32> = txVec24;
        let x_1522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1520.xy, x_1520.z);
        u_xlat58 = x_1522;
        let x_1524 : f32 = u_xlat18.w;
        let x_1525 : f32 = u_xlat58;
        let x_1527 : f32 = u_xlat57;
        u_xlat57 = ((x_1524 * x_1525) + x_1527);
        let x_1530 : vec4<f32> = u_xlat10;
        let x_1531 : vec2<f32> = vec2<f32>(x_1530.x, x_1530.y);
        let x_1533 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec25;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1540.xy, x_1540.z);
        u_xlat58 = x_1542;
        let x_1544 : f32 = u_xlat6.x;
        let x_1545 : f32 = u_xlat58;
        let x_1547 : f32 = u_xlat57;
        u_xlat57 = ((x_1544 * x_1545) + x_1547);
        let x_1550 : vec4<f32> = u_xlat10;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.z, x_1550.w);
        let x_1553 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec26;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1560.xy, x_1560.z);
        u_xlat58 = x_1562;
        let x_1564 : f32 = u_xlat6.y;
        let x_1565 : f32 = u_xlat58;
        let x_1567 : f32 = u_xlat57;
        u_xlat57 = ((x_1564 * x_1565) + x_1567);
        let x_1570 : vec2<f32> = u_xlat46;
        let x_1572 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1570.x, x_1570.y, x_1572);
        let x_1579 : vec3<f32> = txVec27;
        let x_1581 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1579.xy, x_1579.z);
        u_xlat58 = x_1581;
        let x_1583 : f32 = u_xlat6.z;
        let x_1584 : f32 = u_xlat58;
        let x_1586 : f32 = u_xlat57;
        u_xlat57 = ((x_1583 * x_1584) + x_1586);
        let x_1589 : vec4<f32> = u_xlat5;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.x, x_1589.y);
        let x_1592 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec28;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1599.xy, x_1599.z);
        u_xlat58 = x_1601;
        let x_1603 : f32 = u_xlat6.w;
        let x_1604 : f32 = u_xlat58;
        let x_1606 : f32 = u_xlat57;
        u_xlat0.x = ((x_1603 * x_1604) + x_1606);
      }
    }
  } else {
    let x_1611 : vec4<f32> = u_xlat3;
    let x_1612 : vec2<f32> = vec2<f32>(x_1611.x, x_1611.y);
    let x_1614 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
    let x_1621 : vec3<f32> = txVec29;
    let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1621.xy, x_1621.z);
    u_xlat0.x = x_1623;
  }
  let x_1626 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat57 = (-(x_1626) + 1.0f);
  let x_1630 : f32 = u_xlat0.x;
  let x_1632 : f32 = x_158.x_MainLightShadowParams.x;
  let x_1634 : f32 = u_xlat57;
  u_xlat0.x = ((x_1630 * x_1632) + x_1634);
  let x_1638 : f32 = u_xlat3.z;
  u_xlatb57 = (0.0f >= x_1638);
  let x_1642 : f32 = u_xlat3.z;
  u_xlatb58 = (x_1642 >= 1.0f);
  let x_1644 : bool = u_xlatb57;
  let x_1645 : bool = u_xlatb58;
  u_xlatb57 = (x_1644 | x_1645);
  let x_1647 : bool = u_xlatb57;
  if (x_1647) {
    x_1648 = 1.0f;
  } else {
    let x_1653 : f32 = u_xlat0.x;
    x_1648 = x_1653;
  }
  let x_1654 : f32 = x_1648;
  u_xlat0.x = x_1654;
  let x_1656 : vec4<f32> = vs_TEXCOORD2;
  let x_1660 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1662 : vec3<f32> = (vec3<f32>(x_1656.x, x_1656.y, x_1656.z) + -(x_1660));
  let x_1663 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1662.x, x_1662.y, x_1662.z, x_1663.w);
  let x_1665 : vec4<f32> = u_xlat3;
  let x_1667 : vec4<f32> = u_xlat3;
  u_xlat57 = dot(vec3<f32>(x_1665.x, x_1665.y, x_1665.z), vec3<f32>(x_1667.x, x_1667.y, x_1667.z));
  let x_1670 : f32 = u_xlat57;
  let x_1672 : f32 = x_158.x_MainLightShadowParams.z;
  let x_1675 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat57 = ((x_1670 * x_1672) + x_1675);
  let x_1677 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1677, 0.0f, 1.0f);
  let x_1680 : f32 = u_xlat0.x;
  u_xlat58 = (-(x_1680) + 1.0f);
  let x_1683 : f32 = u_xlat57;
  let x_1684 : f32 = u_xlat58;
  let x_1687 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1683 * x_1684) + x_1687);
  let x_1691 : f32 = u_xlat0.x;
  let x_1697 : f32 = x_1695.unity_LightData.z;
  u_xlat0.x = (x_1691 * x_1697);
  let x_1700 : vec4<f32> = u_xlat0;
  let x_1703 : vec4<f32> = x_27.x_MainLightColor;
  let x_1705 : vec3<f32> = (vec3<f32>(x_1700.x, x_1700.x, x_1700.x) * vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
  let x_1706 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1705.x, x_1705.y, x_1705.z, x_1706.w);
  let x_1708 : vec3<f32> = u_xlat2;
  let x_1710 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_1708, vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
  let x_1715 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1715, 0.0f, 1.0f);
  let x_1718 : vec4<f32> = u_xlat0;
  let x_1720 : vec4<f32> = u_xlat3;
  let x_1722 : vec3<f32> = (vec3<f32>(x_1718.x, x_1718.x, x_1718.x) * vec3<f32>(x_1720.x, x_1720.y, x_1720.z));
  let x_1723 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1722.x, x_1722.y, x_1722.z, x_1723.w);
  let x_1725 : vec4<f32> = u_xlat1;
  let x_1727 : vec4<f32> = u_xlat3;
  let x_1729 : vec3<f32> = (vec3<f32>(x_1725.x, x_1725.y, x_1725.z) * vec3<f32>(x_1727.x, x_1727.y, x_1727.z));
  let x_1730 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1729.x, x_1729.y, x_1729.z, x_1730.w);
  let x_1733 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1735 : f32 = x_1695.unity_LightData.y;
  u_xlat0.x = min(x_1733, x_1735);
  let x_1739 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1739));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1751 : u32 = u_xlatu_loop_1;
    let x_1752 : u32 = u_xlatu0;
    if ((x_1751 < x_1752)) {
    } else {
      break;
    }
    let x_1755 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_1755 >> 2u);
    let x_1758 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_1758 & 3u));
    let x_1761 : u32 = u_xlatu58;
    let x_1764 : vec4<f32> = x_1695.unity_LightIndices[bitcast<i32>(x_1761)];
    let x_1774 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1779 : vec4<u32> = indexable[x_1774];
    u_xlat58 = dot(x_1764, bitcast<vec4<f32>>(x_1779));
    let x_1783 : f32 = u_xlat58;
    u_xlati58 = i32(x_1783);
    let x_1785 : vec4<f32> = vs_TEXCOORD2;
    let x_1798 : i32 = u_xlati58;
    let x_1800 : vec4<f32> = x_1797.x_AdditionalLightsPosition[x_1798];
    let x_1803 : i32 = u_xlati58;
    let x_1805 : vec4<f32> = x_1797.x_AdditionalLightsPosition[x_1803];
    let x_1807 : vec3<f32> = ((-(vec3<f32>(x_1785.x, x_1785.y, x_1785.z)) * vec3<f32>(x_1800.w, x_1800.w, x_1800.w)) + vec3<f32>(x_1805.x, x_1805.y, x_1805.z));
    let x_1808 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
    let x_1810 : vec4<f32> = u_xlat6;
    let x_1812 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_1810.x, x_1810.y, x_1810.z), vec3<f32>(x_1812.x, x_1812.y, x_1812.z));
    let x_1815 : f32 = u_xlat59;
    u_xlat59 = max(x_1815, 6.10351562e-05f);
    let x_1819 : f32 = u_xlat59;
    u_xlat60 = inverseSqrt(x_1819);
    let x_1821 : f32 = u_xlat60;
    let x_1823 : vec4<f32> = u_xlat6;
    let x_1825 : vec3<f32> = (vec3<f32>(x_1821, x_1821, x_1821) * vec3<f32>(x_1823.x, x_1823.y, x_1823.z));
    let x_1826 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1825.x, x_1825.y, x_1825.z, x_1826.w);
    let x_1828 : f32 = u_xlat59;
    u_xlat60 = (1.0f / x_1828);
    let x_1830 : f32 = u_xlat59;
    let x_1831 : i32 = u_xlati58;
    let x_1833 : f32 = x_1797.x_AdditionalLightsAttenuation[x_1831].x;
    u_xlat59 = (x_1830 * x_1833);
    let x_1835 : f32 = u_xlat59;
    let x_1837 : f32 = u_xlat59;
    u_xlat59 = ((-(x_1835) * x_1837) + 1.0f);
    let x_1840 : f32 = u_xlat59;
    u_xlat59 = max(x_1840, 0.0f);
    let x_1842 : f32 = u_xlat59;
    let x_1843 : f32 = u_xlat59;
    u_xlat59 = (x_1842 * x_1843);
    let x_1845 : f32 = u_xlat59;
    let x_1846 : f32 = u_xlat60;
    u_xlat59 = (x_1845 * x_1846);
    let x_1848 : i32 = u_xlati58;
    let x_1850 : vec4<f32> = x_1797.x_AdditionalLightsSpotDir[x_1848];
    let x_1852 : vec4<f32> = u_xlat6;
    u_xlat60 = dot(vec3<f32>(x_1850.x, x_1850.y, x_1850.z), vec3<f32>(x_1852.x, x_1852.y, x_1852.z));
    let x_1855 : f32 = u_xlat60;
    let x_1856 : i32 = u_xlati58;
    let x_1858 : f32 = x_1797.x_AdditionalLightsAttenuation[x_1856].z;
    let x_1860 : i32 = u_xlati58;
    let x_1862 : f32 = x_1797.x_AdditionalLightsAttenuation[x_1860].w;
    u_xlat60 = ((x_1855 * x_1858) + x_1862);
    let x_1864 : f32 = u_xlat60;
    u_xlat60 = clamp(x_1864, 0.0f, 1.0f);
    let x_1866 : f32 = u_xlat60;
    let x_1867 : f32 = u_xlat60;
    u_xlat60 = (x_1866 * x_1867);
    let x_1869 : f32 = u_xlat59;
    let x_1870 : f32 = u_xlat60;
    u_xlat59 = (x_1869 * x_1870);
    let x_1872 : f32 = u_xlat59;
    let x_1874 : i32 = u_xlati58;
    let x_1876 : vec4<f32> = x_1797.x_AdditionalLightsColor[x_1874];
    let x_1878 : vec3<f32> = (vec3<f32>(x_1872, x_1872, x_1872) * vec3<f32>(x_1876.x, x_1876.y, x_1876.z));
    let x_1879 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1878.x, x_1878.y, x_1878.z, x_1879.w);
    let x_1881 : vec3<f32> = u_xlat2;
    let x_1882 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(x_1881, vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
    let x_1885 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1885, 0.0f, 1.0f);
    let x_1887 : f32 = u_xlat58;
    let x_1889 : vec4<f32> = u_xlat7;
    let x_1891 : vec3<f32> = (vec3<f32>(x_1887, x_1887, x_1887) * vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
    let x_1892 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1891.x, x_1891.y, x_1891.z, x_1892.w);
    let x_1894 : vec4<f32> = u_xlat6;
    let x_1896 : vec4<f32> = u_xlat1;
    let x_1899 : vec4<f32> = u_xlat5;
    let x_1901 : vec3<f32> = ((vec3<f32>(x_1894.x, x_1894.y, x_1894.z) * vec3<f32>(x_1896.x, x_1896.y, x_1896.z)) + vec3<f32>(x_1899.x, x_1899.y, x_1899.z));
    let x_1902 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1901.x, x_1901.y, x_1901.z, x_1902.w);

    continuing {
      let x_1904 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1904 + bitcast<u32>(1i));
    }
  }
  let x_1906 : vec4<f32> = u_xlat4;
  let x_1908 : vec4<f32> = u_xlat1;
  let x_1911 : vec4<f32> = u_xlat3;
  let x_1913 : vec3<f32> = ((vec3<f32>(x_1906.x, x_1906.y, x_1906.z) * vec3<f32>(x_1908.x, x_1908.y, x_1908.z)) + vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
  let x_1914 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);
  let x_1918 : vec4<f32> = u_xlat5;
  let x_1920 : vec4<f32> = u_xlat1;
  let x_1922 : vec3<f32> = (vec3<f32>(x_1918.x, x_1918.y, x_1918.z) + vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
  let x_1923 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
  let x_1925 : bool = u_xlatb38;
  let x_1926 : f32 = u_xlat19;
  SV_Target0.w = select(1.0f, x_1926, x_1925);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

