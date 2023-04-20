diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_MainTex_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Shininess : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr_4,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(1) @binding(3) var<uniform> x_51 : UnityPerMaterial;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_162 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu0 : u32;

var<private> u_xlati0 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb66 : bool;

var<private> u_xlat49 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat51 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat67 : f32;

var<private> u_xlat68 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat29 : vec2<f32>;

var<private> u_xlat57 : vec2<f32>;

var<private> u_xlat52 : vec2<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlatb67 : bool;

@group(1) @binding(2) var<uniform> x_1700 : UnityPerDraw;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1812 : AdditionalLights;

var<private> u_xlat69 : f32;

var<private> u_xlat70 : f32;

var<private> u_xlati70 : i32;

var<private> u_xlatb71 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat72 : f32;

var<private> u_xlat71 : f32;

var<private> u_xlatb70 : bool;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat54 : vec2<f32>;

var<private> u_xlat73 : f32;

var<private> u_xlat31 : vec3<f32>;

var<private> u_xlat32 : vec2<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat55 : vec2<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlatb72 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu67 : u32;

var<private> u_xlatb68 : bool;

fn main_1() {
  var x_58 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
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
  var x_1653 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1949 : f32;
  var x_1959 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
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
    let x_62 : f32 = u_xlat1.w;
    x_58 = x_62;
  } else {
    x_58 = 0.0f;
  }
  let x_65 : f32 = x_58;
  u_xlat0.x = x_65;
  let x_69 : f32 = u_xlat0.w;
  let x_72 : f32 = vs_TEXCOORD7.w;
  let x_75 : f32 = x_51.x_Cutoff;
  u_xlat22 = ((x_69 * x_72) + -(x_75));
  let x_80 : f32 = u_xlat1.w;
  u_xlat44 = dpdxCoarse(x_80);
  let x_84 : f32 = u_xlat1.w;
  u_xlat66 = dpdyCoarse(x_84);
  let x_86 : f32 = u_xlat66;
  let x_88 : f32 = u_xlat44;
  u_xlat44 = (abs(x_86) + abs(x_88));
  let x_91 : f32 = u_xlat44;
  u_xlat44 = max(x_91, 0.00009999999747378752f);
  let x_94 : f32 = u_xlat22;
  let x_95 : f32 = u_xlat44;
  u_xlat22 = (x_94 / x_95);
  let x_97 : f32 = u_xlat22;
  u_xlat22 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat22;
  u_xlat22 = clamp(x_100, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb44;
  if (x_108) {
    let x_112 : f32 = u_xlat22;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat0.x = (x_119 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat0.x;
  u_xlatb0 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb0;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD3;
  let x_137 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_136, x_137);
  let x_141 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_141);
  let x_146 : vec4<f32> = u_xlat0;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_146.x, x_146.x, x_146.x) * x_148);
  let x_152 : vec4<f32> = vs_TEXCOORD2;
  let x_165 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres0;
  let x_168 : vec3<f32> = (vec3<f32>(x_152.x, x_152.y, x_152.z) + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec4<f32> = vs_TEXCOORD2;
  let x_176 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres1;
  let x_179 : vec3<f32> = (vec3<f32>(x_172.x, x_172.y, x_172.z) + -(vec3<f32>(x_176.x, x_176.y, x_176.z)));
  let x_180 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = vs_TEXCOORD2;
  let x_187 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres2;
  let x_190 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + -(vec3<f32>(x_187.x, x_187.y, x_187.z)));
  let x_191 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
  let x_194 : vec4<f32> = vs_TEXCOORD2;
  let x_197 : vec4<f32> = x_162.x_CascadeShadowSplitSpheres3;
  let x_200 : vec3<f32> = (vec3<f32>(x_194.x, x_194.y, x_194.z) + -(vec3<f32>(x_197.x, x_197.y, x_197.z)));
  let x_201 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_203.x, x_203.y, x_203.z), vec3<f32>(x_205.x, x_205.y, x_205.z));
  let x_209 : vec4<f32> = u_xlat4;
  let x_211 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_209.x, x_209.y, x_209.z), vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_216 : vec4<f32> = u_xlat5;
  let x_218 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_216.x, x_216.y, x_216.z), vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_223 : vec4<f32> = u_xlat6;
  let x_225 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_223.x, x_223.y, x_223.z), vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_232 : vec4<f32> = u_xlat3;
  let x_235 : vec4<f32> = x_162.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_232 < x_235);
  let x_238 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_242);
  let x_246 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_246);
  let x_250 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_250);
  let x_254 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_254);
  let x_260 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_260);
  let x_264 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_264);
  let x_267 : vec4<f32> = u_xlat3;
  let x_269 : vec4<f32> = u_xlat4;
  let x_271 : vec3<f32> = (vec3<f32>(x_267.x, x_267.y, x_267.z) + vec3<f32>(x_269.y, x_269.z, x_269.w));
  let x_272 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
  let x_274 : vec4<f32> = u_xlat3;
  let x_277 : vec3<f32> = max(vec3<f32>(x_274.x, x_274.y, x_274.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_278 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_278.x, x_277.x, x_277.y, x_277.z);
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_280, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_288 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_288) + 4.0f);
  let x_295 : f32 = u_xlat0.x;
  u_xlatu0 = u32(x_295);
  let x_299 : u32 = u_xlatu0;
  u_xlati0 = (bitcast<i32>(x_299) << bitcast<u32>(2i));
  let x_302 : vec4<f32> = vs_TEXCOORD2;
  let x_304 : i32 = u_xlati0;
  let x_307 : i32 = u_xlati0;
  let x_311 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_304 + 1i) / 4i)][((x_307 + 1i) % 4i)];
  let x_313 : vec3<f32> = (vec3<f32>(x_302.y, x_302.y, x_302.y) * vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_316 : i32 = u_xlati0;
  let x_318 : i32 = u_xlati0;
  let x_321 : vec4<f32> = x_162.x_MainLightWorldToShadow[(x_316 / 4i)][(x_318 % 4i)];
  let x_323 : vec4<f32> = vs_TEXCOORD2;
  let x_326 : vec4<f32> = u_xlat3;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.x, x_323.x)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : i32 = u_xlati0;
  let x_334 : i32 = u_xlati0;
  let x_338 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_331 + 2i) / 4i)][((x_334 + 2i) % 4i)];
  let x_340 : vec4<f32> = vs_TEXCOORD2;
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : vec3<f32> = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * vec3<f32>(x_340.z, x_340.z, x_340.z)) + vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_345.x, x_345.y, x_345.z, x_346.w);
  let x_348 : vec4<f32> = u_xlat3;
  let x_350 : i32 = u_xlati0;
  let x_353 : i32 = u_xlati0;
  let x_357 : vec4<f32> = x_162.x_MainLightWorldToShadow[((x_350 + 3i) / 4i)][((x_353 + 3i) % 4i)];
  let x_359 : vec3<f32> = (vec3<f32>(x_348.x, x_348.y, x_348.z) + vec3<f32>(x_357.x, x_357.y, x_357.z));
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_368 : vec2<f32> = vs_TEXCOORD1;
  let x_370 : f32 = x_27.x_GlobalMipBias.x;
  let x_371 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_368, x_370);
  u_xlat4 = x_371;
  let x_376 : vec2<f32> = vs_TEXCOORD1;
  let x_378 : f32 = x_27.x_GlobalMipBias.x;
  let x_379 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_376, x_378);
  let x_380 : vec3<f32> = vec3<f32>(x_379.x, x_379.y, x_379.z);
  let x_381 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_383 : vec4<f32> = u_xlat4;
  let x_387 : vec3<f32> = (vec3<f32>(x_383.x, x_383.y, x_383.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec3<f32> = u_xlat2;
  let x_391 : vec4<f32> = u_xlat4;
  u_xlat0.x = dot(x_390, vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_396 : f32 = u_xlat0.x;
  u_xlat0.x = (x_396 + 0.5f);
  let x_399 : vec4<f32> = u_xlat0;
  let x_401 : vec4<f32> = u_xlat5;
  let x_403 : vec3<f32> = (vec3<f32>(x_399.x, x_399.x, x_399.x) * vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_407 : f32 = u_xlat4.w;
  u_xlat0.x = max(x_407, 0.00009999999747378752f);
  let x_410 : vec4<f32> = u_xlat4;
  let x_412 : vec4<f32> = u_xlat0;
  let x_414 : vec3<f32> = (vec3<f32>(x_410.x, x_410.y, x_410.z) / vec3<f32>(x_412.x, x_412.x, x_412.x));
  let x_415 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_419 : f32 = x_162.x_MainLightShadowParams.y;
  u_xlatb0 = (0.0f < x_419);
  let x_421 : bool = u_xlatb0;
  if (x_421) {
    let x_425 : f32 = x_162.x_MainLightShadowParams.y;
    u_xlatb0 = (x_425 == 1.0f);
    let x_427 : bool = u_xlatb0;
    if (x_427) {
      let x_430 : vec4<f32> = u_xlat3;
      let x_434 : vec4<f32> = x_162.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_430.x, x_430.y, x_430.x, x_430.y) + x_434);
      let x_438 : vec4<f32> = u_xlat5;
      let x_439 : vec2<f32> = vec2<f32>(x_438.x, x_438.y);
      let x_441 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_439.x, x_439.y, x_441);
      let x_453 : vec3<f32> = txVec0;
      let x_455 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_453.xy, x_453.z);
      u_xlat6.x = x_455;
      let x_458 : vec4<f32> = u_xlat5;
      let x_459 : vec2<f32> = vec2<f32>(x_458.z, x_458.w);
      let x_461 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_459.x, x_459.y, x_461);
      let x_468 : vec3<f32> = txVec1;
      let x_470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_468.xy, x_468.z);
      u_xlat6.y = x_470;
      let x_472 : vec4<f32> = u_xlat3;
      let x_476 : vec4<f32> = x_162.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_472.x, x_472.y, x_472.x, x_472.y) + x_476);
      let x_479 : vec4<f32> = u_xlat5;
      let x_480 : vec2<f32> = vec2<f32>(x_479.x, x_479.y);
      let x_482 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_480.x, x_480.y, x_482);
      let x_489 : vec3<f32> = txVec2;
      let x_491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_489.xy, x_489.z);
      u_xlat6.z = x_491;
      let x_494 : vec4<f32> = u_xlat5;
      let x_495 : vec2<f32> = vec2<f32>(x_494.z, x_494.w);
      let x_497 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_495.x, x_495.y, x_497);
      let x_504 : vec3<f32> = txVec3;
      let x_506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_504.xy, x_504.z);
      u_xlat6.w = x_506;
      let x_508 : vec4<f32> = u_xlat6;
      u_xlat0.x = dot(x_508, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_516 : f32 = x_162.x_MainLightShadowParams.y;
      u_xlatb66 = (x_516 == 2.0f);
      let x_518 : bool = u_xlatb66;
      if (x_518) {
        let x_521 : vec4<f32> = u_xlat3;
        let x_525 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_529 : vec2<f32> = ((vec2<f32>(x_521.x, x_521.y) * vec2<f32>(x_525.z, x_525.w)) + vec2<f32>(0.5f, 0.5f));
        let x_530 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat5;
        let x_534 : vec2<f32> = floor(vec2<f32>(x_532.x, x_532.y));
        let x_535 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
        let x_539 : vec4<f32> = u_xlat3;
        let x_542 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_545 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_539.x, x_539.y) * vec2<f32>(x_542.z, x_542.w)) + -(vec2<f32>(x_545.x, x_545.y)));
        let x_549 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_549.x, x_549.x, x_549.y, x_549.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_554 : vec4<f32> = u_xlat6;
        let x_556 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_554.x, x_554.x, x_554.z, x_554.z) * vec4<f32>(x_556.x, x_556.x, x_556.z, x_556.z));
        let x_559 : vec4<f32> = u_xlat7;
        let x_563 : vec2<f32> = (vec2<f32>(x_559.y, x_559.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_564 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_563.x, x_564.y, x_563.y, x_564.w);
        let x_566 : vec4<f32> = u_xlat7;
        let x_569 : vec2<f32> = u_xlat49;
        let x_571 : vec2<f32> = ((vec2<f32>(x_566.x, x_566.z) * vec2<f32>(0.5f, 0.5f)) + -(x_569));
        let x_572 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
        let x_575 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_575) + vec2<f32>(1.0f, 1.0f));
        let x_580 : vec2<f32> = u_xlat49;
        let x_582 : vec2<f32> = min(x_580, vec2<f32>(0.0f, 0.0f));
        let x_583 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
        let x_585 : vec4<f32> = u_xlat8;
        let x_588 : vec4<f32> = u_xlat8;
        let x_591 : vec2<f32> = u_xlat51;
        let x_592 : vec2<f32> = ((-(vec2<f32>(x_585.x, x_585.y)) * vec2<f32>(x_588.x, x_588.y)) + x_591);
        let x_593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_595 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_595, vec2<f32>(0.0f, 0.0f));
        let x_597 : vec2<f32> = u_xlat49;
        let x_599 : vec2<f32> = u_xlat49;
        let x_601 : vec4<f32> = u_xlat6;
        u_xlat49 = ((-(x_597) * x_599) + vec2<f32>(x_601.y, x_601.w));
        let x_604 : vec4<f32> = u_xlat8;
        let x_606 : vec2<f32> = (vec2<f32>(x_604.x, x_604.y) + vec2<f32>(1.0f, 1.0f));
        let x_607 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
        let x_609 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_609 + vec2<f32>(1.0f, 1.0f));
        let x_612 : vec4<f32> = u_xlat7;
        let x_616 : vec2<f32> = (vec2<f32>(x_612.x, x_612.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_617 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_619 : vec2<f32> = u_xlat51;
        let x_620 : vec2<f32> = (x_619 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_621 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
        let x_623 : vec4<f32> = u_xlat8;
        let x_625 : vec2<f32> = (vec2<f32>(x_623.x, x_623.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_626 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
        let x_629 : vec2<f32> = u_xlat49;
        let x_630 : vec2<f32> = (x_629 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_631 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
        let x_633 : vec4<f32> = u_xlat6;
        u_xlat49 = (vec2<f32>(x_633.y, x_633.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_637 : f32 = u_xlat8.x;
        u_xlat9.z = x_637;
        let x_640 : f32 = u_xlat49.x;
        u_xlat9.w = x_640;
        let x_643 : f32 = u_xlat10.x;
        u_xlat7.z = x_643;
        let x_646 : f32 = u_xlat6.x;
        u_xlat7.w = x_646;
        let x_649 : vec4<f32> = u_xlat7;
        let x_651 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_649.z, x_649.w, x_649.x, x_649.z) + vec4<f32>(x_651.z, x_651.w, x_651.x, x_651.z));
        let x_655 : f32 = u_xlat9.y;
        u_xlat8.z = x_655;
        let x_658 : f32 = u_xlat49.y;
        u_xlat8.w = x_658;
        let x_661 : f32 = u_xlat7.y;
        u_xlat10.z = x_661;
        let x_664 : f32 = u_xlat6.z;
        u_xlat10.w = x_664;
        let x_666 : vec4<f32> = u_xlat8;
        let x_668 : vec4<f32> = u_xlat10;
        let x_670 : vec3<f32> = (vec3<f32>(x_666.z, x_666.y, x_666.w) + vec3<f32>(x_668.z, x_668.y, x_668.w));
        let x_671 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
        let x_673 : vec4<f32> = u_xlat7;
        let x_675 : vec4<f32> = u_xlat11;
        let x_677 : vec3<f32> = (vec3<f32>(x_673.x, x_673.z, x_673.w) / vec3<f32>(x_675.z, x_675.w, x_675.y));
        let x_678 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
        let x_680 : vec4<f32> = u_xlat7;
        let x_685 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_686 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
        let x_688 : vec4<f32> = u_xlat10;
        let x_690 : vec4<f32> = u_xlat6;
        let x_692 : vec3<f32> = (vec3<f32>(x_688.z, x_688.y, x_688.w) / vec3<f32>(x_690.x, x_690.y, x_690.z));
        let x_693 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
        let x_695 : vec4<f32> = u_xlat8;
        let x_697 : vec3<f32> = (vec3<f32>(x_695.x, x_695.y, x_695.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_698 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
        let x_700 : vec4<f32> = u_xlat7;
        let x_703 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_705 : vec3<f32> = (vec3<f32>(x_700.y, x_700.x, x_700.z) * vec3<f32>(x_703.x, x_703.x, x_703.x));
        let x_706 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
        let x_708 : vec4<f32> = u_xlat8;
        let x_711 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_713 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(x_711.y, x_711.y, x_711.y));
        let x_714 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
        let x_717 : f32 = u_xlat8.x;
        u_xlat7.w = x_717;
        let x_719 : vec4<f32> = u_xlat5;
        let x_722 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_725 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_719.x, x_719.y, x_719.x, x_719.y) * vec4<f32>(x_722.x, x_722.y, x_722.x, x_722.y)) + vec4<f32>(x_725.y, x_725.w, x_725.x, x_725.w));
        let x_728 : vec4<f32> = u_xlat5;
        let x_731 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_734 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_728.x, x_728.y) * vec2<f32>(x_731.x, x_731.y)) + vec2<f32>(x_734.z, x_734.w));
        let x_738 : f32 = u_xlat7.y;
        u_xlat8.w = x_738;
        let x_740 : vec4<f32> = u_xlat8;
        let x_741 : vec2<f32> = vec2<f32>(x_740.y, x_740.z);
        let x_742 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_742.x, x_741.x, x_742.z, x_741.y);
        let x_744 : vec4<f32> = u_xlat5;
        let x_747 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_750 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_744.x, x_744.y, x_744.x, x_744.y) * vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y)) + vec4<f32>(x_750.x, x_750.y, x_750.z, x_750.y));
        let x_753 : vec4<f32> = u_xlat5;
        let x_756 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_759 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_753.x, x_753.y, x_753.x, x_753.y) * vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y)) + vec4<f32>(x_759.w, x_759.y, x_759.w, x_759.z));
        let x_762 : vec4<f32> = u_xlat5;
        let x_765 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_768 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_762.x, x_762.y, x_762.x, x_762.y) * vec4<f32>(x_765.x, x_765.y, x_765.x, x_765.y)) + vec4<f32>(x_768.x, x_768.w, x_768.z, x_768.w));
        let x_772 : vec4<f32> = u_xlat6;
        let x_774 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_772.x, x_772.x, x_772.x, x_772.y) * vec4<f32>(x_774.z, x_774.w, x_774.y, x_774.z));
        let x_778 : vec4<f32> = u_xlat6;
        let x_780 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_778.y, x_778.y, x_778.z, x_778.z) * x_780);
        let x_783 : f32 = u_xlat6.z;
        let x_785 : f32 = u_xlat11.y;
        u_xlat66 = (x_783 * x_785);
        let x_788 : vec4<f32> = u_xlat9;
        let x_789 : vec2<f32> = vec2<f32>(x_788.x, x_788.y);
        let x_791 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_799 : vec3<f32> = txVec4;
        let x_801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_799.xy, x_799.z);
        u_xlat67 = x_801;
        let x_803 : vec4<f32> = u_xlat9;
        let x_804 : vec2<f32> = vec2<f32>(x_803.z, x_803.w);
        let x_806 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_804.x, x_804.y, x_806);
        let x_814 : vec3<f32> = txVec5;
        let x_816 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_814.xy, x_814.z);
        u_xlat68 = x_816;
        let x_817 : f32 = u_xlat68;
        let x_819 : f32 = u_xlat12.y;
        u_xlat68 = (x_817 * x_819);
        let x_822 : f32 = u_xlat12.x;
        let x_823 : f32 = u_xlat67;
        let x_825 : f32 = u_xlat68;
        u_xlat67 = ((x_822 * x_823) + x_825);
        let x_828 : vec2<f32> = u_xlat49;
        let x_830 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_828.x, x_828.y, x_830);
        let x_837 : vec3<f32> = txVec6;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_837.xy, x_837.z);
        u_xlat68 = x_839;
        let x_841 : f32 = u_xlat12.z;
        let x_842 : f32 = u_xlat68;
        let x_844 : f32 = u_xlat67;
        u_xlat67 = ((x_841 * x_842) + x_844);
        let x_847 : vec4<f32> = u_xlat8;
        let x_848 : vec2<f32> = vec2<f32>(x_847.x, x_847.y);
        let x_850 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_848.x, x_848.y, x_850);
        let x_857 : vec3<f32> = txVec7;
        let x_859 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_857.xy, x_857.z);
        u_xlat68 = x_859;
        let x_861 : f32 = u_xlat12.w;
        let x_862 : f32 = u_xlat68;
        let x_864 : f32 = u_xlat67;
        u_xlat67 = ((x_861 * x_862) + x_864);
        let x_867 : vec4<f32> = u_xlat10;
        let x_868 : vec2<f32> = vec2<f32>(x_867.x, x_867.y);
        let x_870 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_868.x, x_868.y, x_870);
        let x_877 : vec3<f32> = txVec8;
        let x_879 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_877.xy, x_877.z);
        u_xlat68 = x_879;
        let x_881 : f32 = u_xlat13.x;
        let x_882 : f32 = u_xlat68;
        let x_884 : f32 = u_xlat67;
        u_xlat67 = ((x_881 * x_882) + x_884);
        let x_887 : vec4<f32> = u_xlat10;
        let x_888 : vec2<f32> = vec2<f32>(x_887.z, x_887.w);
        let x_890 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec9;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_897.xy, x_897.z);
        u_xlat68 = x_899;
        let x_901 : f32 = u_xlat13.y;
        let x_902 : f32 = u_xlat68;
        let x_904 : f32 = u_xlat67;
        u_xlat67 = ((x_901 * x_902) + x_904);
        let x_907 : vec4<f32> = u_xlat8;
        let x_908 : vec2<f32> = vec2<f32>(x_907.z, x_907.w);
        let x_910 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_908.x, x_908.y, x_910);
        let x_917 : vec3<f32> = txVec10;
        let x_919 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_917.xy, x_917.z);
        u_xlat68 = x_919;
        let x_921 : f32 = u_xlat13.z;
        let x_922 : f32 = u_xlat68;
        let x_924 : f32 = u_xlat67;
        u_xlat67 = ((x_921 * x_922) + x_924);
        let x_927 : vec4<f32> = u_xlat7;
        let x_928 : vec2<f32> = vec2<f32>(x_927.x, x_927.y);
        let x_930 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_928.x, x_928.y, x_930);
        let x_937 : vec3<f32> = txVec11;
        let x_939 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_937.xy, x_937.z);
        u_xlat68 = x_939;
        let x_941 : f32 = u_xlat13.w;
        let x_942 : f32 = u_xlat68;
        let x_944 : f32 = u_xlat67;
        u_xlat67 = ((x_941 * x_942) + x_944);
        let x_947 : vec4<f32> = u_xlat7;
        let x_948 : vec2<f32> = vec2<f32>(x_947.z, x_947.w);
        let x_950 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_948.x, x_948.y, x_950);
        let x_957 : vec3<f32> = txVec12;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_957.xy, x_957.z);
        u_xlat68 = x_959;
        let x_960 : f32 = u_xlat66;
        let x_961 : f32 = u_xlat68;
        let x_963 : f32 = u_xlat67;
        u_xlat0.x = ((x_960 * x_961) + x_963);
      } else {
        let x_967 : vec4<f32> = u_xlat3;
        let x_970 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_973 : vec2<f32> = ((vec2<f32>(x_967.x, x_967.y) * vec2<f32>(x_970.z, x_970.w)) + vec2<f32>(0.5f, 0.5f));
        let x_974 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_973.x, x_973.y, x_974.z, x_974.w);
        let x_976 : vec4<f32> = u_xlat5;
        let x_978 : vec2<f32> = floor(vec2<f32>(x_976.x, x_976.y));
        let x_979 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_978.x, x_978.y, x_979.z, x_979.w);
        let x_981 : vec4<f32> = u_xlat3;
        let x_984 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_987 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_981.x, x_981.y) * vec2<f32>(x_984.z, x_984.w)) + -(vec2<f32>(x_987.x, x_987.y)));
        let x_991 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_991.x, x_991.x, x_991.y, x_991.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_994 : vec4<f32> = u_xlat6;
        let x_996 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_994.x, x_994.x, x_994.z, x_994.z) * vec4<f32>(x_996.x, x_996.x, x_996.z, x_996.z));
        let x_999 : vec4<f32> = u_xlat7;
        let x_1003 : vec2<f32> = (vec2<f32>(x_999.y, x_999.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1004 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1004.x, x_1003.x, x_1004.z, x_1003.y);
        let x_1006 : vec4<f32> = u_xlat7;
        let x_1009 : vec2<f32> = u_xlat49;
        let x_1011 : vec2<f32> = ((vec2<f32>(x_1006.x, x_1006.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1009));
        let x_1012 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1011.x, x_1012.y, x_1011.y, x_1012.w);
        let x_1014 : vec2<f32> = u_xlat49;
        let x_1016 : vec2<f32> = (-(x_1014) + vec2<f32>(1.0f, 1.0f));
        let x_1017 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
        let x_1019 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1019, vec2<f32>(0.0f, 0.0f));
        let x_1021 : vec2<f32> = u_xlat51;
        let x_1023 : vec2<f32> = u_xlat51;
        let x_1025 : vec4<f32> = u_xlat7;
        let x_1027 : vec2<f32> = ((-(x_1021) * x_1023) + vec2<f32>(x_1025.x, x_1025.y));
        let x_1028 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1027.x, x_1027.y, x_1028.z, x_1028.w);
        let x_1030 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1030, vec2<f32>(0.0f, 0.0f));
        let x_1033 : vec2<f32> = u_xlat51;
        let x_1035 : vec2<f32> = u_xlat51;
        let x_1037 : vec4<f32> = u_xlat6;
        let x_1039 : vec2<f32> = ((-(x_1033) * x_1035) + vec2<f32>(x_1037.y, x_1037.w));
        let x_1040 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1039.x, x_1040.y, x_1039.y);
        let x_1042 : vec4<f32> = u_xlat7;
        let x_1045 : vec2<f32> = (vec2<f32>(x_1042.x, x_1042.y) + vec2<f32>(2.0f, 2.0f));
        let x_1046 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
        let x_1048 : vec3<f32> = u_xlat28;
        let x_1050 : vec2<f32> = (vec2<f32>(x_1048.x, x_1048.z) + vec2<f32>(2.0f, 2.0f));
        let x_1051 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1051.x, x_1050.x, x_1051.z, x_1050.y);
        let x_1054 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1054 * 0.08163200318813323975f);
        let x_1058 : vec4<f32> = u_xlat6;
        let x_1061 : vec3<f32> = (vec3<f32>(x_1058.z, x_1058.x, x_1058.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1062 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
        let x_1064 : vec4<f32> = u_xlat7;
        let x_1067 : vec2<f32> = (vec2<f32>(x_1064.x, x_1064.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1068 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1067.x, x_1067.y, x_1068.z, x_1068.w);
        let x_1071 : f32 = u_xlat10.y;
        u_xlat9.x = x_1071;
        let x_1073 : vec2<f32> = u_xlat49;
        let x_1080 : vec2<f32> = ((vec2<f32>(x_1073.x, x_1073.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1081 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1081.x, x_1080.x, x_1081.z, x_1080.y);
        let x_1083 : vec2<f32> = u_xlat49;
        let x_1087 : vec2<f32> = ((vec2<f32>(x_1083.x, x_1083.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1088 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1087.x, x_1088.y, x_1087.y, x_1088.w);
        let x_1091 : f32 = u_xlat6.x;
        u_xlat7.y = x_1091;
        let x_1094 : f32 = u_xlat8.y;
        u_xlat7.w = x_1094;
        let x_1096 : vec4<f32> = u_xlat7;
        let x_1097 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1096 + x_1097);
        let x_1099 : vec2<f32> = u_xlat49;
        let x_1102 : vec2<f32> = ((vec2<f32>(x_1099.y, x_1099.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1103 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1103.x, x_1102.x, x_1103.z, x_1102.y);
        let x_1105 : vec2<f32> = u_xlat49;
        let x_1108 : vec2<f32> = ((vec2<f32>(x_1105.y, x_1105.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1109 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1108.x, x_1109.y, x_1108.y, x_1109.w);
        let x_1112 : f32 = u_xlat6.y;
        u_xlat8.y = x_1112;
        let x_1114 : vec4<f32> = u_xlat8;
        let x_1115 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1114 + x_1115);
        let x_1117 : vec4<f32> = u_xlat7;
        let x_1118 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1117 / x_1118);
        let x_1120 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1120 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1126 : vec4<f32> = u_xlat8;
        let x_1127 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1126 / x_1127);
        let x_1129 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1129 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1131 : vec4<f32> = u_xlat7;
        let x_1134 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1131.w, x_1131.x, x_1131.y, x_1131.z) * vec4<f32>(x_1134.x, x_1134.x, x_1134.x, x_1134.x));
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1140 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1137.x, x_1137.w, x_1137.y, x_1137.z) * vec4<f32>(x_1140.y, x_1140.y, x_1140.y, x_1140.y));
        let x_1143 : vec4<f32> = u_xlat7;
        let x_1144 : vec3<f32> = vec3<f32>(x_1143.y, x_1143.z, x_1143.w);
        let x_1145 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1144.x, x_1145.y, x_1144.y, x_1144.z);
        let x_1148 : f32 = u_xlat8.x;
        u_xlat10.y = x_1148;
        let x_1150 : vec4<f32> = u_xlat5;
        let x_1153 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1156 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y) * vec4<f32>(x_1153.x, x_1153.y, x_1153.x, x_1153.y)) + vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1156.y));
        let x_1159 : vec4<f32> = u_xlat5;
        let x_1162 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1165 : vec4<f32> = u_xlat10;
        u_xlat49 = ((vec2<f32>(x_1159.x, x_1159.y) * vec2<f32>(x_1162.x, x_1162.y)) + vec2<f32>(x_1165.w, x_1165.y));
        let x_1169 : f32 = u_xlat10.y;
        u_xlat7.y = x_1169;
        let x_1172 : f32 = u_xlat8.z;
        u_xlat10.y = x_1172;
        let x_1174 : vec4<f32> = u_xlat5;
        let x_1177 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y) * vec4<f32>(x_1177.x, x_1177.y, x_1177.x, x_1177.y)) + vec4<f32>(x_1180.x, x_1180.y, x_1180.z, x_1180.y));
        let x_1183 : vec4<f32> = u_xlat5;
        let x_1186 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat10;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(x_1186.x, x_1186.y)) + vec2<f32>(x_1189.w, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1195 : f32 = u_xlat10.y;
        u_xlat7.z = x_1195;
        let x_1198 : vec4<f32> = u_xlat5;
        let x_1201 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1204 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y) * vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.y)) + vec4<f32>(x_1204.x, x_1204.y, x_1204.x, x_1204.z));
        let x_1208 : f32 = u_xlat8.w;
        u_xlat10.y = x_1208;
        let x_1211 : vec4<f32> = u_xlat5;
        let x_1214 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y) * vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y)) + vec4<f32>(x_1217.x, x_1217.y, x_1217.z, x_1217.y));
        let x_1221 : vec4<f32> = u_xlat5;
        let x_1224 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1227 : vec4<f32> = u_xlat10;
        u_xlat29 = ((vec2<f32>(x_1221.x, x_1221.y) * vec2<f32>(x_1224.x, x_1224.y)) + vec2<f32>(x_1227.w, x_1227.y));
        let x_1231 : f32 = u_xlat10.y;
        u_xlat7.w = x_1231;
        let x_1234 : vec4<f32> = u_xlat5;
        let x_1237 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1240 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1234.x, x_1234.y) * vec2<f32>(x_1237.x, x_1237.y)) + vec2<f32>(x_1240.x, x_1240.w));
        let x_1243 : vec4<f32> = u_xlat10;
        let x_1244 : vec3<f32> = vec3<f32>(x_1243.x, x_1243.z, x_1243.w);
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1244.x, x_1245.y, x_1244.y, x_1244.z);
        let x_1247 : vec4<f32> = u_xlat5;
        let x_1250 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1253 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y) * vec4<f32>(x_1250.x, x_1250.y, x_1250.x, x_1250.y)) + vec4<f32>(x_1253.x, x_1253.y, x_1253.z, x_1253.y));
        let x_1257 : vec4<f32> = u_xlat5;
        let x_1260 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(x_1260.x, x_1260.y)) + vec2<f32>(x_1263.w, x_1263.y));
        let x_1267 : f32 = u_xlat7.x;
        u_xlat8.x = x_1267;
        let x_1269 : vec4<f32> = u_xlat5;
        let x_1272 : vec4<f32> = x_162.x_MainLightShadowmapSize;
        let x_1275 : vec4<f32> = u_xlat8;
        let x_1277 : vec2<f32> = ((vec2<f32>(x_1269.x, x_1269.y) * vec2<f32>(x_1272.x, x_1272.y)) + vec2<f32>(x_1275.x, x_1275.y));
        let x_1278 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1277.x, x_1277.y, x_1278.z, x_1278.w);
        let x_1281 : vec4<f32> = u_xlat6;
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1281.x, x_1281.x, x_1281.x, x_1281.x) * x_1283);
        let x_1286 : vec4<f32> = u_xlat6;
        let x_1288 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1286.y, x_1286.y, x_1286.y, x_1286.y) * x_1288);
        let x_1291 : vec4<f32> = u_xlat6;
        let x_1293 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1291.z, x_1291.z, x_1291.z, x_1291.z) * x_1293);
        let x_1295 : vec4<f32> = u_xlat6;
        let x_1297 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1295.w, x_1295.w, x_1295.w, x_1295.w) * x_1297);
        let x_1300 : vec4<f32> = u_xlat11;
        let x_1301 : vec2<f32> = vec2<f32>(x_1300.x, x_1300.y);
        let x_1303 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1301.x, x_1301.y, x_1303);
        let x_1310 : vec3<f32> = txVec13;
        let x_1312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1310.xy, x_1310.z);
        u_xlat66 = x_1312;
        let x_1314 : vec4<f32> = u_xlat11;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.z, x_1314.w);
        let x_1317 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec14;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1324.xy, x_1324.z);
        u_xlat67 = x_1326;
        let x_1327 : f32 = u_xlat67;
        let x_1329 : f32 = u_xlat16.y;
        u_xlat67 = (x_1327 * x_1329);
        let x_1332 : f32 = u_xlat16.x;
        let x_1333 : f32 = u_xlat66;
        let x_1335 : f32 = u_xlat67;
        u_xlat66 = ((x_1332 * x_1333) + x_1335);
        let x_1338 : vec2<f32> = u_xlat49;
        let x_1340 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec15;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1347.xy, x_1347.z);
        u_xlat67 = x_1349;
        let x_1351 : f32 = u_xlat16.z;
        let x_1352 : f32 = u_xlat67;
        let x_1354 : f32 = u_xlat66;
        u_xlat66 = ((x_1351 * x_1352) + x_1354);
        let x_1357 : vec4<f32> = u_xlat14;
        let x_1358 : vec2<f32> = vec2<f32>(x_1357.x, x_1357.y);
        let x_1360 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1358.x, x_1358.y, x_1360);
        let x_1367 : vec3<f32> = txVec16;
        let x_1369 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1367.xy, x_1367.z);
        u_xlat67 = x_1369;
        let x_1371 : f32 = u_xlat16.w;
        let x_1372 : f32 = u_xlat67;
        let x_1374 : f32 = u_xlat66;
        u_xlat66 = ((x_1371 * x_1372) + x_1374);
        let x_1377 : vec4<f32> = u_xlat12;
        let x_1378 : vec2<f32> = vec2<f32>(x_1377.x, x_1377.y);
        let x_1380 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec17;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1387.xy, x_1387.z);
        u_xlat67 = x_1389;
        let x_1391 : f32 = u_xlat17.x;
        let x_1392 : f32 = u_xlat67;
        let x_1394 : f32 = u_xlat66;
        u_xlat66 = ((x_1391 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat12;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.z, x_1397.w);
        let x_1400 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec18;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1407.xy, x_1407.z);
        u_xlat67 = x_1409;
        let x_1411 : f32 = u_xlat17.y;
        let x_1412 : f32 = u_xlat67;
        let x_1414 : f32 = u_xlat66;
        u_xlat66 = ((x_1411 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat13;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec19;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1427.xy, x_1427.z);
        u_xlat67 = x_1429;
        let x_1431 : f32 = u_xlat17.z;
        let x_1432 : f32 = u_xlat67;
        let x_1434 : f32 = u_xlat66;
        u_xlat66 = ((x_1431 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat14;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.z, x_1437.w);
        let x_1440 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec20;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1447.xy, x_1447.z);
        u_xlat67 = x_1449;
        let x_1451 : f32 = u_xlat17.w;
        let x_1452 : f32 = u_xlat67;
        let x_1454 : f32 = u_xlat66;
        u_xlat66 = ((x_1451 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat15;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec21;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1467.xy, x_1467.z);
        u_xlat67 = x_1469;
        let x_1471 : f32 = u_xlat18.x;
        let x_1472 : f32 = u_xlat67;
        let x_1474 : f32 = u_xlat66;
        u_xlat66 = ((x_1471 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat15;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec22;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1487.xy, x_1487.z);
        u_xlat67 = x_1489;
        let x_1491 : f32 = u_xlat18.y;
        let x_1492 : f32 = u_xlat67;
        let x_1494 : f32 = u_xlat66;
        u_xlat66 = ((x_1491 * x_1492) + x_1494);
        let x_1497 : vec2<f32> = u_xlat29;
        let x_1499 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec23;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1506.xy, x_1506.z);
        u_xlat67 = x_1508;
        let x_1510 : f32 = u_xlat18.z;
        let x_1511 : f32 = u_xlat67;
        let x_1513 : f32 = u_xlat66;
        u_xlat66 = ((x_1510 * x_1511) + x_1513);
        let x_1516 : vec2<f32> = u_xlat57;
        let x_1518 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1516.x, x_1516.y, x_1518);
        let x_1525 : vec3<f32> = txVec24;
        let x_1527 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1525.xy, x_1525.z);
        u_xlat67 = x_1527;
        let x_1529 : f32 = u_xlat18.w;
        let x_1530 : f32 = u_xlat67;
        let x_1532 : f32 = u_xlat66;
        u_xlat66 = ((x_1529 * x_1530) + x_1532);
        let x_1535 : vec4<f32> = u_xlat10;
        let x_1536 : vec2<f32> = vec2<f32>(x_1535.x, x_1535.y);
        let x_1538 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1536.x, x_1536.y, x_1538);
        let x_1545 : vec3<f32> = txVec25;
        let x_1547 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1545.xy, x_1545.z);
        u_xlat67 = x_1547;
        let x_1549 : f32 = u_xlat6.x;
        let x_1550 : f32 = u_xlat67;
        let x_1552 : f32 = u_xlat66;
        u_xlat66 = ((x_1549 * x_1550) + x_1552);
        let x_1555 : vec4<f32> = u_xlat10;
        let x_1556 : vec2<f32> = vec2<f32>(x_1555.z, x_1555.w);
        let x_1558 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec26;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1565.xy, x_1565.z);
        u_xlat67 = x_1567;
        let x_1569 : f32 = u_xlat6.y;
        let x_1570 : f32 = u_xlat67;
        let x_1572 : f32 = u_xlat66;
        u_xlat66 = ((x_1569 * x_1570) + x_1572);
        let x_1575 : vec2<f32> = u_xlat52;
        let x_1577 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec27;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat67 = x_1586;
        let x_1588 : f32 = u_xlat6.z;
        let x_1589 : f32 = u_xlat67;
        let x_1591 : f32 = u_xlat66;
        u_xlat66 = ((x_1588 * x_1589) + x_1591);
        let x_1594 : vec4<f32> = u_xlat5;
        let x_1595 : vec2<f32> = vec2<f32>(x_1594.x, x_1594.y);
        let x_1597 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1595.x, x_1595.y, x_1597);
        let x_1604 : vec3<f32> = txVec28;
        let x_1606 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1604.xy, x_1604.z);
        u_xlat67 = x_1606;
        let x_1608 : f32 = u_xlat6.w;
        let x_1609 : f32 = u_xlat67;
        let x_1611 : f32 = u_xlat66;
        u_xlat0.x = ((x_1608 * x_1609) + x_1611);
      }
    }
  } else {
    let x_1616 : vec4<f32> = u_xlat3;
    let x_1617 : vec2<f32> = vec2<f32>(x_1616.x, x_1616.y);
    let x_1619 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
    let x_1626 : vec3<f32> = txVec29;
    let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1626.xy, x_1626.z);
    u_xlat0.x = x_1628;
  }
  let x_1631 : f32 = x_162.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1631) + 1.0f);
  let x_1635 : f32 = u_xlat0.x;
  let x_1637 : f32 = x_162.x_MainLightShadowParams.x;
  let x_1639 : f32 = u_xlat66;
  u_xlat0.x = ((x_1635 * x_1637) + x_1639);
  let x_1643 : f32 = u_xlat3.z;
  u_xlatb66 = (0.0f >= x_1643);
  let x_1647 : f32 = u_xlat3.z;
  u_xlatb67 = (x_1647 >= 1.0f);
  let x_1649 : bool = u_xlatb66;
  let x_1650 : bool = u_xlatb67;
  u_xlatb66 = (x_1649 | x_1650);
  let x_1652 : bool = u_xlatb66;
  if (x_1652) {
    x_1653 = 1.0f;
  } else {
    let x_1658 : f32 = u_xlat0.x;
    x_1653 = x_1658;
  }
  let x_1659 : f32 = x_1653;
  u_xlat0.x = x_1659;
  let x_1661 : vec4<f32> = vs_TEXCOORD2;
  let x_1665 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1667 : vec3<f32> = (vec3<f32>(x_1661.x, x_1661.y, x_1661.z) + -(x_1665));
  let x_1668 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1667.x, x_1667.y, x_1667.z, x_1668.w);
  let x_1670 : vec4<f32> = u_xlat3;
  let x_1672 : vec4<f32> = u_xlat3;
  u_xlat66 = dot(vec3<f32>(x_1670.x, x_1670.y, x_1670.z), vec3<f32>(x_1672.x, x_1672.y, x_1672.z));
  let x_1675 : f32 = u_xlat66;
  let x_1677 : f32 = x_162.x_MainLightShadowParams.z;
  let x_1680 : f32 = x_162.x_MainLightShadowParams.w;
  u_xlat67 = ((x_1675 * x_1677) + x_1680);
  let x_1682 : f32 = u_xlat67;
  u_xlat67 = clamp(x_1682, 0.0f, 1.0f);
  let x_1685 : f32 = u_xlat0.x;
  u_xlat68 = (-(x_1685) + 1.0f);
  let x_1688 : f32 = u_xlat67;
  let x_1689 : f32 = u_xlat68;
  let x_1692 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1688 * x_1689) + x_1692);
  let x_1696 : f32 = u_xlat0.x;
  let x_1702 : f32 = x_1700.unity_LightData.z;
  u_xlat0.x = (x_1696 * x_1702);
  let x_1705 : vec4<f32> = u_xlat0;
  let x_1708 : vec4<f32> = x_27.x_MainLightColor;
  let x_1710 : vec3<f32> = (vec3<f32>(x_1705.x, x_1705.x, x_1705.x) * vec3<f32>(x_1708.x, x_1708.y, x_1708.z));
  let x_1711 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1710.x, x_1710.y, x_1710.z, x_1711.w);
  let x_1713 : vec3<f32> = u_xlat2;
  let x_1715 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat0.x = dot(x_1713, vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
  let x_1720 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1720, 0.0f, 1.0f);
  let x_1723 : vec4<f32> = u_xlat0;
  let x_1725 : vec4<f32> = u_xlat3;
  let x_1727 : vec3<f32> = (vec3<f32>(x_1723.x, x_1723.x, x_1723.x) * vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
  let x_1728 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1728.w);
  let x_1730 : vec4<f32> = u_xlat1;
  let x_1732 : vec4<f32> = u_xlat3;
  let x_1734 : vec3<f32> = (vec3<f32>(x_1730.x, x_1730.y, x_1730.z) * vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
  let x_1735 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1734.x, x_1734.y, x_1734.z, x_1735.w);
  let x_1738 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1740 : f32 = x_1700.unity_LightData.y;
  u_xlat0.x = min(x_1738, x_1740);
  let x_1744 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_1744));
  let x_1747 : f32 = u_xlat66;
  let x_1750 : f32 = x_162.x_AdditionalShadowFadeParams.x;
  let x_1753 : f32 = x_162.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1747 * x_1750) + x_1753);
  let x_1755 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1755, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1767 : u32 = u_xlatu_loop_1;
    let x_1768 : u32 = u_xlatu0;
    if ((x_1767 < x_1768)) {
    } else {
      break;
    }
    let x_1771 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1771 >> 2u);
    let x_1774 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1774 & 3u));
    let x_1777 : u32 = u_xlatu68;
    let x_1780 : vec4<f32> = x_1700.unity_LightIndices[bitcast<i32>(x_1777)];
    let x_1790 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1795 : vec4<u32> = indexable[x_1790];
    u_xlat68 = dot(x_1780, bitcast<vec4<f32>>(x_1795));
    let x_1799 : f32 = u_xlat68;
    u_xlati68 = i32(x_1799);
    let x_1801 : vec4<f32> = vs_TEXCOORD2;
    let x_1813 : i32 = u_xlati68;
    let x_1815 : vec4<f32> = x_1812.x_AdditionalLightsPosition[x_1813];
    let x_1818 : i32 = u_xlati68;
    let x_1820 : vec4<f32> = x_1812.x_AdditionalLightsPosition[x_1818];
    let x_1822 : vec3<f32> = ((-(vec3<f32>(x_1801.x, x_1801.y, x_1801.z)) * vec3<f32>(x_1815.w, x_1815.w, x_1815.w)) + vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
    let x_1823 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1823.w);
    let x_1826 : vec4<f32> = u_xlat6;
    let x_1828 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1826.x, x_1826.y, x_1826.z), vec3<f32>(x_1828.x, x_1828.y, x_1828.z));
    let x_1831 : f32 = u_xlat69;
    u_xlat69 = max(x_1831, 0.00006103515625f);
    let x_1835 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1835);
    let x_1837 : f32 = u_xlat70;
    let x_1839 : vec4<f32> = u_xlat6;
    let x_1841 : vec3<f32> = (vec3<f32>(x_1837, x_1837, x_1837) * vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
    let x_1842 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
    let x_1844 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1844);
    let x_1846 : f32 = u_xlat69;
    let x_1847 : i32 = u_xlati68;
    let x_1849 : f32 = x_1812.x_AdditionalLightsAttenuation[x_1847].x;
    u_xlat69 = (x_1846 * x_1849);
    let x_1851 : f32 = u_xlat69;
    let x_1853 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1851) * x_1853) + 1.0f);
    let x_1856 : f32 = u_xlat69;
    u_xlat69 = max(x_1856, 0.0f);
    let x_1858 : f32 = u_xlat69;
    let x_1859 : f32 = u_xlat69;
    u_xlat69 = (x_1858 * x_1859);
    let x_1861 : f32 = u_xlat69;
    let x_1862 : f32 = u_xlat70;
    u_xlat69 = (x_1861 * x_1862);
    let x_1864 : i32 = u_xlati68;
    let x_1866 : vec4<f32> = x_1812.x_AdditionalLightsSpotDir[x_1864];
    let x_1868 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1866.x, x_1866.y, x_1866.z), vec3<f32>(x_1868.x, x_1868.y, x_1868.z));
    let x_1871 : f32 = u_xlat70;
    let x_1872 : i32 = u_xlati68;
    let x_1874 : f32 = x_1812.x_AdditionalLightsAttenuation[x_1872].z;
    let x_1876 : i32 = u_xlati68;
    let x_1878 : f32 = x_1812.x_AdditionalLightsAttenuation[x_1876].w;
    u_xlat70 = ((x_1871 * x_1874) + x_1878);
    let x_1880 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1880, 0.0f, 1.0f);
    let x_1882 : f32 = u_xlat70;
    let x_1883 : f32 = u_xlat70;
    u_xlat70 = (x_1882 * x_1883);
    let x_1885 : f32 = u_xlat69;
    let x_1886 : f32 = u_xlat70;
    u_xlat69 = (x_1885 * x_1886);
    let x_1890 : i32 = u_xlati68;
    let x_1892 : f32 = x_162.x_AdditionalShadowParams[x_1890].w;
    u_xlati70 = i32(x_1892);
    let x_1895 : i32 = u_xlati70;
    u_xlatb71 = (x_1895 >= 0i);
    let x_1897 : bool = u_xlatb71;
    if (x_1897) {
      let x_1901 : i32 = u_xlati68;
      let x_1903 : f32 = x_162.x_AdditionalShadowParams[x_1901].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1903, x_1903, x_1903, x_1903))));
      let x_1907 : bool = u_xlatb71;
      if (x_1907) {
        let x_1911 : vec4<f32> = u_xlat6;
        let x_1914 : vec4<f32> = u_xlat6;
        let x_1917 : vec4<bool> = (abs(vec4<f32>(x_1911.z, x_1911.z, x_1911.y, x_1911.z)) >= abs(vec4<f32>(x_1914.x, x_1914.y, x_1914.x, x_1914.x)));
        let x_1919 : vec3<bool> = vec3<bool>(x_1917.x, x_1917.y, x_1917.z);
        let x_1920 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1919.x, x_1919.y, x_1919.z, x_1920.w);
        let x_1923 : bool = u_xlatb7.y;
        let x_1925 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1923 & x_1925);
        let x_1927 : vec4<f32> = u_xlat6;
        let x_1930 : vec4<bool> = (-(vec4<f32>(x_1927.z, x_1927.y, x_1927.z, x_1927.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1931 : vec3<bool> = vec3<bool>(x_1930.x, x_1930.y, x_1930.w);
        let x_1932 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1931.x, x_1931.y, x_1932.z, x_1931.z);
        let x_1935 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1935);
        let x_1940 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1940);
        let x_1945 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1945);
        let x_1948 : bool = u_xlatb7.z;
        if (x_1948) {
          let x_1953 : f32 = u_xlat7.y;
          x_1949 = x_1953;
        } else {
          let x_1955 : f32 = u_xlat72;
          x_1949 = x_1955;
        }
        let x_1956 : f32 = x_1949;
        u_xlat72 = x_1956;
        let x_1958 : bool = u_xlatb71;
        if (x_1958) {
          let x_1963 : f32 = u_xlat7.x;
          x_1959 = x_1963;
        } else {
          let x_1965 : f32 = u_xlat72;
          x_1959 = x_1965;
        }
        let x_1966 : f32 = x_1959;
        u_xlat71 = x_1966;
        let x_1967 : i32 = u_xlati68;
        let x_1969 : f32 = x_162.x_AdditionalShadowParams[x_1967].w;
        u_xlat72 = trunc(x_1969);
        let x_1971 : f32 = u_xlat71;
        let x_1972 : f32 = u_xlat72;
        u_xlat71 = (x_1971 + x_1972);
        let x_1974 : f32 = u_xlat71;
        u_xlati70 = i32(x_1974);
      }
      let x_1976 : i32 = u_xlati70;
      u_xlati70 = (x_1976 << bitcast<u32>(2i));
      let x_1978 : vec4<f32> = vs_TEXCOORD2;
      let x_1981 : i32 = u_xlati70;
      let x_1984 : i32 = u_xlati70;
      let x_1988 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_1981 + 1i) / 4i)][((x_1984 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1978.y, x_1978.y, x_1978.y, x_1978.y) * x_1988);
      let x_1990 : i32 = u_xlati70;
      let x_1992 : i32 = u_xlati70;
      let x_1995 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[(x_1990 / 4i)][(x_1992 % 4i)];
      let x_1996 : vec4<f32> = vs_TEXCOORD2;
      let x_1999 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_1995 * vec4<f32>(x_1996.x, x_1996.x, x_1996.x, x_1996.x)) + x_1999);
      let x_2001 : i32 = u_xlati70;
      let x_2004 : i32 = u_xlati70;
      let x_2008 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_2001 + 2i) / 4i)][((x_2004 + 2i) % 4i)];
      let x_2009 : vec4<f32> = vs_TEXCOORD2;
      let x_2012 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2008 * vec4<f32>(x_2009.z, x_2009.z, x_2009.z, x_2009.z)) + x_2012);
      let x_2014 : vec4<f32> = u_xlat7;
      let x_2015 : i32 = u_xlati70;
      let x_2018 : i32 = u_xlati70;
      let x_2022 : vec4<f32> = x_162.x_AdditionalLightsWorldToShadow[((x_2015 + 3i) / 4i)][((x_2018 + 3i) % 4i)];
      u_xlat7 = (x_2014 + x_2022);
      let x_2024 : vec4<f32> = u_xlat7;
      let x_2026 : vec4<f32> = u_xlat7;
      let x_2028 : vec3<f32> = (vec3<f32>(x_2024.x, x_2024.y, x_2024.z) / vec3<f32>(x_2026.w, x_2026.w, x_2026.w));
      let x_2029 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2029.w);
      let x_2032 : i32 = u_xlati68;
      let x_2034 : f32 = x_162.x_AdditionalShadowParams[x_2032].y;
      u_xlatb70 = (0.0f < x_2034);
      let x_2036 : bool = u_xlatb70;
      if (x_2036) {
        let x_2039 : i32 = u_xlati68;
        let x_2041 : f32 = x_162.x_AdditionalShadowParams[x_2039].y;
        u_xlatb70 = (1.0f == x_2041);
        let x_2043 : bool = u_xlatb70;
        if (x_2043) {
          let x_2046 : vec4<f32> = u_xlat7;
          let x_2050 : vec4<f32> = x_162.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2046.x, x_2046.y, x_2046.x, x_2046.y) + x_2050);
          let x_2053 : vec4<f32> = u_xlat8;
          let x_2054 : vec2<f32> = vec2<f32>(x_2053.x, x_2053.y);
          let x_2056 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2054.x, x_2054.y, x_2056);
          let x_2064 : vec3<f32> = txVec30;
          let x_2066 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2064.xy, x_2064.z);
          u_xlat9.x = x_2066;
          let x_2069 : vec4<f32> = u_xlat8;
          let x_2070 : vec2<f32> = vec2<f32>(x_2069.z, x_2069.w);
          let x_2072 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2070.x, x_2070.y, x_2072);
          let x_2079 : vec3<f32> = txVec31;
          let x_2081 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2079.xy, x_2079.z);
          u_xlat9.y = x_2081;
          let x_2083 : vec4<f32> = u_xlat7;
          let x_2087 : vec4<f32> = x_162.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2083.x, x_2083.y, x_2083.x, x_2083.y) + x_2087);
          let x_2090 : vec4<f32> = u_xlat8;
          let x_2091 : vec2<f32> = vec2<f32>(x_2090.x, x_2090.y);
          let x_2093 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2091.x, x_2091.y, x_2093);
          let x_2100 : vec3<f32> = txVec32;
          let x_2102 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2100.xy, x_2100.z);
          u_xlat9.z = x_2102;
          let x_2105 : vec4<f32> = u_xlat8;
          let x_2106 : vec2<f32> = vec2<f32>(x_2105.z, x_2105.w);
          let x_2108 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2106.x, x_2106.y, x_2108);
          let x_2115 : vec3<f32> = txVec33;
          let x_2117 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2115.xy, x_2115.z);
          u_xlat9.w = x_2117;
          let x_2119 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_2119, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2122 : i32 = u_xlati68;
          let x_2124 : f32 = x_162.x_AdditionalShadowParams[x_2122].y;
          u_xlatb71 = (2.0f == x_2124);
          let x_2126 : bool = u_xlatb71;
          if (x_2126) {
            let x_2129 : vec4<f32> = u_xlat7;
            let x_2133 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2136 : vec2<f32> = ((vec2<f32>(x_2129.x, x_2129.y) * vec2<f32>(x_2133.z, x_2133.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2137 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2136.x, x_2136.y, x_2137.z, x_2137.w);
            let x_2139 : vec4<f32> = u_xlat8;
            let x_2141 : vec2<f32> = floor(vec2<f32>(x_2139.x, x_2139.y));
            let x_2142 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2141.x, x_2141.y, x_2142.z, x_2142.w);
            let x_2144 : vec4<f32> = u_xlat7;
            let x_2147 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2150 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2144.x, x_2144.y) * vec2<f32>(x_2147.z, x_2147.w)) + -(vec2<f32>(x_2150.x, x_2150.y)));
            let x_2154 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2154.x, x_2154.x, x_2154.y, x_2154.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2157 : vec4<f32> = u_xlat9;
            let x_2159 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2157.x, x_2157.x, x_2157.z, x_2157.z) * vec4<f32>(x_2159.x, x_2159.x, x_2159.z, x_2159.z));
            let x_2162 : vec4<f32> = u_xlat10;
            let x_2164 : vec2<f32> = (vec2<f32>(x_2162.y, x_2162.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2165 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2164.x, x_2165.y, x_2164.y, x_2165.w);
            let x_2167 : vec4<f32> = u_xlat10;
            let x_2170 : vec2<f32> = u_xlat52;
            let x_2172 : vec2<f32> = ((vec2<f32>(x_2167.x, x_2167.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2170));
            let x_2173 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2172.x, x_2172.y, x_2173.z, x_2173.w);
            let x_2176 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2176) + vec2<f32>(1.0f, 1.0f));
            let x_2179 : vec2<f32> = u_xlat52;
            let x_2180 : vec2<f32> = min(x_2179, vec2<f32>(0.0f, 0.0f));
            let x_2181 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2180.x, x_2180.y, x_2181.z, x_2181.w);
            let x_2183 : vec4<f32> = u_xlat11;
            let x_2186 : vec4<f32> = u_xlat11;
            let x_2189 : vec2<f32> = u_xlat54;
            let x_2190 : vec2<f32> = ((-(vec2<f32>(x_2183.x, x_2183.y)) * vec2<f32>(x_2186.x, x_2186.y)) + x_2189);
            let x_2191 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2190.x, x_2190.y, x_2191.z, x_2191.w);
            let x_2193 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2193, vec2<f32>(0.0f, 0.0f));
            let x_2195 : vec2<f32> = u_xlat52;
            let x_2197 : vec2<f32> = u_xlat52;
            let x_2199 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2195) * x_2197) + vec2<f32>(x_2199.y, x_2199.w));
            let x_2202 : vec4<f32> = u_xlat11;
            let x_2204 : vec2<f32> = (vec2<f32>(x_2202.x, x_2202.y) + vec2<f32>(1.0f, 1.0f));
            let x_2205 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2204.x, x_2204.y, x_2205.z, x_2205.w);
            let x_2207 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2207 + vec2<f32>(1.0f, 1.0f));
            let x_2209 : vec4<f32> = u_xlat10;
            let x_2211 : vec2<f32> = (vec2<f32>(x_2209.x, x_2209.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2212 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2211.x, x_2211.y, x_2212.z, x_2212.w);
            let x_2214 : vec2<f32> = u_xlat54;
            let x_2215 : vec2<f32> = (x_2214 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2216 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
            let x_2218 : vec4<f32> = u_xlat11;
            let x_2220 : vec2<f32> = (vec2<f32>(x_2218.x, x_2218.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2221 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2220.x, x_2220.y, x_2221.z, x_2221.w);
            let x_2223 : vec2<f32> = u_xlat52;
            let x_2224 : vec2<f32> = (x_2223 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2225 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2224.x, x_2224.y, x_2225.z, x_2225.w);
            let x_2227 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2227.y, x_2227.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2231 : f32 = u_xlat11.x;
            u_xlat12.z = x_2231;
            let x_2234 : f32 = u_xlat52.x;
            u_xlat12.w = x_2234;
            let x_2237 : f32 = u_xlat13.x;
            u_xlat10.z = x_2237;
            let x_2240 : f32 = u_xlat9.x;
            u_xlat10.w = x_2240;
            let x_2242 : vec4<f32> = u_xlat10;
            let x_2244 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2242.z, x_2242.w, x_2242.x, x_2242.z) + vec4<f32>(x_2244.z, x_2244.w, x_2244.x, x_2244.z));
            let x_2248 : f32 = u_xlat12.y;
            u_xlat11.z = x_2248;
            let x_2251 : f32 = u_xlat52.y;
            u_xlat11.w = x_2251;
            let x_2254 : f32 = u_xlat10.y;
            u_xlat13.z = x_2254;
            let x_2257 : f32 = u_xlat9.z;
            u_xlat13.w = x_2257;
            let x_2259 : vec4<f32> = u_xlat11;
            let x_2261 : vec4<f32> = u_xlat13;
            let x_2263 : vec3<f32> = (vec3<f32>(x_2259.z, x_2259.y, x_2259.w) + vec3<f32>(x_2261.z, x_2261.y, x_2261.w));
            let x_2264 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2263.x, x_2263.y, x_2263.z, x_2264.w);
            let x_2266 : vec4<f32> = u_xlat10;
            let x_2268 : vec4<f32> = u_xlat14;
            let x_2270 : vec3<f32> = (vec3<f32>(x_2266.x, x_2266.z, x_2266.w) / vec3<f32>(x_2268.z, x_2268.w, x_2268.y));
            let x_2271 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2270.x, x_2270.y, x_2270.z, x_2271.w);
            let x_2273 : vec4<f32> = u_xlat10;
            let x_2275 : vec3<f32> = (vec3<f32>(x_2273.x, x_2273.y, x_2273.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2276 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2276.w);
            let x_2278 : vec4<f32> = u_xlat13;
            let x_2280 : vec4<f32> = u_xlat9;
            let x_2282 : vec3<f32> = (vec3<f32>(x_2278.z, x_2278.y, x_2278.w) / vec3<f32>(x_2280.x, x_2280.y, x_2280.z));
            let x_2283 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2282.x, x_2282.y, x_2282.z, x_2283.w);
            let x_2285 : vec4<f32> = u_xlat11;
            let x_2287 : vec3<f32> = (vec3<f32>(x_2285.x, x_2285.y, x_2285.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2288 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2287.x, x_2287.y, x_2287.z, x_2288.w);
            let x_2290 : vec4<f32> = u_xlat10;
            let x_2293 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2295 : vec3<f32> = (vec3<f32>(x_2290.y, x_2290.x, x_2290.z) * vec3<f32>(x_2293.x, x_2293.x, x_2293.x));
            let x_2296 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2295.x, x_2295.y, x_2295.z, x_2296.w);
            let x_2298 : vec4<f32> = u_xlat11;
            let x_2301 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2303 : vec3<f32> = (vec3<f32>(x_2298.x, x_2298.y, x_2298.z) * vec3<f32>(x_2301.y, x_2301.y, x_2301.y));
            let x_2304 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2303.x, x_2303.y, x_2303.z, x_2304.w);
            let x_2307 : f32 = u_xlat11.x;
            u_xlat10.w = x_2307;
            let x_2309 : vec4<f32> = u_xlat8;
            let x_2312 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2315 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2309.x, x_2309.y, x_2309.x, x_2309.y) * vec4<f32>(x_2312.x, x_2312.y, x_2312.x, x_2312.y)) + vec4<f32>(x_2315.y, x_2315.w, x_2315.x, x_2315.w));
            let x_2318 : vec4<f32> = u_xlat8;
            let x_2321 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2324 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2318.x, x_2318.y) * vec2<f32>(x_2321.x, x_2321.y)) + vec2<f32>(x_2324.z, x_2324.w));
            let x_2328 : f32 = u_xlat10.y;
            u_xlat11.w = x_2328;
            let x_2330 : vec4<f32> = u_xlat11;
            let x_2331 : vec2<f32> = vec2<f32>(x_2330.y, x_2330.z);
            let x_2332 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2332.x, x_2331.x, x_2332.z, x_2331.y);
            let x_2334 : vec4<f32> = u_xlat8;
            let x_2337 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2340 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2334.x, x_2334.y, x_2334.x, x_2334.y) * vec4<f32>(x_2337.x, x_2337.y, x_2337.x, x_2337.y)) + vec4<f32>(x_2340.x, x_2340.y, x_2340.z, x_2340.y));
            let x_2343 : vec4<f32> = u_xlat8;
            let x_2346 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2349 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2343.x, x_2343.y, x_2343.x, x_2343.y) * vec4<f32>(x_2346.x, x_2346.y, x_2346.x, x_2346.y)) + vec4<f32>(x_2349.w, x_2349.y, x_2349.w, x_2349.z));
            let x_2352 : vec4<f32> = u_xlat8;
            let x_2355 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2358 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2352.x, x_2352.y, x_2352.x, x_2352.y) * vec4<f32>(x_2355.x, x_2355.y, x_2355.x, x_2355.y)) + vec4<f32>(x_2358.x, x_2358.w, x_2358.z, x_2358.w));
            let x_2361 : vec4<f32> = u_xlat9;
            let x_2363 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2361.x, x_2361.x, x_2361.x, x_2361.y) * vec4<f32>(x_2363.z, x_2363.w, x_2363.y, x_2363.z));
            let x_2366 : vec4<f32> = u_xlat9;
            let x_2368 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2366.y, x_2366.y, x_2366.z, x_2366.z) * x_2368);
            let x_2371 : f32 = u_xlat9.z;
            let x_2373 : f32 = u_xlat14.y;
            u_xlat71 = (x_2371 * x_2373);
            let x_2376 : vec4<f32> = u_xlat12;
            let x_2377 : vec2<f32> = vec2<f32>(x_2376.x, x_2376.y);
            let x_2379 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2377.x, x_2377.y, x_2379);
            let x_2386 : vec3<f32> = txVec34;
            let x_2388 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2386.xy, x_2386.z);
            u_xlat72 = x_2388;
            let x_2390 : vec4<f32> = u_xlat12;
            let x_2391 : vec2<f32> = vec2<f32>(x_2390.z, x_2390.w);
            let x_2393 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2391.x, x_2391.y, x_2393);
            let x_2401 : vec3<f32> = txVec35;
            let x_2403 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2401.xy, x_2401.z);
            u_xlat73 = x_2403;
            let x_2404 : f32 = u_xlat73;
            let x_2406 : f32 = u_xlat15.y;
            u_xlat73 = (x_2404 * x_2406);
            let x_2409 : f32 = u_xlat15.x;
            let x_2410 : f32 = u_xlat72;
            let x_2412 : f32 = u_xlat73;
            u_xlat72 = ((x_2409 * x_2410) + x_2412);
            let x_2415 : vec2<f32> = u_xlat52;
            let x_2417 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2415.x, x_2415.y, x_2417);
            let x_2424 : vec3<f32> = txVec36;
            let x_2426 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2424.xy, x_2424.z);
            u_xlat73 = x_2426;
            let x_2428 : f32 = u_xlat15.z;
            let x_2429 : f32 = u_xlat73;
            let x_2431 : f32 = u_xlat72;
            u_xlat72 = ((x_2428 * x_2429) + x_2431);
            let x_2434 : vec4<f32> = u_xlat11;
            let x_2435 : vec2<f32> = vec2<f32>(x_2434.x, x_2434.y);
            let x_2437 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2435.x, x_2435.y, x_2437);
            let x_2444 : vec3<f32> = txVec37;
            let x_2446 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2444.xy, x_2444.z);
            u_xlat73 = x_2446;
            let x_2448 : f32 = u_xlat15.w;
            let x_2449 : f32 = u_xlat73;
            let x_2451 : f32 = u_xlat72;
            u_xlat72 = ((x_2448 * x_2449) + x_2451);
            let x_2454 : vec4<f32> = u_xlat13;
            let x_2455 : vec2<f32> = vec2<f32>(x_2454.x, x_2454.y);
            let x_2457 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2455.x, x_2455.y, x_2457);
            let x_2464 : vec3<f32> = txVec38;
            let x_2466 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2464.xy, x_2464.z);
            u_xlat73 = x_2466;
            let x_2468 : f32 = u_xlat16.x;
            let x_2469 : f32 = u_xlat73;
            let x_2471 : f32 = u_xlat72;
            u_xlat72 = ((x_2468 * x_2469) + x_2471);
            let x_2474 : vec4<f32> = u_xlat13;
            let x_2475 : vec2<f32> = vec2<f32>(x_2474.z, x_2474.w);
            let x_2477 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2475.x, x_2475.y, x_2477);
            let x_2484 : vec3<f32> = txVec39;
            let x_2486 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2484.xy, x_2484.z);
            u_xlat73 = x_2486;
            let x_2488 : f32 = u_xlat16.y;
            let x_2489 : f32 = u_xlat73;
            let x_2491 : f32 = u_xlat72;
            u_xlat72 = ((x_2488 * x_2489) + x_2491);
            let x_2494 : vec4<f32> = u_xlat11;
            let x_2495 : vec2<f32> = vec2<f32>(x_2494.z, x_2494.w);
            let x_2497 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2495.x, x_2495.y, x_2497);
            let x_2504 : vec3<f32> = txVec40;
            let x_2506 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2504.xy, x_2504.z);
            u_xlat73 = x_2506;
            let x_2508 : f32 = u_xlat16.z;
            let x_2509 : f32 = u_xlat73;
            let x_2511 : f32 = u_xlat72;
            u_xlat72 = ((x_2508 * x_2509) + x_2511);
            let x_2514 : vec4<f32> = u_xlat10;
            let x_2515 : vec2<f32> = vec2<f32>(x_2514.x, x_2514.y);
            let x_2517 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2515.x, x_2515.y, x_2517);
            let x_2524 : vec3<f32> = txVec41;
            let x_2526 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2524.xy, x_2524.z);
            u_xlat73 = x_2526;
            let x_2528 : f32 = u_xlat16.w;
            let x_2529 : f32 = u_xlat73;
            let x_2531 : f32 = u_xlat72;
            u_xlat72 = ((x_2528 * x_2529) + x_2531);
            let x_2534 : vec4<f32> = u_xlat10;
            let x_2535 : vec2<f32> = vec2<f32>(x_2534.z, x_2534.w);
            let x_2537 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2535.x, x_2535.y, x_2537);
            let x_2544 : vec3<f32> = txVec42;
            let x_2546 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2544.xy, x_2544.z);
            u_xlat73 = x_2546;
            let x_2547 : f32 = u_xlat71;
            let x_2548 : f32 = u_xlat73;
            let x_2550 : f32 = u_xlat72;
            u_xlat70 = ((x_2547 * x_2548) + x_2550);
          } else {
            let x_2553 : vec4<f32> = u_xlat7;
            let x_2556 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2559 : vec2<f32> = ((vec2<f32>(x_2553.x, x_2553.y) * vec2<f32>(x_2556.z, x_2556.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2560 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2559.x, x_2559.y, x_2560.z, x_2560.w);
            let x_2562 : vec4<f32> = u_xlat8;
            let x_2564 : vec2<f32> = floor(vec2<f32>(x_2562.x, x_2562.y));
            let x_2565 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2564.x, x_2564.y, x_2565.z, x_2565.w);
            let x_2567 : vec4<f32> = u_xlat7;
            let x_2570 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2573 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2567.x, x_2567.y) * vec2<f32>(x_2570.z, x_2570.w)) + -(vec2<f32>(x_2573.x, x_2573.y)));
            let x_2577 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2577.x, x_2577.x, x_2577.y, x_2577.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2580 : vec4<f32> = u_xlat9;
            let x_2582 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2580.x, x_2580.x, x_2580.z, x_2580.z) * vec4<f32>(x_2582.x, x_2582.x, x_2582.z, x_2582.z));
            let x_2585 : vec4<f32> = u_xlat10;
            let x_2587 : vec2<f32> = (vec2<f32>(x_2585.y, x_2585.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2588 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2588.x, x_2587.x, x_2588.z, x_2587.y);
            let x_2590 : vec4<f32> = u_xlat10;
            let x_2593 : vec2<f32> = u_xlat52;
            let x_2595 : vec2<f32> = ((vec2<f32>(x_2590.x, x_2590.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2593));
            let x_2596 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2595.x, x_2596.y, x_2595.y, x_2596.w);
            let x_2598 : vec2<f32> = u_xlat52;
            let x_2600 : vec2<f32> = (-(x_2598) + vec2<f32>(1.0f, 1.0f));
            let x_2601 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2600.x, x_2600.y, x_2601.z, x_2601.w);
            let x_2603 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2603, vec2<f32>(0.0f, 0.0f));
            let x_2605 : vec2<f32> = u_xlat54;
            let x_2607 : vec2<f32> = u_xlat54;
            let x_2609 : vec4<f32> = u_xlat10;
            let x_2611 : vec2<f32> = ((-(x_2605) * x_2607) + vec2<f32>(x_2609.x, x_2609.y));
            let x_2612 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2611.x, x_2611.y, x_2612.z, x_2612.w);
            let x_2614 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2614, vec2<f32>(0.0f, 0.0f));
            let x_2617 : vec2<f32> = u_xlat54;
            let x_2619 : vec2<f32> = u_xlat54;
            let x_2621 : vec4<f32> = u_xlat9;
            let x_2623 : vec2<f32> = ((-(x_2617) * x_2619) + vec2<f32>(x_2621.y, x_2621.w));
            let x_2624 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2623.x, x_2624.y, x_2623.y);
            let x_2626 : vec4<f32> = u_xlat10;
            let x_2628 : vec2<f32> = (vec2<f32>(x_2626.x, x_2626.y) + vec2<f32>(2.0f, 2.0f));
            let x_2629 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2628.x, x_2628.y, x_2629.z, x_2629.w);
            let x_2631 : vec3<f32> = u_xlat31;
            let x_2633 : vec2<f32> = (vec2<f32>(x_2631.x, x_2631.z) + vec2<f32>(2.0f, 2.0f));
            let x_2634 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2634.x, x_2633.x, x_2634.z, x_2633.y);
            let x_2637 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2637 * 0.08163200318813323975f);
            let x_2640 : vec4<f32> = u_xlat9;
            let x_2642 : vec3<f32> = (vec3<f32>(x_2640.z, x_2640.x, x_2640.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2643 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2642.x, x_2642.y, x_2642.z, x_2643.w);
            let x_2645 : vec4<f32> = u_xlat10;
            let x_2647 : vec2<f32> = (vec2<f32>(x_2645.x, x_2645.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2648 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2647.x, x_2647.y, x_2648.z, x_2648.w);
            let x_2651 : f32 = u_xlat13.y;
            u_xlat12.x = x_2651;
            let x_2653 : vec2<f32> = u_xlat52;
            let x_2656 : vec2<f32> = ((vec2<f32>(x_2653.x, x_2653.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2657 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2657.x, x_2656.x, x_2657.z, x_2656.y);
            let x_2659 : vec2<f32> = u_xlat52;
            let x_2662 : vec2<f32> = ((vec2<f32>(x_2659.x, x_2659.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2663 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2662.x, x_2663.y, x_2662.y, x_2663.w);
            let x_2666 : f32 = u_xlat9.x;
            u_xlat10.y = x_2666;
            let x_2669 : f32 = u_xlat11.y;
            u_xlat10.w = x_2669;
            let x_2671 : vec4<f32> = u_xlat10;
            let x_2672 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2671 + x_2672);
            let x_2674 : vec2<f32> = u_xlat52;
            let x_2677 : vec2<f32> = ((vec2<f32>(x_2674.y, x_2674.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2678 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2678.x, x_2677.x, x_2678.z, x_2677.y);
            let x_2680 : vec2<f32> = u_xlat52;
            let x_2683 : vec2<f32> = ((vec2<f32>(x_2680.y, x_2680.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2684 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2683.x, x_2684.y, x_2683.y, x_2684.w);
            let x_2687 : f32 = u_xlat9.y;
            u_xlat11.y = x_2687;
            let x_2689 : vec4<f32> = u_xlat11;
            let x_2690 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2689 + x_2690);
            let x_2692 : vec4<f32> = u_xlat10;
            let x_2693 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2692 / x_2693);
            let x_2695 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2695 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2697 : vec4<f32> = u_xlat11;
            let x_2698 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2697 / x_2698);
            let x_2700 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2700 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2702 : vec4<f32> = u_xlat10;
            let x_2705 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2702.w, x_2702.x, x_2702.y, x_2702.z) * vec4<f32>(x_2705.x, x_2705.x, x_2705.x, x_2705.x));
            let x_2708 : vec4<f32> = u_xlat11;
            let x_2711 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2708.x, x_2708.w, x_2708.y, x_2708.z) * vec4<f32>(x_2711.y, x_2711.y, x_2711.y, x_2711.y));
            let x_2714 : vec4<f32> = u_xlat10;
            let x_2715 : vec3<f32> = vec3<f32>(x_2714.y, x_2714.z, x_2714.w);
            let x_2716 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2715.x, x_2716.y, x_2715.y, x_2715.z);
            let x_2719 : f32 = u_xlat11.x;
            u_xlat13.y = x_2719;
            let x_2721 : vec4<f32> = u_xlat8;
            let x_2724 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2727 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2721.x, x_2721.y, x_2721.x, x_2721.y) * vec4<f32>(x_2724.x, x_2724.y, x_2724.x, x_2724.y)) + vec4<f32>(x_2727.x, x_2727.y, x_2727.z, x_2727.y));
            let x_2730 : vec4<f32> = u_xlat8;
            let x_2733 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2736 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2730.x, x_2730.y) * vec2<f32>(x_2733.x, x_2733.y)) + vec2<f32>(x_2736.w, x_2736.y));
            let x_2740 : f32 = u_xlat13.y;
            u_xlat10.y = x_2740;
            let x_2743 : f32 = u_xlat11.z;
            u_xlat13.y = x_2743;
            let x_2745 : vec4<f32> = u_xlat8;
            let x_2748 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2751 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2745.x, x_2745.y, x_2745.x, x_2745.y) * vec4<f32>(x_2748.x, x_2748.y, x_2748.x, x_2748.y)) + vec4<f32>(x_2751.x, x_2751.y, x_2751.z, x_2751.y));
            let x_2754 : vec4<f32> = u_xlat8;
            let x_2757 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2760 : vec4<f32> = u_xlat13;
            let x_2762 : vec2<f32> = ((vec2<f32>(x_2754.x, x_2754.y) * vec2<f32>(x_2757.x, x_2757.y)) + vec2<f32>(x_2760.w, x_2760.y));
            let x_2763 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2762.x, x_2762.y, x_2763.z, x_2763.w);
            let x_2766 : f32 = u_xlat13.y;
            u_xlat10.z = x_2766;
            let x_2768 : vec4<f32> = u_xlat8;
            let x_2771 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2774 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2768.x, x_2768.y, x_2768.x, x_2768.y) * vec4<f32>(x_2771.x, x_2771.y, x_2771.x, x_2771.y)) + vec4<f32>(x_2774.x, x_2774.y, x_2774.x, x_2774.z));
            let x_2778 : f32 = u_xlat11.w;
            u_xlat13.y = x_2778;
            let x_2780 : vec4<f32> = u_xlat8;
            let x_2783 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2786 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2780.x, x_2780.y, x_2780.x, x_2780.y) * vec4<f32>(x_2783.x, x_2783.y, x_2783.x, x_2783.y)) + vec4<f32>(x_2786.x, x_2786.y, x_2786.z, x_2786.y));
            let x_2790 : vec4<f32> = u_xlat8;
            let x_2793 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2796 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2790.x, x_2790.y) * vec2<f32>(x_2793.x, x_2793.y)) + vec2<f32>(x_2796.w, x_2796.y));
            let x_2800 : f32 = u_xlat13.y;
            u_xlat10.w = x_2800;
            let x_2803 : vec4<f32> = u_xlat8;
            let x_2806 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2809 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2803.x, x_2803.y) * vec2<f32>(x_2806.x, x_2806.y)) + vec2<f32>(x_2809.x, x_2809.w));
            let x_2812 : vec4<f32> = u_xlat13;
            let x_2813 : vec3<f32> = vec3<f32>(x_2812.x, x_2812.z, x_2812.w);
            let x_2814 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2813.x, x_2814.y, x_2813.y, x_2813.z);
            let x_2816 : vec4<f32> = u_xlat8;
            let x_2819 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2822 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2816.x, x_2816.y, x_2816.x, x_2816.y) * vec4<f32>(x_2819.x, x_2819.y, x_2819.x, x_2819.y)) + vec4<f32>(x_2822.x, x_2822.y, x_2822.z, x_2822.y));
            let x_2826 : vec4<f32> = u_xlat8;
            let x_2829 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2832 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2826.x, x_2826.y) * vec2<f32>(x_2829.x, x_2829.y)) + vec2<f32>(x_2832.w, x_2832.y));
            let x_2836 : f32 = u_xlat10.x;
            u_xlat11.x = x_2836;
            let x_2838 : vec4<f32> = u_xlat8;
            let x_2841 : vec4<f32> = x_162.x_AdditionalShadowmapSize;
            let x_2844 : vec4<f32> = u_xlat11;
            let x_2846 : vec2<f32> = ((vec2<f32>(x_2838.x, x_2838.y) * vec2<f32>(x_2841.x, x_2841.y)) + vec2<f32>(x_2844.x, x_2844.y));
            let x_2847 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2846.x, x_2846.y, x_2847.z, x_2847.w);
            let x_2850 : vec4<f32> = u_xlat9;
            let x_2852 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2850.x, x_2850.x, x_2850.x, x_2850.x) * x_2852);
            let x_2855 : vec4<f32> = u_xlat9;
            let x_2857 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2855.y, x_2855.y, x_2855.y, x_2855.y) * x_2857);
            let x_2860 : vec4<f32> = u_xlat9;
            let x_2862 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2860.z, x_2860.z, x_2860.z, x_2860.z) * x_2862);
            let x_2864 : vec4<f32> = u_xlat9;
            let x_2866 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2864.w, x_2864.w, x_2864.w, x_2864.w) * x_2866);
            let x_2869 : vec4<f32> = u_xlat14;
            let x_2870 : vec2<f32> = vec2<f32>(x_2869.x, x_2869.y);
            let x_2872 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2870.x, x_2870.y, x_2872);
            let x_2879 : vec3<f32> = txVec43;
            let x_2881 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2879.xy, x_2879.z);
            u_xlat71 = x_2881;
            let x_2883 : vec4<f32> = u_xlat14;
            let x_2884 : vec2<f32> = vec2<f32>(x_2883.z, x_2883.w);
            let x_2886 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2884.x, x_2884.y, x_2886);
            let x_2893 : vec3<f32> = txVec44;
            let x_2895 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2893.xy, x_2893.z);
            u_xlat72 = x_2895;
            let x_2896 : f32 = u_xlat72;
            let x_2898 : f32 = u_xlat19.y;
            u_xlat72 = (x_2896 * x_2898);
            let x_2901 : f32 = u_xlat19.x;
            let x_2902 : f32 = u_xlat71;
            let x_2904 : f32 = u_xlat72;
            u_xlat71 = ((x_2901 * x_2902) + x_2904);
            let x_2907 : vec2<f32> = u_xlat52;
            let x_2909 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2907.x, x_2907.y, x_2909);
            let x_2916 : vec3<f32> = txVec45;
            let x_2918 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2916.xy, x_2916.z);
            u_xlat72 = x_2918;
            let x_2920 : f32 = u_xlat19.z;
            let x_2921 : f32 = u_xlat72;
            let x_2923 : f32 = u_xlat71;
            u_xlat71 = ((x_2920 * x_2921) + x_2923);
            let x_2926 : vec4<f32> = u_xlat17;
            let x_2927 : vec2<f32> = vec2<f32>(x_2926.x, x_2926.y);
            let x_2929 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2927.x, x_2927.y, x_2929);
            let x_2936 : vec3<f32> = txVec46;
            let x_2938 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2936.xy, x_2936.z);
            u_xlat72 = x_2938;
            let x_2940 : f32 = u_xlat19.w;
            let x_2941 : f32 = u_xlat72;
            let x_2943 : f32 = u_xlat71;
            u_xlat71 = ((x_2940 * x_2941) + x_2943);
            let x_2946 : vec4<f32> = u_xlat15;
            let x_2947 : vec2<f32> = vec2<f32>(x_2946.x, x_2946.y);
            let x_2949 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2947.x, x_2947.y, x_2949);
            let x_2956 : vec3<f32> = txVec47;
            let x_2958 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2956.xy, x_2956.z);
            u_xlat72 = x_2958;
            let x_2960 : f32 = u_xlat20.x;
            let x_2961 : f32 = u_xlat72;
            let x_2963 : f32 = u_xlat71;
            u_xlat71 = ((x_2960 * x_2961) + x_2963);
            let x_2966 : vec4<f32> = u_xlat15;
            let x_2967 : vec2<f32> = vec2<f32>(x_2966.z, x_2966.w);
            let x_2969 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2967.x, x_2967.y, x_2969);
            let x_2976 : vec3<f32> = txVec48;
            let x_2978 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2976.xy, x_2976.z);
            u_xlat72 = x_2978;
            let x_2980 : f32 = u_xlat20.y;
            let x_2981 : f32 = u_xlat72;
            let x_2983 : f32 = u_xlat71;
            u_xlat71 = ((x_2980 * x_2981) + x_2983);
            let x_2986 : vec4<f32> = u_xlat16;
            let x_2987 : vec2<f32> = vec2<f32>(x_2986.x, x_2986.y);
            let x_2989 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2987.x, x_2987.y, x_2989);
            let x_2996 : vec3<f32> = txVec49;
            let x_2998 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2996.xy, x_2996.z);
            u_xlat72 = x_2998;
            let x_3000 : f32 = u_xlat20.z;
            let x_3001 : f32 = u_xlat72;
            let x_3003 : f32 = u_xlat71;
            u_xlat71 = ((x_3000 * x_3001) + x_3003);
            let x_3006 : vec4<f32> = u_xlat17;
            let x_3007 : vec2<f32> = vec2<f32>(x_3006.z, x_3006.w);
            let x_3009 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3007.x, x_3007.y, x_3009);
            let x_3016 : vec3<f32> = txVec50;
            let x_3018 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3016.xy, x_3016.z);
            u_xlat72 = x_3018;
            let x_3020 : f32 = u_xlat20.w;
            let x_3021 : f32 = u_xlat72;
            let x_3023 : f32 = u_xlat71;
            u_xlat71 = ((x_3020 * x_3021) + x_3023);
            let x_3026 : vec4<f32> = u_xlat18;
            let x_3027 : vec2<f32> = vec2<f32>(x_3026.x, x_3026.y);
            let x_3029 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3027.x, x_3027.y, x_3029);
            let x_3036 : vec3<f32> = txVec51;
            let x_3038 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3036.xy, x_3036.z);
            u_xlat72 = x_3038;
            let x_3040 : f32 = u_xlat21.x;
            let x_3041 : f32 = u_xlat72;
            let x_3043 : f32 = u_xlat71;
            u_xlat71 = ((x_3040 * x_3041) + x_3043);
            let x_3046 : vec4<f32> = u_xlat18;
            let x_3047 : vec2<f32> = vec2<f32>(x_3046.z, x_3046.w);
            let x_3049 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3047.x, x_3047.y, x_3049);
            let x_3056 : vec3<f32> = txVec52;
            let x_3058 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3056.xy, x_3056.z);
            u_xlat72 = x_3058;
            let x_3060 : f32 = u_xlat21.y;
            let x_3061 : f32 = u_xlat72;
            let x_3063 : f32 = u_xlat71;
            u_xlat71 = ((x_3060 * x_3061) + x_3063);
            let x_3066 : vec2<f32> = u_xlat32;
            let x_3068 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3066.x, x_3066.y, x_3068);
            let x_3075 : vec3<f32> = txVec53;
            let x_3077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3075.xy, x_3075.z);
            u_xlat72 = x_3077;
            let x_3079 : f32 = u_xlat21.z;
            let x_3080 : f32 = u_xlat72;
            let x_3082 : f32 = u_xlat71;
            u_xlat71 = ((x_3079 * x_3080) + x_3082);
            let x_3085 : vec2<f32> = u_xlat60;
            let x_3087 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3085.x, x_3085.y, x_3087);
            let x_3094 : vec3<f32> = txVec54;
            let x_3096 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3094.xy, x_3094.z);
            u_xlat72 = x_3096;
            let x_3098 : f32 = u_xlat21.w;
            let x_3099 : f32 = u_xlat72;
            let x_3101 : f32 = u_xlat71;
            u_xlat71 = ((x_3098 * x_3099) + x_3101);
            let x_3104 : vec4<f32> = u_xlat13;
            let x_3105 : vec2<f32> = vec2<f32>(x_3104.x, x_3104.y);
            let x_3107 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3105.x, x_3105.y, x_3107);
            let x_3114 : vec3<f32> = txVec55;
            let x_3116 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3114.xy, x_3114.z);
            u_xlat72 = x_3116;
            let x_3118 : f32 = u_xlat9.x;
            let x_3119 : f32 = u_xlat72;
            let x_3121 : f32 = u_xlat71;
            u_xlat71 = ((x_3118 * x_3119) + x_3121);
            let x_3124 : vec4<f32> = u_xlat13;
            let x_3125 : vec2<f32> = vec2<f32>(x_3124.z, x_3124.w);
            let x_3127 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3125.x, x_3125.y, x_3127);
            let x_3134 : vec3<f32> = txVec56;
            let x_3136 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3134.xy, x_3134.z);
            u_xlat72 = x_3136;
            let x_3138 : f32 = u_xlat9.y;
            let x_3139 : f32 = u_xlat72;
            let x_3141 : f32 = u_xlat71;
            u_xlat71 = ((x_3138 * x_3139) + x_3141);
            let x_3144 : vec2<f32> = u_xlat55;
            let x_3146 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3144.x, x_3144.y, x_3146);
            let x_3153 : vec3<f32> = txVec57;
            let x_3155 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3153.xy, x_3153.z);
            u_xlat72 = x_3155;
            let x_3157 : f32 = u_xlat9.z;
            let x_3158 : f32 = u_xlat72;
            let x_3160 : f32 = u_xlat71;
            u_xlat71 = ((x_3157 * x_3158) + x_3160);
            let x_3163 : vec4<f32> = u_xlat8;
            let x_3164 : vec2<f32> = vec2<f32>(x_3163.x, x_3163.y);
            let x_3166 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3164.x, x_3164.y, x_3166);
            let x_3173 : vec3<f32> = txVec58;
            let x_3175 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3173.xy, x_3173.z);
            u_xlat72 = x_3175;
            let x_3177 : f32 = u_xlat9.w;
            let x_3178 : f32 = u_xlat72;
            let x_3180 : f32 = u_xlat71;
            u_xlat70 = ((x_3177 * x_3178) + x_3180);
          }
        }
      } else {
        let x_3184 : vec4<f32> = u_xlat7;
        let x_3185 : vec2<f32> = vec2<f32>(x_3184.x, x_3184.y);
        let x_3187 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3185.x, x_3185.y, x_3187);
        let x_3194 : vec3<f32> = txVec59;
        let x_3196 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3194.xy, x_3194.z);
        u_xlat70 = x_3196;
      }
      let x_3197 : i32 = u_xlati68;
      let x_3199 : f32 = x_162.x_AdditionalShadowParams[x_3197].x;
      u_xlat71 = (1.0f + -(x_3199));
      let x_3202 : f32 = u_xlat70;
      let x_3203 : i32 = u_xlati68;
      let x_3205 : f32 = x_162.x_AdditionalShadowParams[x_3203].x;
      let x_3207 : f32 = u_xlat71;
      u_xlat70 = ((x_3202 * x_3205) + x_3207);
      let x_3210 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3210);
      let x_3214 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3214 >= 1.0f);
      let x_3216 : bool = u_xlatb71;
      let x_3217 : bool = u_xlatb72;
      u_xlatb71 = (x_3216 | x_3217);
      let x_3219 : bool = u_xlatb71;
      let x_3220 : f32 = u_xlat70;
      u_xlat70 = select(x_3220, 1.0f, x_3219);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3223 : f32 = u_xlat70;
    u_xlat71 = (-(x_3223) + 1.0f);
    let x_3226 : f32 = u_xlat66;
    let x_3227 : f32 = u_xlat71;
    let x_3229 : f32 = u_xlat70;
    u_xlat70 = ((x_3226 * x_3227) + x_3229);
    let x_3231 : f32 = u_xlat69;
    let x_3232 : f32 = u_xlat70;
    u_xlat69 = (x_3231 * x_3232);
    let x_3234 : f32 = u_xlat69;
    let x_3236 : i32 = u_xlati68;
    let x_3238 : vec4<f32> = x_1812.x_AdditionalLightsColor[x_3236];
    let x_3240 : vec3<f32> = (vec3<f32>(x_3234, x_3234, x_3234) * vec3<f32>(x_3238.x, x_3238.y, x_3238.z));
    let x_3241 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3240.x, x_3240.y, x_3240.z, x_3241.w);
    let x_3243 : vec3<f32> = u_xlat2;
    let x_3244 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(x_3243, vec3<f32>(x_3244.x, x_3244.y, x_3244.z));
    let x_3247 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3247, 0.0f, 1.0f);
    let x_3249 : f32 = u_xlat68;
    let x_3251 : vec4<f32> = u_xlat7;
    let x_3253 : vec3<f32> = (vec3<f32>(x_3249, x_3249, x_3249) * vec3<f32>(x_3251.x, x_3251.y, x_3251.z));
    let x_3254 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3253.x, x_3253.y, x_3253.z, x_3254.w);
    let x_3256 : vec4<f32> = u_xlat6;
    let x_3258 : vec4<f32> = u_xlat1;
    let x_3261 : vec4<f32> = u_xlat5;
    let x_3263 : vec3<f32> = ((vec3<f32>(x_3256.x, x_3256.y, x_3256.z) * vec3<f32>(x_3258.x, x_3258.y, x_3258.z)) + vec3<f32>(x_3261.x, x_3261.y, x_3261.z));
    let x_3264 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3263.x, x_3263.y, x_3263.z, x_3264.w);

    continuing {
      let x_3266 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3266 + bitcast<u32>(1i));
    }
  }
  let x_3268 : vec4<f32> = u_xlat4;
  let x_3270 : vec4<f32> = u_xlat1;
  let x_3273 : vec4<f32> = u_xlat3;
  let x_3275 : vec3<f32> = ((vec3<f32>(x_3268.x, x_3268.y, x_3268.z) * vec3<f32>(x_3270.x, x_3270.y, x_3270.z)) + vec3<f32>(x_3273.x, x_3273.y, x_3273.z));
  let x_3276 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3275.x, x_3275.y, x_3275.z, x_3276.w);
  let x_3280 : vec4<f32> = u_xlat5;
  let x_3282 : vec4<f32> = u_xlat1;
  let x_3284 : vec3<f32> = (vec3<f32>(x_3280.x, x_3280.y, x_3280.z) + vec3<f32>(x_3282.x, x_3282.y, x_3282.z));
  let x_3285 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3284.x, x_3284.y, x_3284.z, x_3285.w);
  let x_3287 : bool = u_xlatb44;
  let x_3288 : f32 = u_xlat22;
  SV_Target0.w = select(1.0f, x_3288, x_3287);
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


