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
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat22 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat66 : f32;

var<private> u_xlatb44 : bool;

var<private> u_xlatb22 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_158 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu22 : u32;

var<private> u_xlati22 : i32;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

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

var<private> u_xlatb1 : bool;

@group(1) @binding(2) var<uniform> x_1718 : UnityPerDraw;

var<private> u_xlatu68 : u32;

var<private> u_xlati69 : i32;

var<private> u_xlati68 : i32;

@group(1) @binding(1) var<uniform> x_1823 : AdditionalLights;

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

var<private> u_xlatu1 : u32;

var<private> u_xlatb68 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
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
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1960 : f32;
  var x_1970 : f32;
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
  var x_3305 : f32;
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
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat22 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat44 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat66 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat66;
  let x_90 : f32 = u_xlat44;
  u_xlat44 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat44;
  u_xlat44 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat22;
  let x_97 : f32 = u_xlat44;
  u_xlat22 = (x_96 / x_97);
  let x_99 : f32 = u_xlat22;
  u_xlat22 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat22;
  u_xlat22 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb44 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb44;
  if (x_109) {
    let x_113 : f32 = u_xlat22;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat22 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat22;
  u_xlatb22 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb22;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat22 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat22;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_160 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres0;
  let x_163 : vec3<f32> = (x_149 + -(vec3<f32>(x_160.x, x_160.y, x_160.z)));
  let x_164 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_167 : vec3<f32> = vs_TEXCOORD1;
  let x_170 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres1;
  let x_173 : vec3<f32> = (x_167 + -(vec3<f32>(x_170.x, x_170.y, x_170.z)));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_177 : vec3<f32> = vs_TEXCOORD1;
  let x_180 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres2;
  let x_183 : vec3<f32> = (x_177 + -(vec3<f32>(x_180.x, x_180.y, x_180.z)));
  let x_184 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : vec3<f32> = vs_TEXCOORD1;
  let x_189 : vec4<f32> = x_158.x_CascadeShadowSplitSpheres3;
  let x_192 : vec3<f32> = (x_187 + -(vec3<f32>(x_189.x, x_189.y, x_189.z)));
  let x_193 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
  let x_195 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_195.x, x_195.y, x_195.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : vec4<f32> = u_xlat4;
  let x_203 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_208 : vec4<f32> = u_xlat5;
  let x_210 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_215 : vec4<f32> = u_xlat6;
  let x_217 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_215.x, x_215.y, x_215.z), vec3<f32>(x_217.x, x_217.y, x_217.z));
  let x_224 : vec4<f32> = u_xlat3;
  let x_227 : vec4<f32> = x_158.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_224 < x_227);
  let x_230 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_230);
  let x_234 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_234);
  let x_238 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_238);
  let x_242 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_242);
  let x_246 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_246);
  let x_252 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_252);
  let x_256 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_256);
  let x_259 : vec4<f32> = u_xlat3;
  let x_261 : vec4<f32> = u_xlat4;
  let x_263 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) + vec3<f32>(x_261.y, x_261.z, x_261.w));
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat3;
  let x_269 : vec3<f32> = max(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_270 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_269.x, x_269.y, x_269.z);
  let x_272 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(x_272, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_278 : f32 = u_xlat22;
  u_xlat22 = (-(x_278) + 4.0f);
  let x_283 : f32 = u_xlat22;
  u_xlatu22 = u32(x_283);
  let x_287 : u32 = u_xlatu22;
  u_xlati22 = (bitcast<i32>(x_287) << bitcast<u32>(2i));
  let x_290 : vec3<f32> = vs_TEXCOORD1;
  let x_292 : i32 = u_xlati22;
  let x_295 : i32 = u_xlati22;
  let x_299 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_292 + 1i) / 4i)][((x_295 + 1i) % 4i)];
  let x_301 : vec3<f32> = (vec3<f32>(x_290.y, x_290.y, x_290.y) * vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : i32 = u_xlati22;
  let x_306 : i32 = u_xlati22;
  let x_309 : vec4<f32> = x_158.x_MainLightWorldToShadow[(x_304 / 4i)][(x_306 % 4i)];
  let x_311 : vec3<f32> = vs_TEXCOORD1;
  let x_314 : vec4<f32> = u_xlat3;
  let x_316 : vec3<f32> = ((vec3<f32>(x_309.x, x_309.y, x_309.z) * vec3<f32>(x_311.x, x_311.x, x_311.x)) + vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_319 : i32 = u_xlati22;
  let x_322 : i32 = u_xlati22;
  let x_326 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_319 + 2i) / 4i)][((x_322 + 2i) % 4i)];
  let x_328 : vec3<f32> = vs_TEXCOORD1;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.z, x_328.z, x_328.z)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec4<f32> = u_xlat3;
  let x_338 : i32 = u_xlati22;
  let x_341 : i32 = u_xlati22;
  let x_345 : vec4<f32> = x_158.x_MainLightWorldToShadow[((x_338 + 3i) / 4i)][((x_341 + 3i) % 4i)];
  let x_347 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_356 : vec2<f32> = vs_TEXCOORD7;
  let x_358 : f32 = x_27.x_GlobalMipBias.x;
  let x_359 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_356, x_358);
  u_xlat4 = x_359;
  let x_364 : vec2<f32> = vs_TEXCOORD7;
  let x_366 : f32 = x_27.x_GlobalMipBias.x;
  let x_367 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_364, x_366);
  let x_368 : vec3<f32> = vec3<f32>(x_367.x, x_367.y, x_367.z);
  let x_369 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_371 : vec4<f32> = u_xlat4;
  let x_375 : vec3<f32> = (vec3<f32>(x_371.x, x_371.y, x_371.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_376 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : vec3<f32> = u_xlat2;
  let x_379 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(x_378, vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : f32 = u_xlat22;
  u_xlat22 = (x_382 + 0.5f);
  let x_384 : f32 = u_xlat22;
  let x_386 : vec4<f32> = u_xlat5;
  let x_388 : vec3<f32> = (vec3<f32>(x_384, x_384, x_384) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : f32 = u_xlat4.w;
  u_xlat22 = max(x_392, 0.00009999999747378752f);
  let x_394 : vec4<f32> = u_xlat4;
  let x_396 : f32 = u_xlat22;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) / vec3<f32>(x_396, x_396, x_396));
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_403 : f32 = x_158.x_MainLightShadowParams.y;
  u_xlatb22 = (0.0f < x_403);
  let x_405 : bool = u_xlatb22;
  if (x_405) {
    let x_409 : f32 = x_158.x_MainLightShadowParams.y;
    u_xlatb22 = (x_409 == 1.0f);
    let x_411 : bool = u_xlatb22;
    if (x_411) {
      let x_414 : vec4<f32> = u_xlat3;
      let x_418 : vec4<f32> = x_158.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_414.x, x_414.y, x_414.x, x_414.y) + x_418);
      let x_422 : vec4<f32> = u_xlat5;
      let x_423 : vec2<f32> = vec2<f32>(x_422.x, x_422.y);
      let x_425 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_423.x, x_423.y, x_425);
      let x_437 : vec3<f32> = txVec0;
      let x_439 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_437.xy, x_437.z);
      u_xlat6.x = x_439;
      let x_442 : vec4<f32> = u_xlat5;
      let x_443 : vec2<f32> = vec2<f32>(x_442.z, x_442.w);
      let x_445 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_443.x, x_443.y, x_445);
      let x_452 : vec3<f32> = txVec1;
      let x_454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_452.xy, x_452.z);
      u_xlat6.y = x_454;
      let x_456 : vec4<f32> = u_xlat3;
      let x_460 : vec4<f32> = x_158.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_456.x, x_456.y, x_456.x, x_456.y) + x_460);
      let x_463 : vec4<f32> = u_xlat5;
      let x_464 : vec2<f32> = vec2<f32>(x_463.x, x_463.y);
      let x_466 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_464.x, x_464.y, x_466);
      let x_473 : vec3<f32> = txVec2;
      let x_475 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_473.xy, x_473.z);
      u_xlat6.z = x_475;
      let x_478 : vec4<f32> = u_xlat5;
      let x_479 : vec2<f32> = vec2<f32>(x_478.z, x_478.w);
      let x_481 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_479.x, x_479.y, x_481);
      let x_488 : vec3<f32> = txVec3;
      let x_490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_488.xy, x_488.z);
      u_xlat6.w = x_490;
      let x_492 : vec4<f32> = u_xlat6;
      u_xlat22 = dot(x_492, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_499 : f32 = x_158.x_MainLightShadowParams.y;
      u_xlatb66 = (x_499 == 2.0f);
      let x_501 : bool = u_xlatb66;
      if (x_501) {
        let x_504 : vec4<f32> = u_xlat3;
        let x_508 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_512 : vec2<f32> = ((vec2<f32>(x_504.x, x_504.y) * vec2<f32>(x_508.z, x_508.w)) + vec2<f32>(0.5f, 0.5f));
        let x_513 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
        let x_515 : vec4<f32> = u_xlat5;
        let x_517 : vec2<f32> = floor(vec2<f32>(x_515.x, x_515.y));
        let x_518 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_517.x, x_517.y, x_518.z, x_518.w);
        let x_522 : vec4<f32> = u_xlat3;
        let x_525 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_528 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_522.x, x_522.y) * vec2<f32>(x_525.z, x_525.w)) + -(vec2<f32>(x_528.x, x_528.y)));
        let x_532 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_532.x, x_532.x, x_532.y, x_532.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_537 : vec4<f32> = u_xlat6;
        let x_539 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_537.x, x_537.x, x_537.z, x_537.z) * vec4<f32>(x_539.x, x_539.x, x_539.z, x_539.z));
        let x_542 : vec4<f32> = u_xlat7;
        let x_546 : vec2<f32> = (vec2<f32>(x_542.y, x_542.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_547 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_546.x, x_547.y, x_546.y, x_547.w);
        let x_549 : vec4<f32> = u_xlat7;
        let x_552 : vec2<f32> = u_xlat49;
        let x_554 : vec2<f32> = ((vec2<f32>(x_549.x, x_549.z) * vec2<f32>(0.5f, 0.5f)) + -(x_552));
        let x_555 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_558 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_558) + vec2<f32>(1.0f, 1.0f));
        let x_563 : vec2<f32> = u_xlat49;
        let x_565 : vec2<f32> = min(x_563, vec2<f32>(0.0f, 0.0f));
        let x_566 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_565.x, x_565.y, x_566.z, x_566.w);
        let x_568 : vec4<f32> = u_xlat8;
        let x_571 : vec4<f32> = u_xlat8;
        let x_574 : vec2<f32> = u_xlat51;
        let x_575 : vec2<f32> = ((-(vec2<f32>(x_568.x, x_568.y)) * vec2<f32>(x_571.x, x_571.y)) + x_574);
        let x_576 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_575.x, x_575.y, x_576.z, x_576.w);
        let x_578 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_578, vec2<f32>(0.0f, 0.0f));
        let x_580 : vec2<f32> = u_xlat49;
        let x_582 : vec2<f32> = u_xlat49;
        let x_584 : vec4<f32> = u_xlat6;
        u_xlat49 = ((-(x_580) * x_582) + vec2<f32>(x_584.y, x_584.w));
        let x_587 : vec4<f32> = u_xlat8;
        let x_589 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) + vec2<f32>(1.0f, 1.0f));
        let x_590 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
        let x_592 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_592 + vec2<f32>(1.0f, 1.0f));
        let x_595 : vec4<f32> = u_xlat7;
        let x_599 : vec2<f32> = (vec2<f32>(x_595.x, x_595.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_600 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_602 : vec2<f32> = u_xlat51;
        let x_603 : vec2<f32> = (x_602 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_604 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);
        let x_606 : vec4<f32> = u_xlat8;
        let x_608 : vec2<f32> = (vec2<f32>(x_606.x, x_606.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_609 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_612 : vec2<f32> = u_xlat49;
        let x_613 : vec2<f32> = (x_612 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_614 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
        let x_616 : vec4<f32> = u_xlat6;
        u_xlat49 = (vec2<f32>(x_616.y, x_616.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_620 : f32 = u_xlat8.x;
        u_xlat9.z = x_620;
        let x_623 : f32 = u_xlat49.x;
        u_xlat9.w = x_623;
        let x_626 : f32 = u_xlat10.x;
        u_xlat7.z = x_626;
        let x_629 : f32 = u_xlat6.x;
        u_xlat7.w = x_629;
        let x_632 : vec4<f32> = u_xlat7;
        let x_634 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_632.z, x_632.w, x_632.x, x_632.z) + vec4<f32>(x_634.z, x_634.w, x_634.x, x_634.z));
        let x_638 : f32 = u_xlat9.y;
        u_xlat8.z = x_638;
        let x_641 : f32 = u_xlat49.y;
        u_xlat8.w = x_641;
        let x_644 : f32 = u_xlat7.y;
        u_xlat10.z = x_644;
        let x_647 : f32 = u_xlat6.z;
        u_xlat10.w = x_647;
        let x_649 : vec4<f32> = u_xlat8;
        let x_651 : vec4<f32> = u_xlat10;
        let x_653 : vec3<f32> = (vec3<f32>(x_649.z, x_649.y, x_649.w) + vec3<f32>(x_651.z, x_651.y, x_651.w));
        let x_654 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
        let x_656 : vec4<f32> = u_xlat7;
        let x_658 : vec4<f32> = u_xlat11;
        let x_660 : vec3<f32> = (vec3<f32>(x_656.x, x_656.z, x_656.w) / vec3<f32>(x_658.z, x_658.w, x_658.y));
        let x_661 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
        let x_663 : vec4<f32> = u_xlat7;
        let x_668 : vec3<f32> = (vec3<f32>(x_663.x, x_663.y, x_663.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_669 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_668.x, x_668.y, x_668.z, x_669.w);
        let x_671 : vec4<f32> = u_xlat10;
        let x_673 : vec4<f32> = u_xlat6;
        let x_675 : vec3<f32> = (vec3<f32>(x_671.z, x_671.y, x_671.w) / vec3<f32>(x_673.x, x_673.y, x_673.z));
        let x_676 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
        let x_678 : vec4<f32> = u_xlat8;
        let x_680 : vec3<f32> = (vec3<f32>(x_678.x, x_678.y, x_678.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_681 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
        let x_683 : vec4<f32> = u_xlat7;
        let x_686 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_688 : vec3<f32> = (vec3<f32>(x_683.y, x_683.x, x_683.z) * vec3<f32>(x_686.x, x_686.x, x_686.x));
        let x_689 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat8;
        let x_694 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_696 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) * vec3<f32>(x_694.y, x_694.y, x_694.y));
        let x_697 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
        let x_700 : f32 = u_xlat8.x;
        u_xlat7.w = x_700;
        let x_702 : vec4<f32> = u_xlat5;
        let x_705 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_708 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_702.x, x_702.y, x_702.x, x_702.y) * vec4<f32>(x_705.x, x_705.y, x_705.x, x_705.y)) + vec4<f32>(x_708.y, x_708.w, x_708.x, x_708.w));
        let x_711 : vec4<f32> = u_xlat5;
        let x_714 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_717 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_711.x, x_711.y) * vec2<f32>(x_714.x, x_714.y)) + vec2<f32>(x_717.z, x_717.w));
        let x_721 : f32 = u_xlat7.y;
        u_xlat8.w = x_721;
        let x_723 : vec4<f32> = u_xlat8;
        let x_724 : vec2<f32> = vec2<f32>(x_723.y, x_723.z);
        let x_725 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_725.x, x_724.x, x_725.z, x_724.y);
        let x_727 : vec4<f32> = u_xlat5;
        let x_730 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_733 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_727.x, x_727.y, x_727.x, x_727.y) * vec4<f32>(x_730.x, x_730.y, x_730.x, x_730.y)) + vec4<f32>(x_733.x, x_733.y, x_733.z, x_733.y));
        let x_736 : vec4<f32> = u_xlat5;
        let x_739 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_742 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y) * vec4<f32>(x_739.x, x_739.y, x_739.x, x_739.y)) + vec4<f32>(x_742.w, x_742.y, x_742.w, x_742.z));
        let x_745 : vec4<f32> = u_xlat5;
        let x_748 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_751 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_745.x, x_745.y, x_745.x, x_745.y) * vec4<f32>(x_748.x, x_748.y, x_748.x, x_748.y)) + vec4<f32>(x_751.x, x_751.w, x_751.z, x_751.w));
        let x_755 : vec4<f32> = u_xlat6;
        let x_757 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_755.x, x_755.x, x_755.x, x_755.y) * vec4<f32>(x_757.z, x_757.w, x_757.y, x_757.z));
        let x_761 : vec4<f32> = u_xlat6;
        let x_763 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_761.y, x_761.y, x_761.z, x_761.z) * x_763);
        let x_766 : f32 = u_xlat6.z;
        let x_768 : f32 = u_xlat11.y;
        u_xlat66 = (x_766 * x_768);
        let x_771 : vec4<f32> = u_xlat9;
        let x_772 : vec2<f32> = vec2<f32>(x_771.x, x_771.y);
        let x_774 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_772.x, x_772.y, x_774);
        let x_781 : vec3<f32> = txVec4;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_781.xy, x_781.z);
        u_xlat1.x = x_783;
        let x_786 : vec4<f32> = u_xlat9;
        let x_787 : vec2<f32> = vec2<f32>(x_786.z, x_786.w);
        let x_789 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_787.x, x_787.y, x_789);
        let x_797 : vec3<f32> = txVec5;
        let x_799 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_797.xy, x_797.z);
        u_xlat68 = x_799;
        let x_800 : f32 = u_xlat68;
        let x_802 : f32 = u_xlat12.y;
        u_xlat68 = (x_800 * x_802);
        let x_805 : f32 = u_xlat12.x;
        let x_807 : f32 = u_xlat1.x;
        let x_809 : f32 = u_xlat68;
        u_xlat1.x = ((x_805 * x_807) + x_809);
        let x_813 : vec2<f32> = u_xlat49;
        let x_815 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_813.x, x_813.y, x_815);
        let x_822 : vec3<f32> = txVec6;
        let x_824 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_822.xy, x_822.z);
        u_xlat68 = x_824;
        let x_826 : f32 = u_xlat12.z;
        let x_827 : f32 = u_xlat68;
        let x_830 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_826 * x_827) + x_830);
        let x_834 : vec4<f32> = u_xlat8;
        let x_835 : vec2<f32> = vec2<f32>(x_834.x, x_834.y);
        let x_837 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_835.x, x_835.y, x_837);
        let x_844 : vec3<f32> = txVec7;
        let x_846 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_844.xy, x_844.z);
        u_xlat68 = x_846;
        let x_848 : f32 = u_xlat12.w;
        let x_849 : f32 = u_xlat68;
        let x_852 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_848 * x_849) + x_852);
        let x_856 : vec4<f32> = u_xlat10;
        let x_857 : vec2<f32> = vec2<f32>(x_856.x, x_856.y);
        let x_859 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_857.x, x_857.y, x_859);
        let x_866 : vec3<f32> = txVec8;
        let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_866.xy, x_866.z);
        u_xlat68 = x_868;
        let x_870 : f32 = u_xlat13.x;
        let x_871 : f32 = u_xlat68;
        let x_874 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_870 * x_871) + x_874);
        let x_878 : vec4<f32> = u_xlat10;
        let x_879 : vec2<f32> = vec2<f32>(x_878.z, x_878.w);
        let x_881 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_879.x, x_879.y, x_881);
        let x_888 : vec3<f32> = txVec9;
        let x_890 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_888.xy, x_888.z);
        u_xlat68 = x_890;
        let x_892 : f32 = u_xlat13.y;
        let x_893 : f32 = u_xlat68;
        let x_896 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_892 * x_893) + x_896);
        let x_900 : vec4<f32> = u_xlat8;
        let x_901 : vec2<f32> = vec2<f32>(x_900.z, x_900.w);
        let x_903 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_901.x, x_901.y, x_903);
        let x_910 : vec3<f32> = txVec10;
        let x_912 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_910.xy, x_910.z);
        u_xlat68 = x_912;
        let x_914 : f32 = u_xlat13.z;
        let x_915 : f32 = u_xlat68;
        let x_918 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_914 * x_915) + x_918);
        let x_922 : vec4<f32> = u_xlat7;
        let x_923 : vec2<f32> = vec2<f32>(x_922.x, x_922.y);
        let x_925 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_923.x, x_923.y, x_925);
        let x_932 : vec3<f32> = txVec11;
        let x_934 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_932.xy, x_932.z);
        u_xlat68 = x_934;
        let x_936 : f32 = u_xlat13.w;
        let x_937 : f32 = u_xlat68;
        let x_940 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_936 * x_937) + x_940);
        let x_944 : vec4<f32> = u_xlat7;
        let x_945 : vec2<f32> = vec2<f32>(x_944.z, x_944.w);
        let x_947 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_945.x, x_945.y, x_947);
        let x_954 : vec3<f32> = txVec12;
        let x_956 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_954.xy, x_954.z);
        u_xlat68 = x_956;
        let x_957 : f32 = u_xlat66;
        let x_958 : f32 = u_xlat68;
        let x_961 : f32 = u_xlat1.x;
        u_xlat22 = ((x_957 * x_958) + x_961);
      } else {
        let x_964 : vec4<f32> = u_xlat3;
        let x_967 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_970 : vec2<f32> = ((vec2<f32>(x_964.x, x_964.y) * vec2<f32>(x_967.z, x_967.w)) + vec2<f32>(0.5f, 0.5f));
        let x_971 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec4<f32> = u_xlat5;
        let x_975 : vec2<f32> = floor(vec2<f32>(x_973.x, x_973.y));
        let x_976 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat3;
        let x_981 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_984 : vec4<f32> = u_xlat5;
        u_xlat49 = ((vec2<f32>(x_978.x, x_978.y) * vec2<f32>(x_981.z, x_981.w)) + -(vec2<f32>(x_984.x, x_984.y)));
        let x_988 : vec2<f32> = u_xlat49;
        u_xlat6 = (vec4<f32>(x_988.x, x_988.x, x_988.y, x_988.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_991 : vec4<f32> = u_xlat6;
        let x_993 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_991.x, x_991.x, x_991.z, x_991.z) * vec4<f32>(x_993.x, x_993.x, x_993.z, x_993.z));
        let x_996 : vec4<f32> = u_xlat7;
        let x_1000 : vec2<f32> = (vec2<f32>(x_996.y, x_996.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1001 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1001.x, x_1000.x, x_1001.z, x_1000.y);
        let x_1003 : vec4<f32> = u_xlat7;
        let x_1006 : vec2<f32> = u_xlat49;
        let x_1008 : vec2<f32> = ((vec2<f32>(x_1003.x, x_1003.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1006));
        let x_1009 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1008.x, x_1009.y, x_1008.y, x_1009.w);
        let x_1011 : vec2<f32> = u_xlat49;
        let x_1013 : vec2<f32> = (-(x_1011) + vec2<f32>(1.0f, 1.0f));
        let x_1014 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1013.x, x_1013.y, x_1014.z, x_1014.w);
        let x_1016 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1016, vec2<f32>(0.0f, 0.0f));
        let x_1018 : vec2<f32> = u_xlat51;
        let x_1020 : vec2<f32> = u_xlat51;
        let x_1022 : vec4<f32> = u_xlat7;
        let x_1024 : vec2<f32> = ((-(x_1018) * x_1020) + vec2<f32>(x_1022.x, x_1022.y));
        let x_1025 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1024.x, x_1024.y, x_1025.z, x_1025.w);
        let x_1027 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1027, vec2<f32>(0.0f, 0.0f));
        let x_1030 : vec2<f32> = u_xlat51;
        let x_1032 : vec2<f32> = u_xlat51;
        let x_1034 : vec4<f32> = u_xlat6;
        let x_1036 : vec2<f32> = ((-(x_1030) * x_1032) + vec2<f32>(x_1034.y, x_1034.w));
        let x_1037 : vec3<f32> = u_xlat28;
        u_xlat28 = vec3<f32>(x_1036.x, x_1037.y, x_1036.y);
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1042 : vec2<f32> = (vec2<f32>(x_1039.x, x_1039.y) + vec2<f32>(2.0f, 2.0f));
        let x_1043 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
        let x_1045 : vec3<f32> = u_xlat28;
        let x_1047 : vec2<f32> = (vec2<f32>(x_1045.x, x_1045.z) + vec2<f32>(2.0f, 2.0f));
        let x_1048 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1048.x, x_1047.x, x_1048.z, x_1047.y);
        let x_1051 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1051 * 0.08163200318813323975f);
        let x_1055 : vec4<f32> = u_xlat6;
        let x_1058 : vec3<f32> = (vec3<f32>(x_1055.z, x_1055.x, x_1055.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1059 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1064 : vec2<f32> = (vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1065 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1064.x, x_1064.y, x_1065.z, x_1065.w);
        let x_1068 : f32 = u_xlat10.y;
        u_xlat9.x = x_1068;
        let x_1070 : vec2<f32> = u_xlat49;
        let x_1077 : vec2<f32> = ((vec2<f32>(x_1070.x, x_1070.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1078 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1078.x, x_1077.x, x_1078.z, x_1077.y);
        let x_1080 : vec2<f32> = u_xlat49;
        let x_1084 : vec2<f32> = ((vec2<f32>(x_1080.x, x_1080.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1085 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1084.x, x_1085.y, x_1084.y, x_1085.w);
        let x_1088 : f32 = u_xlat6.x;
        u_xlat7.y = x_1088;
        let x_1091 : f32 = u_xlat8.y;
        u_xlat7.w = x_1091;
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1094 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1093 + x_1094);
        let x_1096 : vec2<f32> = u_xlat49;
        let x_1099 : vec2<f32> = ((vec2<f32>(x_1096.y, x_1096.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1100 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1100.x, x_1099.x, x_1100.z, x_1099.y);
        let x_1102 : vec2<f32> = u_xlat49;
        let x_1105 : vec2<f32> = ((vec2<f32>(x_1102.y, x_1102.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1106 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1105.x, x_1106.y, x_1105.y, x_1106.w);
        let x_1109 : f32 = u_xlat6.y;
        u_xlat8.y = x_1109;
        let x_1111 : vec4<f32> = u_xlat8;
        let x_1112 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1111 + x_1112);
        let x_1114 : vec4<f32> = u_xlat7;
        let x_1115 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1114 / x_1115);
        let x_1117 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1117 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1123 : vec4<f32> = u_xlat8;
        let x_1124 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1123 / x_1124);
        let x_1126 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1126 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1131 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1128.w, x_1128.x, x_1128.y, x_1128.z) * vec4<f32>(x_1131.x, x_1131.x, x_1131.x, x_1131.x));
        let x_1134 : vec4<f32> = u_xlat8;
        let x_1137 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1134.x, x_1134.w, x_1134.y, x_1134.z) * vec4<f32>(x_1137.y, x_1137.y, x_1137.y, x_1137.y));
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1141 : vec3<f32> = vec3<f32>(x_1140.y, x_1140.z, x_1140.w);
        let x_1142 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1141.x, x_1142.y, x_1141.y, x_1141.z);
        let x_1145 : f32 = u_xlat8.x;
        u_xlat10.y = x_1145;
        let x_1147 : vec4<f32> = u_xlat5;
        let x_1150 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1153 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y) * vec4<f32>(x_1150.x, x_1150.y, x_1150.x, x_1150.y)) + vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1153.y));
        let x_1156 : vec4<f32> = u_xlat5;
        let x_1159 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1162 : vec4<f32> = u_xlat10;
        u_xlat49 = ((vec2<f32>(x_1156.x, x_1156.y) * vec2<f32>(x_1159.x, x_1159.y)) + vec2<f32>(x_1162.w, x_1162.y));
        let x_1166 : f32 = u_xlat10.y;
        u_xlat7.y = x_1166;
        let x_1169 : f32 = u_xlat8.z;
        u_xlat10.y = x_1169;
        let x_1171 : vec4<f32> = u_xlat5;
        let x_1174 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1171.x, x_1171.y, x_1171.x, x_1171.y) * vec4<f32>(x_1174.x, x_1174.y, x_1174.x, x_1174.y)) + vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1177.y));
        let x_1180 : vec4<f32> = u_xlat5;
        let x_1183 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat10;
        let x_1188 : vec2<f32> = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1183.x, x_1183.y)) + vec2<f32>(x_1186.w, x_1186.y));
        let x_1189 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
        let x_1192 : f32 = u_xlat10.y;
        u_xlat7.z = x_1192;
        let x_1195 : vec4<f32> = u_xlat5;
        let x_1198 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y) * vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y)) + vec4<f32>(x_1201.x, x_1201.y, x_1201.x, x_1201.z));
        let x_1205 : f32 = u_xlat8.w;
        u_xlat10.y = x_1205;
        let x_1208 : vec4<f32> = u_xlat5;
        let x_1211 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1214 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1208.x, x_1208.y, x_1208.x, x_1208.y) * vec4<f32>(x_1211.x, x_1211.y, x_1211.x, x_1211.y)) + vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1214.y));
        let x_1218 : vec4<f32> = u_xlat5;
        let x_1221 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1224 : vec4<f32> = u_xlat10;
        u_xlat29 = ((vec2<f32>(x_1218.x, x_1218.y) * vec2<f32>(x_1221.x, x_1221.y)) + vec2<f32>(x_1224.w, x_1224.y));
        let x_1228 : f32 = u_xlat10.y;
        u_xlat7.w = x_1228;
        let x_1231 : vec4<f32> = u_xlat5;
        let x_1234 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1237 : vec4<f32> = u_xlat7;
        u_xlat57 = ((vec2<f32>(x_1231.x, x_1231.y) * vec2<f32>(x_1234.x, x_1234.y)) + vec2<f32>(x_1237.x, x_1237.w));
        let x_1240 : vec4<f32> = u_xlat10;
        let x_1241 : vec3<f32> = vec3<f32>(x_1240.x, x_1240.z, x_1240.w);
        let x_1242 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1241.x, x_1242.y, x_1241.y, x_1241.z);
        let x_1244 : vec4<f32> = u_xlat5;
        let x_1247 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1250 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.y) * vec4<f32>(x_1247.x, x_1247.y, x_1247.x, x_1247.y)) + vec4<f32>(x_1250.x, x_1250.y, x_1250.z, x_1250.y));
        let x_1254 : vec4<f32> = u_xlat5;
        let x_1257 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1260 : vec4<f32> = u_xlat8;
        u_xlat52 = ((vec2<f32>(x_1254.x, x_1254.y) * vec2<f32>(x_1257.x, x_1257.y)) + vec2<f32>(x_1260.w, x_1260.y));
        let x_1264 : f32 = u_xlat7.x;
        u_xlat8.x = x_1264;
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_158.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat8;
        let x_1274 : vec2<f32> = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.x, x_1272.y));
        let x_1275 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1274.x, x_1274.y, x_1275.z, x_1275.w);
        let x_1278 : vec4<f32> = u_xlat6;
        let x_1280 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1278.x, x_1278.x, x_1278.x, x_1278.x) * x_1280);
        let x_1283 : vec4<f32> = u_xlat6;
        let x_1285 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1283.y, x_1283.y, x_1283.y, x_1283.y) * x_1285);
        let x_1288 : vec4<f32> = u_xlat6;
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1288.z, x_1288.z, x_1288.z, x_1288.z) * x_1290);
        let x_1292 : vec4<f32> = u_xlat6;
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1292.w, x_1292.w, x_1292.w, x_1292.w) * x_1294);
        let x_1297 : vec4<f32> = u_xlat11;
        let x_1298 : vec2<f32> = vec2<f32>(x_1297.x, x_1297.y);
        let x_1300 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1298.x, x_1298.y, x_1300);
        let x_1307 : vec3<f32> = txVec13;
        let x_1309 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1307.xy, x_1307.z);
        u_xlat66 = x_1309;
        let x_1311 : vec4<f32> = u_xlat11;
        let x_1312 : vec2<f32> = vec2<f32>(x_1311.z, x_1311.w);
        let x_1314 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1312.x, x_1312.y, x_1314);
        let x_1321 : vec3<f32> = txVec14;
        let x_1323 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1321.xy, x_1321.z);
        u_xlat1.x = x_1323;
        let x_1326 : f32 = u_xlat1.x;
        let x_1328 : f32 = u_xlat16.y;
        u_xlat1.x = (x_1326 * x_1328);
        let x_1332 : f32 = u_xlat16.x;
        let x_1333 : f32 = u_xlat66;
        let x_1336 : f32 = u_xlat1.x;
        u_xlat66 = ((x_1332 * x_1333) + x_1336);
        let x_1339 : vec2<f32> = u_xlat49;
        let x_1341 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec15;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1348.xy, x_1348.z);
        u_xlat1.x = x_1350;
        let x_1353 : f32 = u_xlat16.z;
        let x_1355 : f32 = u_xlat1.x;
        let x_1357 : f32 = u_xlat66;
        u_xlat66 = ((x_1353 * x_1355) + x_1357);
        let x_1360 : vec4<f32> = u_xlat14;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.x, x_1360.y);
        let x_1363 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1370 : vec3<f32> = txVec16;
        let x_1372 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1370.xy, x_1370.z);
        u_xlat1.x = x_1372;
        let x_1375 : f32 = u_xlat16.w;
        let x_1377 : f32 = u_xlat1.x;
        let x_1379 : f32 = u_xlat66;
        u_xlat66 = ((x_1375 * x_1377) + x_1379);
        let x_1382 : vec4<f32> = u_xlat12;
        let x_1383 : vec2<f32> = vec2<f32>(x_1382.x, x_1382.y);
        let x_1385 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec17;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1392.xy, x_1392.z);
        u_xlat1.x = x_1394;
        let x_1397 : f32 = u_xlat17.x;
        let x_1399 : f32 = u_xlat1.x;
        let x_1401 : f32 = u_xlat66;
        u_xlat66 = ((x_1397 * x_1399) + x_1401);
        let x_1404 : vec4<f32> = u_xlat12;
        let x_1405 : vec2<f32> = vec2<f32>(x_1404.z, x_1404.w);
        let x_1407 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1405.x, x_1405.y, x_1407);
        let x_1414 : vec3<f32> = txVec18;
        let x_1416 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1414.xy, x_1414.z);
        u_xlat1.x = x_1416;
        let x_1419 : f32 = u_xlat17.y;
        let x_1421 : f32 = u_xlat1.x;
        let x_1423 : f32 = u_xlat66;
        u_xlat66 = ((x_1419 * x_1421) + x_1423);
        let x_1426 : vec4<f32> = u_xlat13;
        let x_1427 : vec2<f32> = vec2<f32>(x_1426.x, x_1426.y);
        let x_1429 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1427.x, x_1427.y, x_1429);
        let x_1436 : vec3<f32> = txVec19;
        let x_1438 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1436.xy, x_1436.z);
        u_xlat1.x = x_1438;
        let x_1441 : f32 = u_xlat17.z;
        let x_1443 : f32 = u_xlat1.x;
        let x_1445 : f32 = u_xlat66;
        u_xlat66 = ((x_1441 * x_1443) + x_1445);
        let x_1448 : vec4<f32> = u_xlat14;
        let x_1449 : vec2<f32> = vec2<f32>(x_1448.z, x_1448.w);
        let x_1451 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1449.x, x_1449.y, x_1451);
        let x_1458 : vec3<f32> = txVec20;
        let x_1460 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1458.xy, x_1458.z);
        u_xlat1.x = x_1460;
        let x_1463 : f32 = u_xlat17.w;
        let x_1465 : f32 = u_xlat1.x;
        let x_1467 : f32 = u_xlat66;
        u_xlat66 = ((x_1463 * x_1465) + x_1467);
        let x_1470 : vec4<f32> = u_xlat15;
        let x_1471 : vec2<f32> = vec2<f32>(x_1470.x, x_1470.y);
        let x_1473 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1471.x, x_1471.y, x_1473);
        let x_1480 : vec3<f32> = txVec21;
        let x_1482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1480.xy, x_1480.z);
        u_xlat1.x = x_1482;
        let x_1485 : f32 = u_xlat18.x;
        let x_1487 : f32 = u_xlat1.x;
        let x_1489 : f32 = u_xlat66;
        u_xlat66 = ((x_1485 * x_1487) + x_1489);
        let x_1492 : vec4<f32> = u_xlat15;
        let x_1493 : vec2<f32> = vec2<f32>(x_1492.z, x_1492.w);
        let x_1495 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1493.x, x_1493.y, x_1495);
        let x_1502 : vec3<f32> = txVec22;
        let x_1504 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1502.xy, x_1502.z);
        u_xlat1.x = x_1504;
        let x_1507 : f32 = u_xlat18.y;
        let x_1509 : f32 = u_xlat1.x;
        let x_1511 : f32 = u_xlat66;
        u_xlat66 = ((x_1507 * x_1509) + x_1511);
        let x_1514 : vec2<f32> = u_xlat29;
        let x_1516 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1514.x, x_1514.y, x_1516);
        let x_1523 : vec3<f32> = txVec23;
        let x_1525 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1523.xy, x_1523.z);
        u_xlat1.x = x_1525;
        let x_1528 : f32 = u_xlat18.z;
        let x_1530 : f32 = u_xlat1.x;
        let x_1532 : f32 = u_xlat66;
        u_xlat66 = ((x_1528 * x_1530) + x_1532);
        let x_1535 : vec2<f32> = u_xlat57;
        let x_1537 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1535.x, x_1535.y, x_1537);
        let x_1544 : vec3<f32> = txVec24;
        let x_1546 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1544.xy, x_1544.z);
        u_xlat1.x = x_1546;
        let x_1549 : f32 = u_xlat18.w;
        let x_1551 : f32 = u_xlat1.x;
        let x_1553 : f32 = u_xlat66;
        u_xlat66 = ((x_1549 * x_1551) + x_1553);
        let x_1556 : vec4<f32> = u_xlat10;
        let x_1557 : vec2<f32> = vec2<f32>(x_1556.x, x_1556.y);
        let x_1559 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec25;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1566.xy, x_1566.z);
        u_xlat1.x = x_1568;
        let x_1571 : f32 = u_xlat6.x;
        let x_1573 : f32 = u_xlat1.x;
        let x_1575 : f32 = u_xlat66;
        u_xlat66 = ((x_1571 * x_1573) + x_1575);
        let x_1578 : vec4<f32> = u_xlat10;
        let x_1579 : vec2<f32> = vec2<f32>(x_1578.z, x_1578.w);
        let x_1581 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1579.x, x_1579.y, x_1581);
        let x_1588 : vec3<f32> = txVec26;
        let x_1590 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1588.xy, x_1588.z);
        u_xlat1.x = x_1590;
        let x_1593 : f32 = u_xlat6.y;
        let x_1595 : f32 = u_xlat1.x;
        let x_1597 : f32 = u_xlat66;
        u_xlat66 = ((x_1593 * x_1595) + x_1597);
        let x_1600 : vec2<f32> = u_xlat52;
        let x_1602 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1600.x, x_1600.y, x_1602);
        let x_1609 : vec3<f32> = txVec27;
        let x_1611 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1609.xy, x_1609.z);
        u_xlat1.x = x_1611;
        let x_1614 : f32 = u_xlat6.z;
        let x_1616 : f32 = u_xlat1.x;
        let x_1618 : f32 = u_xlat66;
        u_xlat66 = ((x_1614 * x_1616) + x_1618);
        let x_1621 : vec4<f32> = u_xlat5;
        let x_1622 : vec2<f32> = vec2<f32>(x_1621.x, x_1621.y);
        let x_1624 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1622.x, x_1622.y, x_1624);
        let x_1631 : vec3<f32> = txVec28;
        let x_1633 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1631.xy, x_1631.z);
        u_xlat1.x = x_1633;
        let x_1636 : f32 = u_xlat6.w;
        let x_1638 : f32 = u_xlat1.x;
        let x_1640 : f32 = u_xlat66;
        u_xlat22 = ((x_1636 * x_1638) + x_1640);
      }
    }
  } else {
    let x_1644 : vec4<f32> = u_xlat3;
    let x_1645 : vec2<f32> = vec2<f32>(x_1644.x, x_1644.y);
    let x_1647 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1645.x, x_1645.y, x_1647);
    let x_1654 : vec3<f32> = txVec29;
    let x_1656 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1654.xy, x_1654.z);
    u_xlat22 = x_1656;
  }
  let x_1658 : f32 = x_158.x_MainLightShadowParams.x;
  u_xlat66 = (-(x_1658) + 1.0f);
  let x_1661 : f32 = u_xlat22;
  let x_1663 : f32 = x_158.x_MainLightShadowParams.x;
  let x_1665 : f32 = u_xlat66;
  u_xlat22 = ((x_1661 * x_1663) + x_1665);
  let x_1668 : f32 = u_xlat3.z;
  u_xlatb66 = (0.0f >= x_1668);
  let x_1672 : f32 = u_xlat3.z;
  u_xlatb1 = (x_1672 >= 1.0f);
  let x_1674 : bool = u_xlatb66;
  let x_1675 : bool = u_xlatb1;
  u_xlatb66 = (x_1674 | x_1675);
  let x_1677 : bool = u_xlatb66;
  let x_1678 : f32 = u_xlat22;
  u_xlat22 = select(x_1678, 1.0f, x_1677);
  let x_1680 : vec3<f32> = vs_TEXCOORD1;
  let x_1683 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_1685 : vec3<f32> = (x_1680 + -(x_1683));
  let x_1686 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1686.w);
  let x_1688 : vec4<f32> = u_xlat3;
  let x_1690 : vec4<f32> = u_xlat3;
  u_xlat66 = dot(vec3<f32>(x_1688.x, x_1688.y, x_1688.z), vec3<f32>(x_1690.x, x_1690.y, x_1690.z));
  let x_1693 : f32 = u_xlat66;
  let x_1695 : f32 = x_158.x_MainLightShadowParams.z;
  let x_1698 : f32 = x_158.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_1693 * x_1695) + x_1698);
  let x_1702 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1702, 0.0f, 1.0f);
  let x_1705 : f32 = u_xlat22;
  u_xlat68 = (-(x_1705) + 1.0f);
  let x_1709 : f32 = u_xlat1.x;
  let x_1710 : f32 = u_xlat68;
  let x_1712 : f32 = u_xlat22;
  u_xlat22 = ((x_1709 * x_1710) + x_1712);
  let x_1714 : f32 = u_xlat22;
  let x_1720 : f32 = x_1718.unity_LightData.z;
  u_xlat22 = (x_1714 * x_1720);
  let x_1722 : f32 = u_xlat22;
  let x_1725 : vec4<f32> = x_27.x_MainLightColor;
  let x_1727 : vec3<f32> = (vec3<f32>(x_1722, x_1722, x_1722) * vec3<f32>(x_1725.x, x_1725.y, x_1725.z));
  let x_1728 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1727.x, x_1727.y, x_1727.z, x_1728.w);
  let x_1730 : vec3<f32> = u_xlat2;
  let x_1732 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat22 = dot(x_1730, vec3<f32>(x_1732.x, x_1732.y, x_1732.z));
  let x_1735 : f32 = u_xlat22;
  u_xlat22 = clamp(x_1735, 0.0f, 1.0f);
  let x_1737 : f32 = u_xlat22;
  let x_1739 : vec4<f32> = u_xlat3;
  let x_1741 : vec3<f32> = (vec3<f32>(x_1737, x_1737, x_1737) * vec3<f32>(x_1739.x, x_1739.y, x_1739.z));
  let x_1742 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1741.x, x_1741.y, x_1741.z, x_1742.w);
  let x_1744 : vec4<f32> = u_xlat1;
  let x_1746 : vec4<f32> = u_xlat3;
  let x_1748 : vec3<f32> = (vec3<f32>(x_1744.y, x_1744.z, x_1744.w) * vec3<f32>(x_1746.x, x_1746.y, x_1746.z));
  let x_1749 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1748.x, x_1748.y, x_1748.z, x_1749.w);
  let x_1752 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_1754 : f32 = x_1718.unity_LightData.y;
  u_xlat22 = min(x_1752, x_1754);
  let x_1756 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_1756));
  let x_1759 : f32 = u_xlat66;
  let x_1762 : f32 = x_158.x_AdditionalShadowFadeParams.x;
  let x_1765 : f32 = x_158.x_AdditionalShadowFadeParams.y;
  u_xlat66 = ((x_1759 * x_1762) + x_1765);
  let x_1767 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1767, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1779 : u32 = u_xlatu_loop_1;
    let x_1780 : u32 = u_xlatu22;
    if ((x_1779 < x_1780)) {
    } else {
      break;
    }
    let x_1783 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_1783 >> 2u);
    let x_1786 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_1786 & 3u));
    let x_1789 : u32 = u_xlatu68;
    let x_1792 : vec4<f32> = x_1718.unity_LightIndices[bitcast<i32>(x_1789)];
    let x_1802 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1807 : vec4<u32> = indexable[x_1802];
    u_xlat68 = dot(x_1792, bitcast<vec4<f32>>(x_1807));
    let x_1811 : f32 = u_xlat68;
    u_xlati68 = i32(x_1811);
    let x_1813 : vec3<f32> = vs_TEXCOORD1;
    let x_1824 : i32 = u_xlati68;
    let x_1826 : vec4<f32> = x_1823.x_AdditionalLightsPosition[x_1824];
    let x_1829 : i32 = u_xlati68;
    let x_1831 : vec4<f32> = x_1823.x_AdditionalLightsPosition[x_1829];
    let x_1833 : vec3<f32> = ((-(x_1813) * vec3<f32>(x_1826.w, x_1826.w, x_1826.w)) + vec3<f32>(x_1831.x, x_1831.y, x_1831.z));
    let x_1834 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1833.x, x_1833.y, x_1833.z, x_1834.w);
    let x_1837 : vec4<f32> = u_xlat6;
    let x_1839 : vec4<f32> = u_xlat6;
    u_xlat69 = dot(vec3<f32>(x_1837.x, x_1837.y, x_1837.z), vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
    let x_1842 : f32 = u_xlat69;
    u_xlat69 = max(x_1842, 0.00006103515625f);
    let x_1846 : f32 = u_xlat69;
    u_xlat70 = inverseSqrt(x_1846);
    let x_1848 : f32 = u_xlat70;
    let x_1850 : vec4<f32> = u_xlat6;
    let x_1852 : vec3<f32> = (vec3<f32>(x_1848, x_1848, x_1848) * vec3<f32>(x_1850.x, x_1850.y, x_1850.z));
    let x_1853 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1852.x, x_1852.y, x_1852.z, x_1853.w);
    let x_1855 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_1855);
    let x_1857 : f32 = u_xlat69;
    let x_1858 : i32 = u_xlati68;
    let x_1860 : f32 = x_1823.x_AdditionalLightsAttenuation[x_1858].x;
    u_xlat69 = (x_1857 * x_1860);
    let x_1862 : f32 = u_xlat69;
    let x_1864 : f32 = u_xlat69;
    u_xlat69 = ((-(x_1862) * x_1864) + 1.0f);
    let x_1867 : f32 = u_xlat69;
    u_xlat69 = max(x_1867, 0.0f);
    let x_1869 : f32 = u_xlat69;
    let x_1870 : f32 = u_xlat69;
    u_xlat69 = (x_1869 * x_1870);
    let x_1872 : f32 = u_xlat69;
    let x_1873 : f32 = u_xlat70;
    u_xlat69 = (x_1872 * x_1873);
    let x_1875 : i32 = u_xlati68;
    let x_1877 : vec4<f32> = x_1823.x_AdditionalLightsSpotDir[x_1875];
    let x_1879 : vec4<f32> = u_xlat6;
    u_xlat70 = dot(vec3<f32>(x_1877.x, x_1877.y, x_1877.z), vec3<f32>(x_1879.x, x_1879.y, x_1879.z));
    let x_1882 : f32 = u_xlat70;
    let x_1883 : i32 = u_xlati68;
    let x_1885 : f32 = x_1823.x_AdditionalLightsAttenuation[x_1883].z;
    let x_1887 : i32 = u_xlati68;
    let x_1889 : f32 = x_1823.x_AdditionalLightsAttenuation[x_1887].w;
    u_xlat70 = ((x_1882 * x_1885) + x_1889);
    let x_1891 : f32 = u_xlat70;
    u_xlat70 = clamp(x_1891, 0.0f, 1.0f);
    let x_1893 : f32 = u_xlat70;
    let x_1894 : f32 = u_xlat70;
    u_xlat70 = (x_1893 * x_1894);
    let x_1896 : f32 = u_xlat69;
    let x_1897 : f32 = u_xlat70;
    u_xlat69 = (x_1896 * x_1897);
    let x_1901 : i32 = u_xlati68;
    let x_1903 : f32 = x_158.x_AdditionalShadowParams[x_1901].w;
    u_xlati70 = i32(x_1903);
    let x_1906 : i32 = u_xlati70;
    u_xlatb71 = (x_1906 >= 0i);
    let x_1908 : bool = u_xlatb71;
    if (x_1908) {
      let x_1912 : i32 = u_xlati68;
      let x_1914 : f32 = x_158.x_AdditionalShadowParams[x_1912].z;
      u_xlatb71 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1914, x_1914, x_1914, x_1914))));
      let x_1918 : bool = u_xlatb71;
      if (x_1918) {
        let x_1922 : vec4<f32> = u_xlat6;
        let x_1925 : vec4<f32> = u_xlat6;
        let x_1928 : vec4<bool> = (abs(vec4<f32>(x_1922.z, x_1922.z, x_1922.y, x_1922.z)) >= abs(vec4<f32>(x_1925.x, x_1925.y, x_1925.x, x_1925.x)));
        let x_1930 : vec3<bool> = vec3<bool>(x_1928.x, x_1928.y, x_1928.z);
        let x_1931 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1930.x, x_1930.y, x_1930.z, x_1931.w);
        let x_1934 : bool = u_xlatb7.y;
        let x_1936 : bool = u_xlatb7.x;
        u_xlatb71 = (x_1934 & x_1936);
        let x_1938 : vec4<f32> = u_xlat6;
        let x_1941 : vec4<bool> = (-(vec4<f32>(x_1938.z, x_1938.y, x_1938.z, x_1938.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1942 : vec3<bool> = vec3<bool>(x_1941.x, x_1941.y, x_1941.w);
        let x_1943 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_1942.x, x_1942.y, x_1943.z, x_1942.z);
        let x_1946 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_1946);
        let x_1951 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_1951);
        let x_1956 : bool = u_xlatb7.w;
        u_xlat72 = select(0.0f, 1.0f, x_1956);
        let x_1959 : bool = u_xlatb7.z;
        if (x_1959) {
          let x_1964 : f32 = u_xlat7.y;
          x_1960 = x_1964;
        } else {
          let x_1966 : f32 = u_xlat72;
          x_1960 = x_1966;
        }
        let x_1967 : f32 = x_1960;
        u_xlat72 = x_1967;
        let x_1969 : bool = u_xlatb71;
        if (x_1969) {
          let x_1974 : f32 = u_xlat7.x;
          x_1970 = x_1974;
        } else {
          let x_1976 : f32 = u_xlat72;
          x_1970 = x_1976;
        }
        let x_1977 : f32 = x_1970;
        u_xlat71 = x_1977;
        let x_1978 : i32 = u_xlati68;
        let x_1980 : f32 = x_158.x_AdditionalShadowParams[x_1978].w;
        u_xlat72 = trunc(x_1980);
        let x_1982 : f32 = u_xlat71;
        let x_1983 : f32 = u_xlat72;
        u_xlat71 = (x_1982 + x_1983);
        let x_1985 : f32 = u_xlat71;
        u_xlati70 = i32(x_1985);
      }
      let x_1987 : i32 = u_xlati70;
      u_xlati70 = (x_1987 << bitcast<u32>(2i));
      let x_1989 : vec3<f32> = vs_TEXCOORD1;
      let x_1992 : i32 = u_xlati70;
      let x_1995 : i32 = u_xlati70;
      let x_1999 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_1992 + 1i) / 4i)][((x_1995 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_1989.y, x_1989.y, x_1989.y, x_1989.y) * x_1999);
      let x_2001 : i32 = u_xlati70;
      let x_2003 : i32 = u_xlati70;
      let x_2006 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[(x_2001 / 4i)][(x_2003 % 4i)];
      let x_2007 : vec3<f32> = vs_TEXCOORD1;
      let x_2010 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2006 * vec4<f32>(x_2007.x, x_2007.x, x_2007.x, x_2007.x)) + x_2010);
      let x_2012 : i32 = u_xlati70;
      let x_2015 : i32 = u_xlati70;
      let x_2019 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_2012 + 2i) / 4i)][((x_2015 + 2i) % 4i)];
      let x_2020 : vec3<f32> = vs_TEXCOORD1;
      let x_2023 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_2019 * vec4<f32>(x_2020.z, x_2020.z, x_2020.z, x_2020.z)) + x_2023);
      let x_2025 : vec4<f32> = u_xlat7;
      let x_2026 : i32 = u_xlati70;
      let x_2029 : i32 = u_xlati70;
      let x_2033 : vec4<f32> = x_158.x_AdditionalLightsWorldToShadow[((x_2026 + 3i) / 4i)][((x_2029 + 3i) % 4i)];
      u_xlat7 = (x_2025 + x_2033);
      let x_2035 : vec4<f32> = u_xlat7;
      let x_2037 : vec4<f32> = u_xlat7;
      let x_2039 : vec3<f32> = (vec3<f32>(x_2035.x, x_2035.y, x_2035.z) / vec3<f32>(x_2037.w, x_2037.w, x_2037.w));
      let x_2040 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2039.x, x_2039.y, x_2039.z, x_2040.w);
      let x_2043 : i32 = u_xlati68;
      let x_2045 : f32 = x_158.x_AdditionalShadowParams[x_2043].y;
      u_xlatb70 = (0.0f < x_2045);
      let x_2047 : bool = u_xlatb70;
      if (x_2047) {
        let x_2050 : i32 = u_xlati68;
        let x_2052 : f32 = x_158.x_AdditionalShadowParams[x_2050].y;
        u_xlatb70 = (1.0f == x_2052);
        let x_2054 : bool = u_xlatb70;
        if (x_2054) {
          let x_2057 : vec4<f32> = u_xlat7;
          let x_2061 : vec4<f32> = x_158.x_AdditionalShadowOffset0;
          u_xlat8 = (vec4<f32>(x_2057.x, x_2057.y, x_2057.x, x_2057.y) + x_2061);
          let x_2064 : vec4<f32> = u_xlat8;
          let x_2065 : vec2<f32> = vec2<f32>(x_2064.x, x_2064.y);
          let x_2067 : f32 = u_xlat7.z;
          txVec30 = vec3<f32>(x_2065.x, x_2065.y, x_2067);
          let x_2075 : vec3<f32> = txVec30;
          let x_2077 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2075.xy, x_2075.z);
          u_xlat9.x = x_2077;
          let x_2080 : vec4<f32> = u_xlat8;
          let x_2081 : vec2<f32> = vec2<f32>(x_2080.z, x_2080.w);
          let x_2083 : f32 = u_xlat7.z;
          txVec31 = vec3<f32>(x_2081.x, x_2081.y, x_2083);
          let x_2090 : vec3<f32> = txVec31;
          let x_2092 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2090.xy, x_2090.z);
          u_xlat9.y = x_2092;
          let x_2094 : vec4<f32> = u_xlat7;
          let x_2098 : vec4<f32> = x_158.x_AdditionalShadowOffset1;
          u_xlat8 = (vec4<f32>(x_2094.x, x_2094.y, x_2094.x, x_2094.y) + x_2098);
          let x_2101 : vec4<f32> = u_xlat8;
          let x_2102 : vec2<f32> = vec2<f32>(x_2101.x, x_2101.y);
          let x_2104 : f32 = u_xlat7.z;
          txVec32 = vec3<f32>(x_2102.x, x_2102.y, x_2104);
          let x_2111 : vec3<f32> = txVec32;
          let x_2113 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2111.xy, x_2111.z);
          u_xlat9.z = x_2113;
          let x_2116 : vec4<f32> = u_xlat8;
          let x_2117 : vec2<f32> = vec2<f32>(x_2116.z, x_2116.w);
          let x_2119 : f32 = u_xlat7.z;
          txVec33 = vec3<f32>(x_2117.x, x_2117.y, x_2119);
          let x_2126 : vec3<f32> = txVec33;
          let x_2128 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2126.xy, x_2126.z);
          u_xlat9.w = x_2128;
          let x_2130 : vec4<f32> = u_xlat9;
          u_xlat70 = dot(x_2130, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2133 : i32 = u_xlati68;
          let x_2135 : f32 = x_158.x_AdditionalShadowParams[x_2133].y;
          u_xlatb71 = (2.0f == x_2135);
          let x_2137 : bool = u_xlatb71;
          if (x_2137) {
            let x_2140 : vec4<f32> = u_xlat7;
            let x_2144 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2147 : vec2<f32> = ((vec2<f32>(x_2140.x, x_2140.y) * vec2<f32>(x_2144.z, x_2144.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2148 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2147.x, x_2147.y, x_2148.z, x_2148.w);
            let x_2150 : vec4<f32> = u_xlat8;
            let x_2152 : vec2<f32> = floor(vec2<f32>(x_2150.x, x_2150.y));
            let x_2153 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2152.x, x_2152.y, x_2153.z, x_2153.w);
            let x_2155 : vec4<f32> = u_xlat7;
            let x_2158 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2161 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2155.x, x_2155.y) * vec2<f32>(x_2158.z, x_2158.w)) + -(vec2<f32>(x_2161.x, x_2161.y)));
            let x_2165 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2165.x, x_2165.x, x_2165.y, x_2165.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2168 : vec4<f32> = u_xlat9;
            let x_2170 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2168.x, x_2168.x, x_2168.z, x_2168.z) * vec4<f32>(x_2170.x, x_2170.x, x_2170.z, x_2170.z));
            let x_2173 : vec4<f32> = u_xlat10;
            let x_2175 : vec2<f32> = (vec2<f32>(x_2173.y, x_2173.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2176 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2175.x, x_2176.y, x_2175.y, x_2176.w);
            let x_2178 : vec4<f32> = u_xlat10;
            let x_2181 : vec2<f32> = u_xlat52;
            let x_2183 : vec2<f32> = ((vec2<f32>(x_2178.x, x_2178.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2181));
            let x_2184 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2183.x, x_2183.y, x_2184.z, x_2184.w);
            let x_2187 : vec2<f32> = u_xlat52;
            u_xlat54 = (-(x_2187) + vec2<f32>(1.0f, 1.0f));
            let x_2190 : vec2<f32> = u_xlat52;
            let x_2191 : vec2<f32> = min(x_2190, vec2<f32>(0.0f, 0.0f));
            let x_2192 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2191.x, x_2191.y, x_2192.z, x_2192.w);
            let x_2194 : vec4<f32> = u_xlat11;
            let x_2197 : vec4<f32> = u_xlat11;
            let x_2200 : vec2<f32> = u_xlat54;
            let x_2201 : vec2<f32> = ((-(vec2<f32>(x_2194.x, x_2194.y)) * vec2<f32>(x_2197.x, x_2197.y)) + x_2200);
            let x_2202 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2201.x, x_2201.y, x_2202.z, x_2202.w);
            let x_2204 : vec2<f32> = u_xlat52;
            u_xlat52 = max(x_2204, vec2<f32>(0.0f, 0.0f));
            let x_2206 : vec2<f32> = u_xlat52;
            let x_2208 : vec2<f32> = u_xlat52;
            let x_2210 : vec4<f32> = u_xlat9;
            u_xlat52 = ((-(x_2206) * x_2208) + vec2<f32>(x_2210.y, x_2210.w));
            let x_2213 : vec4<f32> = u_xlat11;
            let x_2215 : vec2<f32> = (vec2<f32>(x_2213.x, x_2213.y) + vec2<f32>(1.0f, 1.0f));
            let x_2216 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2215.x, x_2215.y, x_2216.z, x_2216.w);
            let x_2218 : vec2<f32> = u_xlat52;
            u_xlat52 = (x_2218 + vec2<f32>(1.0f, 1.0f));
            let x_2220 : vec4<f32> = u_xlat10;
            let x_2222 : vec2<f32> = (vec2<f32>(x_2220.x, x_2220.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2223 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2222.x, x_2222.y, x_2223.z, x_2223.w);
            let x_2225 : vec2<f32> = u_xlat54;
            let x_2226 : vec2<f32> = (x_2225 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2227 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2226.x, x_2226.y, x_2227.z, x_2227.w);
            let x_2229 : vec4<f32> = u_xlat11;
            let x_2231 : vec2<f32> = (vec2<f32>(x_2229.x, x_2229.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2232 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2231.x, x_2231.y, x_2232.z, x_2232.w);
            let x_2234 : vec2<f32> = u_xlat52;
            let x_2235 : vec2<f32> = (x_2234 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2236 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2235.x, x_2235.y, x_2236.z, x_2236.w);
            let x_2238 : vec4<f32> = u_xlat9;
            u_xlat52 = (vec2<f32>(x_2238.y, x_2238.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2242 : f32 = u_xlat11.x;
            u_xlat12.z = x_2242;
            let x_2245 : f32 = u_xlat52.x;
            u_xlat12.w = x_2245;
            let x_2248 : f32 = u_xlat13.x;
            u_xlat10.z = x_2248;
            let x_2251 : f32 = u_xlat9.x;
            u_xlat10.w = x_2251;
            let x_2253 : vec4<f32> = u_xlat10;
            let x_2255 : vec4<f32> = u_xlat12;
            u_xlat14 = (vec4<f32>(x_2253.z, x_2253.w, x_2253.x, x_2253.z) + vec4<f32>(x_2255.z, x_2255.w, x_2255.x, x_2255.z));
            let x_2259 : f32 = u_xlat12.y;
            u_xlat11.z = x_2259;
            let x_2262 : f32 = u_xlat52.y;
            u_xlat11.w = x_2262;
            let x_2265 : f32 = u_xlat10.y;
            u_xlat13.z = x_2265;
            let x_2268 : f32 = u_xlat9.z;
            u_xlat13.w = x_2268;
            let x_2270 : vec4<f32> = u_xlat11;
            let x_2272 : vec4<f32> = u_xlat13;
            let x_2274 : vec3<f32> = (vec3<f32>(x_2270.z, x_2270.y, x_2270.w) + vec3<f32>(x_2272.z, x_2272.y, x_2272.w));
            let x_2275 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2274.x, x_2274.y, x_2274.z, x_2275.w);
            let x_2277 : vec4<f32> = u_xlat10;
            let x_2279 : vec4<f32> = u_xlat14;
            let x_2281 : vec3<f32> = (vec3<f32>(x_2277.x, x_2277.z, x_2277.w) / vec3<f32>(x_2279.z, x_2279.w, x_2279.y));
            let x_2282 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2281.x, x_2281.y, x_2281.z, x_2282.w);
            let x_2284 : vec4<f32> = u_xlat10;
            let x_2286 : vec3<f32> = (vec3<f32>(x_2284.x, x_2284.y, x_2284.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2287 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2286.x, x_2286.y, x_2286.z, x_2287.w);
            let x_2289 : vec4<f32> = u_xlat13;
            let x_2291 : vec4<f32> = u_xlat9;
            let x_2293 : vec3<f32> = (vec3<f32>(x_2289.z, x_2289.y, x_2289.w) / vec3<f32>(x_2291.x, x_2291.y, x_2291.z));
            let x_2294 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2293.x, x_2293.y, x_2293.z, x_2294.w);
            let x_2296 : vec4<f32> = u_xlat11;
            let x_2298 : vec3<f32> = (vec3<f32>(x_2296.x, x_2296.y, x_2296.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2299 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2298.x, x_2298.y, x_2298.z, x_2299.w);
            let x_2301 : vec4<f32> = u_xlat10;
            let x_2304 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2306 : vec3<f32> = (vec3<f32>(x_2301.y, x_2301.x, x_2301.z) * vec3<f32>(x_2304.x, x_2304.x, x_2304.x));
            let x_2307 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2306.x, x_2306.y, x_2306.z, x_2307.w);
            let x_2309 : vec4<f32> = u_xlat11;
            let x_2312 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2314 : vec3<f32> = (vec3<f32>(x_2309.x, x_2309.y, x_2309.z) * vec3<f32>(x_2312.y, x_2312.y, x_2312.y));
            let x_2315 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2314.x, x_2314.y, x_2314.z, x_2315.w);
            let x_2318 : f32 = u_xlat11.x;
            u_xlat10.w = x_2318;
            let x_2320 : vec4<f32> = u_xlat8;
            let x_2323 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2326 : vec4<f32> = u_xlat10;
            u_xlat12 = ((vec4<f32>(x_2320.x, x_2320.y, x_2320.x, x_2320.y) * vec4<f32>(x_2323.x, x_2323.y, x_2323.x, x_2323.y)) + vec4<f32>(x_2326.y, x_2326.w, x_2326.x, x_2326.w));
            let x_2329 : vec4<f32> = u_xlat8;
            let x_2332 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2335 : vec4<f32> = u_xlat10;
            u_xlat52 = ((vec2<f32>(x_2329.x, x_2329.y) * vec2<f32>(x_2332.x, x_2332.y)) + vec2<f32>(x_2335.z, x_2335.w));
            let x_2339 : f32 = u_xlat10.y;
            u_xlat11.w = x_2339;
            let x_2341 : vec4<f32> = u_xlat11;
            let x_2342 : vec2<f32> = vec2<f32>(x_2341.y, x_2341.z);
            let x_2343 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2343.x, x_2342.x, x_2343.z, x_2342.y);
            let x_2345 : vec4<f32> = u_xlat8;
            let x_2348 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2351 : vec4<f32> = u_xlat10;
            u_xlat13 = ((vec4<f32>(x_2345.x, x_2345.y, x_2345.x, x_2345.y) * vec4<f32>(x_2348.x, x_2348.y, x_2348.x, x_2348.y)) + vec4<f32>(x_2351.x, x_2351.y, x_2351.z, x_2351.y));
            let x_2354 : vec4<f32> = u_xlat8;
            let x_2357 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2360 : vec4<f32> = u_xlat11;
            u_xlat11 = ((vec4<f32>(x_2354.x, x_2354.y, x_2354.x, x_2354.y) * vec4<f32>(x_2357.x, x_2357.y, x_2357.x, x_2357.y)) + vec4<f32>(x_2360.w, x_2360.y, x_2360.w, x_2360.z));
            let x_2363 : vec4<f32> = u_xlat8;
            let x_2366 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2369 : vec4<f32> = u_xlat10;
            u_xlat10 = ((vec4<f32>(x_2363.x, x_2363.y, x_2363.x, x_2363.y) * vec4<f32>(x_2366.x, x_2366.y, x_2366.x, x_2366.y)) + vec4<f32>(x_2369.x, x_2369.w, x_2369.z, x_2369.w));
            let x_2372 : vec4<f32> = u_xlat9;
            let x_2374 : vec4<f32> = u_xlat14;
            u_xlat15 = (vec4<f32>(x_2372.x, x_2372.x, x_2372.x, x_2372.y) * vec4<f32>(x_2374.z, x_2374.w, x_2374.y, x_2374.z));
            let x_2377 : vec4<f32> = u_xlat9;
            let x_2379 : vec4<f32> = u_xlat14;
            u_xlat16 = (vec4<f32>(x_2377.y, x_2377.y, x_2377.z, x_2377.z) * x_2379);
            let x_2382 : f32 = u_xlat9.z;
            let x_2384 : f32 = u_xlat14.y;
            u_xlat71 = (x_2382 * x_2384);
            let x_2387 : vec4<f32> = u_xlat12;
            let x_2388 : vec2<f32> = vec2<f32>(x_2387.x, x_2387.y);
            let x_2390 : f32 = u_xlat7.z;
            txVec34 = vec3<f32>(x_2388.x, x_2388.y, x_2390);
            let x_2397 : vec3<f32> = txVec34;
            let x_2399 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2397.xy, x_2397.z);
            u_xlat72 = x_2399;
            let x_2401 : vec4<f32> = u_xlat12;
            let x_2402 : vec2<f32> = vec2<f32>(x_2401.z, x_2401.w);
            let x_2404 : f32 = u_xlat7.z;
            txVec35 = vec3<f32>(x_2402.x, x_2402.y, x_2404);
            let x_2412 : vec3<f32> = txVec35;
            let x_2414 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2412.xy, x_2412.z);
            u_xlat73 = x_2414;
            let x_2415 : f32 = u_xlat73;
            let x_2417 : f32 = u_xlat15.y;
            u_xlat73 = (x_2415 * x_2417);
            let x_2420 : f32 = u_xlat15.x;
            let x_2421 : f32 = u_xlat72;
            let x_2423 : f32 = u_xlat73;
            u_xlat72 = ((x_2420 * x_2421) + x_2423);
            let x_2426 : vec2<f32> = u_xlat52;
            let x_2428 : f32 = u_xlat7.z;
            txVec36 = vec3<f32>(x_2426.x, x_2426.y, x_2428);
            let x_2435 : vec3<f32> = txVec36;
            let x_2437 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2435.xy, x_2435.z);
            u_xlat73 = x_2437;
            let x_2439 : f32 = u_xlat15.z;
            let x_2440 : f32 = u_xlat73;
            let x_2442 : f32 = u_xlat72;
            u_xlat72 = ((x_2439 * x_2440) + x_2442);
            let x_2445 : vec4<f32> = u_xlat11;
            let x_2446 : vec2<f32> = vec2<f32>(x_2445.x, x_2445.y);
            let x_2448 : f32 = u_xlat7.z;
            txVec37 = vec3<f32>(x_2446.x, x_2446.y, x_2448);
            let x_2455 : vec3<f32> = txVec37;
            let x_2457 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2455.xy, x_2455.z);
            u_xlat73 = x_2457;
            let x_2459 : f32 = u_xlat15.w;
            let x_2460 : f32 = u_xlat73;
            let x_2462 : f32 = u_xlat72;
            u_xlat72 = ((x_2459 * x_2460) + x_2462);
            let x_2465 : vec4<f32> = u_xlat13;
            let x_2466 : vec2<f32> = vec2<f32>(x_2465.x, x_2465.y);
            let x_2468 : f32 = u_xlat7.z;
            txVec38 = vec3<f32>(x_2466.x, x_2466.y, x_2468);
            let x_2475 : vec3<f32> = txVec38;
            let x_2477 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2475.xy, x_2475.z);
            u_xlat73 = x_2477;
            let x_2479 : f32 = u_xlat16.x;
            let x_2480 : f32 = u_xlat73;
            let x_2482 : f32 = u_xlat72;
            u_xlat72 = ((x_2479 * x_2480) + x_2482);
            let x_2485 : vec4<f32> = u_xlat13;
            let x_2486 : vec2<f32> = vec2<f32>(x_2485.z, x_2485.w);
            let x_2488 : f32 = u_xlat7.z;
            txVec39 = vec3<f32>(x_2486.x, x_2486.y, x_2488);
            let x_2495 : vec3<f32> = txVec39;
            let x_2497 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2495.xy, x_2495.z);
            u_xlat73 = x_2497;
            let x_2499 : f32 = u_xlat16.y;
            let x_2500 : f32 = u_xlat73;
            let x_2502 : f32 = u_xlat72;
            u_xlat72 = ((x_2499 * x_2500) + x_2502);
            let x_2505 : vec4<f32> = u_xlat11;
            let x_2506 : vec2<f32> = vec2<f32>(x_2505.z, x_2505.w);
            let x_2508 : f32 = u_xlat7.z;
            txVec40 = vec3<f32>(x_2506.x, x_2506.y, x_2508);
            let x_2515 : vec3<f32> = txVec40;
            let x_2517 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2515.xy, x_2515.z);
            u_xlat73 = x_2517;
            let x_2519 : f32 = u_xlat16.z;
            let x_2520 : f32 = u_xlat73;
            let x_2522 : f32 = u_xlat72;
            u_xlat72 = ((x_2519 * x_2520) + x_2522);
            let x_2525 : vec4<f32> = u_xlat10;
            let x_2526 : vec2<f32> = vec2<f32>(x_2525.x, x_2525.y);
            let x_2528 : f32 = u_xlat7.z;
            txVec41 = vec3<f32>(x_2526.x, x_2526.y, x_2528);
            let x_2535 : vec3<f32> = txVec41;
            let x_2537 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2535.xy, x_2535.z);
            u_xlat73 = x_2537;
            let x_2539 : f32 = u_xlat16.w;
            let x_2540 : f32 = u_xlat73;
            let x_2542 : f32 = u_xlat72;
            u_xlat72 = ((x_2539 * x_2540) + x_2542);
            let x_2545 : vec4<f32> = u_xlat10;
            let x_2546 : vec2<f32> = vec2<f32>(x_2545.z, x_2545.w);
            let x_2548 : f32 = u_xlat7.z;
            txVec42 = vec3<f32>(x_2546.x, x_2546.y, x_2548);
            let x_2555 : vec3<f32> = txVec42;
            let x_2557 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2555.xy, x_2555.z);
            u_xlat73 = x_2557;
            let x_2558 : f32 = u_xlat71;
            let x_2559 : f32 = u_xlat73;
            let x_2561 : f32 = u_xlat72;
            u_xlat70 = ((x_2558 * x_2559) + x_2561);
          } else {
            let x_2564 : vec4<f32> = u_xlat7;
            let x_2567 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2570 : vec2<f32> = ((vec2<f32>(x_2564.x, x_2564.y) * vec2<f32>(x_2567.z, x_2567.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2571 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2570.x, x_2570.y, x_2571.z, x_2571.w);
            let x_2573 : vec4<f32> = u_xlat8;
            let x_2575 : vec2<f32> = floor(vec2<f32>(x_2573.x, x_2573.y));
            let x_2576 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2575.x, x_2575.y, x_2576.z, x_2576.w);
            let x_2578 : vec4<f32> = u_xlat7;
            let x_2581 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2584 : vec4<f32> = u_xlat8;
            u_xlat52 = ((vec2<f32>(x_2578.x, x_2578.y) * vec2<f32>(x_2581.z, x_2581.w)) + -(vec2<f32>(x_2584.x, x_2584.y)));
            let x_2588 : vec2<f32> = u_xlat52;
            u_xlat9 = (vec4<f32>(x_2588.x, x_2588.x, x_2588.y, x_2588.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2591 : vec4<f32> = u_xlat9;
            let x_2593 : vec4<f32> = u_xlat9;
            u_xlat10 = (vec4<f32>(x_2591.x, x_2591.x, x_2591.z, x_2591.z) * vec4<f32>(x_2593.x, x_2593.x, x_2593.z, x_2593.z));
            let x_2596 : vec4<f32> = u_xlat10;
            let x_2598 : vec2<f32> = (vec2<f32>(x_2596.y, x_2596.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_2599 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2599.x, x_2598.x, x_2599.z, x_2598.y);
            let x_2601 : vec4<f32> = u_xlat10;
            let x_2604 : vec2<f32> = u_xlat52;
            let x_2606 : vec2<f32> = ((vec2<f32>(x_2601.x, x_2601.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2604));
            let x_2607 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2606.x, x_2607.y, x_2606.y, x_2607.w);
            let x_2609 : vec2<f32> = u_xlat52;
            let x_2611 : vec2<f32> = (-(x_2609) + vec2<f32>(1.0f, 1.0f));
            let x_2612 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2611.x, x_2611.y, x_2612.z, x_2612.w);
            let x_2614 : vec2<f32> = u_xlat52;
            u_xlat54 = min(x_2614, vec2<f32>(0.0f, 0.0f));
            let x_2616 : vec2<f32> = u_xlat54;
            let x_2618 : vec2<f32> = u_xlat54;
            let x_2620 : vec4<f32> = u_xlat10;
            let x_2622 : vec2<f32> = ((-(x_2616) * x_2618) + vec2<f32>(x_2620.x, x_2620.y));
            let x_2623 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2622.x, x_2622.y, x_2623.z, x_2623.w);
            let x_2625 : vec2<f32> = u_xlat52;
            u_xlat54 = max(x_2625, vec2<f32>(0.0f, 0.0f));
            let x_2628 : vec2<f32> = u_xlat54;
            let x_2630 : vec2<f32> = u_xlat54;
            let x_2632 : vec4<f32> = u_xlat9;
            let x_2634 : vec2<f32> = ((-(x_2628) * x_2630) + vec2<f32>(x_2632.y, x_2632.w));
            let x_2635 : vec3<f32> = u_xlat31;
            u_xlat31 = vec3<f32>(x_2634.x, x_2635.y, x_2634.y);
            let x_2637 : vec4<f32> = u_xlat10;
            let x_2639 : vec2<f32> = (vec2<f32>(x_2637.x, x_2637.y) + vec2<f32>(2.0f, 2.0f));
            let x_2640 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2639.x, x_2639.y, x_2640.z, x_2640.w);
            let x_2642 : vec3<f32> = u_xlat31;
            let x_2644 : vec2<f32> = (vec2<f32>(x_2642.x, x_2642.z) + vec2<f32>(2.0f, 2.0f));
            let x_2645 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2645.x, x_2644.x, x_2645.z, x_2644.y);
            let x_2648 : f32 = u_xlat9.y;
            u_xlat12.z = (x_2648 * 0.08163200318813323975f);
            let x_2651 : vec4<f32> = u_xlat9;
            let x_2653 : vec3<f32> = (vec3<f32>(x_2651.z, x_2651.x, x_2651.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_2654 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2653.x, x_2653.y, x_2653.z, x_2654.w);
            let x_2656 : vec4<f32> = u_xlat10;
            let x_2658 : vec2<f32> = (vec2<f32>(x_2656.x, x_2656.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_2659 : vec4<f32> = u_xlat9;
            u_xlat9 = vec4<f32>(x_2658.x, x_2658.y, x_2659.z, x_2659.w);
            let x_2662 : f32 = u_xlat13.y;
            u_xlat12.x = x_2662;
            let x_2664 : vec2<f32> = u_xlat52;
            let x_2667 : vec2<f32> = ((vec2<f32>(x_2664.x, x_2664.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2668 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2668.x, x_2667.x, x_2668.z, x_2667.y);
            let x_2670 : vec2<f32> = u_xlat52;
            let x_2673 : vec2<f32> = ((vec2<f32>(x_2670.x, x_2670.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2674 : vec4<f32> = u_xlat10;
            u_xlat10 = vec4<f32>(x_2673.x, x_2674.y, x_2673.y, x_2674.w);
            let x_2677 : f32 = u_xlat9.x;
            u_xlat10.y = x_2677;
            let x_2680 : f32 = u_xlat11.y;
            u_xlat10.w = x_2680;
            let x_2682 : vec4<f32> = u_xlat10;
            let x_2683 : vec4<f32> = u_xlat12;
            u_xlat12 = (x_2682 + x_2683);
            let x_2685 : vec2<f32> = u_xlat52;
            let x_2688 : vec2<f32> = ((vec2<f32>(x_2685.y, x_2685.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_2689 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2689.x, x_2688.x, x_2689.z, x_2688.y);
            let x_2691 : vec2<f32> = u_xlat52;
            let x_2694 : vec2<f32> = ((vec2<f32>(x_2691.y, x_2691.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_2695 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2694.x, x_2695.y, x_2694.y, x_2695.w);
            let x_2698 : f32 = u_xlat9.y;
            u_xlat11.y = x_2698;
            let x_2700 : vec4<f32> = u_xlat11;
            let x_2701 : vec4<f32> = u_xlat13;
            u_xlat9 = (x_2700 + x_2701);
            let x_2703 : vec4<f32> = u_xlat10;
            let x_2704 : vec4<f32> = u_xlat12;
            u_xlat10 = (x_2703 / x_2704);
            let x_2706 : vec4<f32> = u_xlat10;
            u_xlat10 = (x_2706 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2708 : vec4<f32> = u_xlat11;
            let x_2709 : vec4<f32> = u_xlat9;
            u_xlat11 = (x_2708 / x_2709);
            let x_2711 : vec4<f32> = u_xlat11;
            u_xlat11 = (x_2711 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_2713 : vec4<f32> = u_xlat10;
            let x_2716 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            u_xlat10 = (vec4<f32>(x_2713.w, x_2713.x, x_2713.y, x_2713.z) * vec4<f32>(x_2716.x, x_2716.x, x_2716.x, x_2716.x));
            let x_2719 : vec4<f32> = u_xlat11;
            let x_2722 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            u_xlat11 = (vec4<f32>(x_2719.x, x_2719.w, x_2719.y, x_2719.z) * vec4<f32>(x_2722.y, x_2722.y, x_2722.y, x_2722.y));
            let x_2725 : vec4<f32> = u_xlat10;
            let x_2726 : vec3<f32> = vec3<f32>(x_2725.y, x_2725.z, x_2725.w);
            let x_2727 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2726.x, x_2727.y, x_2726.y, x_2726.z);
            let x_2730 : f32 = u_xlat11.x;
            u_xlat13.y = x_2730;
            let x_2732 : vec4<f32> = u_xlat8;
            let x_2735 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2738 : vec4<f32> = u_xlat13;
            u_xlat14 = ((vec4<f32>(x_2732.x, x_2732.y, x_2732.x, x_2732.y) * vec4<f32>(x_2735.x, x_2735.y, x_2735.x, x_2735.y)) + vec4<f32>(x_2738.x, x_2738.y, x_2738.z, x_2738.y));
            let x_2741 : vec4<f32> = u_xlat8;
            let x_2744 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2747 : vec4<f32> = u_xlat13;
            u_xlat52 = ((vec2<f32>(x_2741.x, x_2741.y) * vec2<f32>(x_2744.x, x_2744.y)) + vec2<f32>(x_2747.w, x_2747.y));
            let x_2751 : f32 = u_xlat13.y;
            u_xlat10.y = x_2751;
            let x_2754 : f32 = u_xlat11.z;
            u_xlat13.y = x_2754;
            let x_2756 : vec4<f32> = u_xlat8;
            let x_2759 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2762 : vec4<f32> = u_xlat13;
            u_xlat15 = ((vec4<f32>(x_2756.x, x_2756.y, x_2756.x, x_2756.y) * vec4<f32>(x_2759.x, x_2759.y, x_2759.x, x_2759.y)) + vec4<f32>(x_2762.x, x_2762.y, x_2762.z, x_2762.y));
            let x_2765 : vec4<f32> = u_xlat8;
            let x_2768 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2771 : vec4<f32> = u_xlat13;
            let x_2773 : vec2<f32> = ((vec2<f32>(x_2765.x, x_2765.y) * vec2<f32>(x_2768.x, x_2768.y)) + vec2<f32>(x_2771.w, x_2771.y));
            let x_2774 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2773.x, x_2773.y, x_2774.z, x_2774.w);
            let x_2777 : f32 = u_xlat13.y;
            u_xlat10.z = x_2777;
            let x_2779 : vec4<f32> = u_xlat8;
            let x_2782 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2785 : vec4<f32> = u_xlat10;
            u_xlat17 = ((vec4<f32>(x_2779.x, x_2779.y, x_2779.x, x_2779.y) * vec4<f32>(x_2782.x, x_2782.y, x_2782.x, x_2782.y)) + vec4<f32>(x_2785.x, x_2785.y, x_2785.x, x_2785.z));
            let x_2789 : f32 = u_xlat11.w;
            u_xlat13.y = x_2789;
            let x_2791 : vec4<f32> = u_xlat8;
            let x_2794 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2797 : vec4<f32> = u_xlat13;
            u_xlat18 = ((vec4<f32>(x_2791.x, x_2791.y, x_2791.x, x_2791.y) * vec4<f32>(x_2794.x, x_2794.y, x_2794.x, x_2794.y)) + vec4<f32>(x_2797.x, x_2797.y, x_2797.z, x_2797.y));
            let x_2801 : vec4<f32> = u_xlat8;
            let x_2804 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2807 : vec4<f32> = u_xlat13;
            u_xlat32 = ((vec2<f32>(x_2801.x, x_2801.y) * vec2<f32>(x_2804.x, x_2804.y)) + vec2<f32>(x_2807.w, x_2807.y));
            let x_2811 : f32 = u_xlat13.y;
            u_xlat10.w = x_2811;
            let x_2814 : vec4<f32> = u_xlat8;
            let x_2817 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2820 : vec4<f32> = u_xlat10;
            u_xlat60 = ((vec2<f32>(x_2814.x, x_2814.y) * vec2<f32>(x_2817.x, x_2817.y)) + vec2<f32>(x_2820.x, x_2820.w));
            let x_2823 : vec4<f32> = u_xlat13;
            let x_2824 : vec3<f32> = vec3<f32>(x_2823.x, x_2823.z, x_2823.w);
            let x_2825 : vec4<f32> = u_xlat11;
            u_xlat11 = vec4<f32>(x_2824.x, x_2825.y, x_2824.y, x_2824.z);
            let x_2827 : vec4<f32> = u_xlat8;
            let x_2830 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2833 : vec4<f32> = u_xlat11;
            u_xlat13 = ((vec4<f32>(x_2827.x, x_2827.y, x_2827.x, x_2827.y) * vec4<f32>(x_2830.x, x_2830.y, x_2830.x, x_2830.y)) + vec4<f32>(x_2833.x, x_2833.y, x_2833.z, x_2833.y));
            let x_2837 : vec4<f32> = u_xlat8;
            let x_2840 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2843 : vec4<f32> = u_xlat11;
            u_xlat55 = ((vec2<f32>(x_2837.x, x_2837.y) * vec2<f32>(x_2840.x, x_2840.y)) + vec2<f32>(x_2843.w, x_2843.y));
            let x_2847 : f32 = u_xlat10.x;
            u_xlat11.x = x_2847;
            let x_2849 : vec4<f32> = u_xlat8;
            let x_2852 : vec4<f32> = x_158.x_AdditionalShadowmapSize;
            let x_2855 : vec4<f32> = u_xlat11;
            let x_2857 : vec2<f32> = ((vec2<f32>(x_2849.x, x_2849.y) * vec2<f32>(x_2852.x, x_2852.y)) + vec2<f32>(x_2855.x, x_2855.y));
            let x_2858 : vec4<f32> = u_xlat8;
            u_xlat8 = vec4<f32>(x_2857.x, x_2857.y, x_2858.z, x_2858.w);
            let x_2861 : vec4<f32> = u_xlat9;
            let x_2863 : vec4<f32> = u_xlat12;
            u_xlat19 = (vec4<f32>(x_2861.x, x_2861.x, x_2861.x, x_2861.x) * x_2863);
            let x_2866 : vec4<f32> = u_xlat9;
            let x_2868 : vec4<f32> = u_xlat12;
            u_xlat20 = (vec4<f32>(x_2866.y, x_2866.y, x_2866.y, x_2866.y) * x_2868);
            let x_2871 : vec4<f32> = u_xlat9;
            let x_2873 : vec4<f32> = u_xlat12;
            u_xlat21 = (vec4<f32>(x_2871.z, x_2871.z, x_2871.z, x_2871.z) * x_2873);
            let x_2875 : vec4<f32> = u_xlat9;
            let x_2877 : vec4<f32> = u_xlat12;
            u_xlat9 = (vec4<f32>(x_2875.w, x_2875.w, x_2875.w, x_2875.w) * x_2877);
            let x_2880 : vec4<f32> = u_xlat14;
            let x_2881 : vec2<f32> = vec2<f32>(x_2880.x, x_2880.y);
            let x_2883 : f32 = u_xlat7.z;
            txVec43 = vec3<f32>(x_2881.x, x_2881.y, x_2883);
            let x_2890 : vec3<f32> = txVec43;
            let x_2892 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2890.xy, x_2890.z);
            u_xlat71 = x_2892;
            let x_2894 : vec4<f32> = u_xlat14;
            let x_2895 : vec2<f32> = vec2<f32>(x_2894.z, x_2894.w);
            let x_2897 : f32 = u_xlat7.z;
            txVec44 = vec3<f32>(x_2895.x, x_2895.y, x_2897);
            let x_2904 : vec3<f32> = txVec44;
            let x_2906 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2904.xy, x_2904.z);
            u_xlat72 = x_2906;
            let x_2907 : f32 = u_xlat72;
            let x_2909 : f32 = u_xlat19.y;
            u_xlat72 = (x_2907 * x_2909);
            let x_2912 : f32 = u_xlat19.x;
            let x_2913 : f32 = u_xlat71;
            let x_2915 : f32 = u_xlat72;
            u_xlat71 = ((x_2912 * x_2913) + x_2915);
            let x_2918 : vec2<f32> = u_xlat52;
            let x_2920 : f32 = u_xlat7.z;
            txVec45 = vec3<f32>(x_2918.x, x_2918.y, x_2920);
            let x_2927 : vec3<f32> = txVec45;
            let x_2929 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2927.xy, x_2927.z);
            u_xlat72 = x_2929;
            let x_2931 : f32 = u_xlat19.z;
            let x_2932 : f32 = u_xlat72;
            let x_2934 : f32 = u_xlat71;
            u_xlat71 = ((x_2931 * x_2932) + x_2934);
            let x_2937 : vec4<f32> = u_xlat17;
            let x_2938 : vec2<f32> = vec2<f32>(x_2937.x, x_2937.y);
            let x_2940 : f32 = u_xlat7.z;
            txVec46 = vec3<f32>(x_2938.x, x_2938.y, x_2940);
            let x_2947 : vec3<f32> = txVec46;
            let x_2949 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2947.xy, x_2947.z);
            u_xlat72 = x_2949;
            let x_2951 : f32 = u_xlat19.w;
            let x_2952 : f32 = u_xlat72;
            let x_2954 : f32 = u_xlat71;
            u_xlat71 = ((x_2951 * x_2952) + x_2954);
            let x_2957 : vec4<f32> = u_xlat15;
            let x_2958 : vec2<f32> = vec2<f32>(x_2957.x, x_2957.y);
            let x_2960 : f32 = u_xlat7.z;
            txVec47 = vec3<f32>(x_2958.x, x_2958.y, x_2960);
            let x_2967 : vec3<f32> = txVec47;
            let x_2969 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2967.xy, x_2967.z);
            u_xlat72 = x_2969;
            let x_2971 : f32 = u_xlat20.x;
            let x_2972 : f32 = u_xlat72;
            let x_2974 : f32 = u_xlat71;
            u_xlat71 = ((x_2971 * x_2972) + x_2974);
            let x_2977 : vec4<f32> = u_xlat15;
            let x_2978 : vec2<f32> = vec2<f32>(x_2977.z, x_2977.w);
            let x_2980 : f32 = u_xlat7.z;
            txVec48 = vec3<f32>(x_2978.x, x_2978.y, x_2980);
            let x_2987 : vec3<f32> = txVec48;
            let x_2989 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2987.xy, x_2987.z);
            u_xlat72 = x_2989;
            let x_2991 : f32 = u_xlat20.y;
            let x_2992 : f32 = u_xlat72;
            let x_2994 : f32 = u_xlat71;
            u_xlat71 = ((x_2991 * x_2992) + x_2994);
            let x_2997 : vec4<f32> = u_xlat16;
            let x_2998 : vec2<f32> = vec2<f32>(x_2997.x, x_2997.y);
            let x_3000 : f32 = u_xlat7.z;
            txVec49 = vec3<f32>(x_2998.x, x_2998.y, x_3000);
            let x_3007 : vec3<f32> = txVec49;
            let x_3009 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3007.xy, x_3007.z);
            u_xlat72 = x_3009;
            let x_3011 : f32 = u_xlat20.z;
            let x_3012 : f32 = u_xlat72;
            let x_3014 : f32 = u_xlat71;
            u_xlat71 = ((x_3011 * x_3012) + x_3014);
            let x_3017 : vec4<f32> = u_xlat17;
            let x_3018 : vec2<f32> = vec2<f32>(x_3017.z, x_3017.w);
            let x_3020 : f32 = u_xlat7.z;
            txVec50 = vec3<f32>(x_3018.x, x_3018.y, x_3020);
            let x_3027 : vec3<f32> = txVec50;
            let x_3029 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3027.xy, x_3027.z);
            u_xlat72 = x_3029;
            let x_3031 : f32 = u_xlat20.w;
            let x_3032 : f32 = u_xlat72;
            let x_3034 : f32 = u_xlat71;
            u_xlat71 = ((x_3031 * x_3032) + x_3034);
            let x_3037 : vec4<f32> = u_xlat18;
            let x_3038 : vec2<f32> = vec2<f32>(x_3037.x, x_3037.y);
            let x_3040 : f32 = u_xlat7.z;
            txVec51 = vec3<f32>(x_3038.x, x_3038.y, x_3040);
            let x_3047 : vec3<f32> = txVec51;
            let x_3049 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3047.xy, x_3047.z);
            u_xlat72 = x_3049;
            let x_3051 : f32 = u_xlat21.x;
            let x_3052 : f32 = u_xlat72;
            let x_3054 : f32 = u_xlat71;
            u_xlat71 = ((x_3051 * x_3052) + x_3054);
            let x_3057 : vec4<f32> = u_xlat18;
            let x_3058 : vec2<f32> = vec2<f32>(x_3057.z, x_3057.w);
            let x_3060 : f32 = u_xlat7.z;
            txVec52 = vec3<f32>(x_3058.x, x_3058.y, x_3060);
            let x_3067 : vec3<f32> = txVec52;
            let x_3069 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3067.xy, x_3067.z);
            u_xlat72 = x_3069;
            let x_3071 : f32 = u_xlat21.y;
            let x_3072 : f32 = u_xlat72;
            let x_3074 : f32 = u_xlat71;
            u_xlat71 = ((x_3071 * x_3072) + x_3074);
            let x_3077 : vec2<f32> = u_xlat32;
            let x_3079 : f32 = u_xlat7.z;
            txVec53 = vec3<f32>(x_3077.x, x_3077.y, x_3079);
            let x_3086 : vec3<f32> = txVec53;
            let x_3088 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3086.xy, x_3086.z);
            u_xlat72 = x_3088;
            let x_3090 : f32 = u_xlat21.z;
            let x_3091 : f32 = u_xlat72;
            let x_3093 : f32 = u_xlat71;
            u_xlat71 = ((x_3090 * x_3091) + x_3093);
            let x_3096 : vec2<f32> = u_xlat60;
            let x_3098 : f32 = u_xlat7.z;
            txVec54 = vec3<f32>(x_3096.x, x_3096.y, x_3098);
            let x_3105 : vec3<f32> = txVec54;
            let x_3107 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3105.xy, x_3105.z);
            u_xlat72 = x_3107;
            let x_3109 : f32 = u_xlat21.w;
            let x_3110 : f32 = u_xlat72;
            let x_3112 : f32 = u_xlat71;
            u_xlat71 = ((x_3109 * x_3110) + x_3112);
            let x_3115 : vec4<f32> = u_xlat13;
            let x_3116 : vec2<f32> = vec2<f32>(x_3115.x, x_3115.y);
            let x_3118 : f32 = u_xlat7.z;
            txVec55 = vec3<f32>(x_3116.x, x_3116.y, x_3118);
            let x_3125 : vec3<f32> = txVec55;
            let x_3127 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3125.xy, x_3125.z);
            u_xlat72 = x_3127;
            let x_3129 : f32 = u_xlat9.x;
            let x_3130 : f32 = u_xlat72;
            let x_3132 : f32 = u_xlat71;
            u_xlat71 = ((x_3129 * x_3130) + x_3132);
            let x_3135 : vec4<f32> = u_xlat13;
            let x_3136 : vec2<f32> = vec2<f32>(x_3135.z, x_3135.w);
            let x_3138 : f32 = u_xlat7.z;
            txVec56 = vec3<f32>(x_3136.x, x_3136.y, x_3138);
            let x_3145 : vec3<f32> = txVec56;
            let x_3147 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3145.xy, x_3145.z);
            u_xlat72 = x_3147;
            let x_3149 : f32 = u_xlat9.y;
            let x_3150 : f32 = u_xlat72;
            let x_3152 : f32 = u_xlat71;
            u_xlat71 = ((x_3149 * x_3150) + x_3152);
            let x_3155 : vec2<f32> = u_xlat55;
            let x_3157 : f32 = u_xlat7.z;
            txVec57 = vec3<f32>(x_3155.x, x_3155.y, x_3157);
            let x_3164 : vec3<f32> = txVec57;
            let x_3166 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3164.xy, x_3164.z);
            u_xlat72 = x_3166;
            let x_3168 : f32 = u_xlat9.z;
            let x_3169 : f32 = u_xlat72;
            let x_3171 : f32 = u_xlat71;
            u_xlat71 = ((x_3168 * x_3169) + x_3171);
            let x_3174 : vec4<f32> = u_xlat8;
            let x_3175 : vec2<f32> = vec2<f32>(x_3174.x, x_3174.y);
            let x_3177 : f32 = u_xlat7.z;
            txVec58 = vec3<f32>(x_3175.x, x_3175.y, x_3177);
            let x_3184 : vec3<f32> = txVec58;
            let x_3186 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3184.xy, x_3184.z);
            u_xlat72 = x_3186;
            let x_3188 : f32 = u_xlat9.w;
            let x_3189 : f32 = u_xlat72;
            let x_3191 : f32 = u_xlat71;
            u_xlat70 = ((x_3188 * x_3189) + x_3191);
          }
        }
      } else {
        let x_3195 : vec4<f32> = u_xlat7;
        let x_3196 : vec2<f32> = vec2<f32>(x_3195.x, x_3195.y);
        let x_3198 : f32 = u_xlat7.z;
        txVec59 = vec3<f32>(x_3196.x, x_3196.y, x_3198);
        let x_3205 : vec3<f32> = txVec59;
        let x_3207 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3205.xy, x_3205.z);
        u_xlat70 = x_3207;
      }
      let x_3208 : i32 = u_xlati68;
      let x_3210 : f32 = x_158.x_AdditionalShadowParams[x_3208].x;
      u_xlat71 = (1.0f + -(x_3210));
      let x_3213 : f32 = u_xlat70;
      let x_3214 : i32 = u_xlati68;
      let x_3216 : f32 = x_158.x_AdditionalShadowParams[x_3214].x;
      let x_3218 : f32 = u_xlat71;
      u_xlat70 = ((x_3213 * x_3216) + x_3218);
      let x_3221 : f32 = u_xlat7.z;
      u_xlatb71 = (0.0f >= x_3221);
      let x_3225 : f32 = u_xlat7.z;
      u_xlatb72 = (x_3225 >= 1.0f);
      let x_3227 : bool = u_xlatb71;
      let x_3228 : bool = u_xlatb72;
      u_xlatb71 = (x_3227 | x_3228);
      let x_3230 : bool = u_xlatb71;
      let x_3231 : f32 = u_xlat70;
      u_xlat70 = select(x_3231, 1.0f, x_3230);
    } else {
      u_xlat70 = 1.0f;
    }
    let x_3234 : f32 = u_xlat70;
    u_xlat71 = (-(x_3234) + 1.0f);
    let x_3237 : f32 = u_xlat66;
    let x_3238 : f32 = u_xlat71;
    let x_3240 : f32 = u_xlat70;
    u_xlat70 = ((x_3237 * x_3238) + x_3240);
    let x_3242 : f32 = u_xlat69;
    let x_3243 : f32 = u_xlat70;
    u_xlat69 = (x_3242 * x_3243);
    let x_3245 : f32 = u_xlat69;
    let x_3247 : i32 = u_xlati68;
    let x_3249 : vec4<f32> = x_1823.x_AdditionalLightsColor[x_3247];
    let x_3251 : vec3<f32> = (vec3<f32>(x_3245, x_3245, x_3245) * vec3<f32>(x_3249.x, x_3249.y, x_3249.z));
    let x_3252 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_3251.x, x_3251.y, x_3251.z, x_3252.w);
    let x_3254 : vec3<f32> = u_xlat2;
    let x_3255 : vec4<f32> = u_xlat6;
    u_xlat68 = dot(x_3254, vec3<f32>(x_3255.x, x_3255.y, x_3255.z));
    let x_3258 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3258, 0.0f, 1.0f);
    let x_3260 : f32 = u_xlat68;
    let x_3262 : vec4<f32> = u_xlat7;
    let x_3264 : vec3<f32> = (vec3<f32>(x_3260, x_3260, x_3260) * vec3<f32>(x_3262.x, x_3262.y, x_3262.z));
    let x_3265 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_3264.x, x_3264.y, x_3264.z, x_3265.w);
    let x_3267 : vec4<f32> = u_xlat6;
    let x_3269 : vec4<f32> = u_xlat1;
    let x_3272 : vec4<f32> = u_xlat5;
    let x_3274 : vec3<f32> = ((vec3<f32>(x_3267.x, x_3267.y, x_3267.z) * vec3<f32>(x_3269.y, x_3269.z, x_3269.w)) + vec3<f32>(x_3272.x, x_3272.y, x_3272.z));
    let x_3275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_3274.x, x_3274.y, x_3274.z, x_3275.w);

    continuing {
      let x_3277 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3277 + bitcast<u32>(1i));
    }
  }
  let x_3279 : vec4<f32> = u_xlat4;
  let x_3281 : vec4<f32> = u_xlat1;
  let x_3284 : vec4<f32> = u_xlat3;
  let x_3286 : vec3<f32> = ((vec3<f32>(x_3279.x, x_3279.y, x_3279.z) * vec3<f32>(x_3281.y, x_3281.z, x_3281.w)) + vec3<f32>(x_3284.x, x_3284.y, x_3284.z));
  let x_3287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_3286.x, x_3286.y, x_3286.z, x_3287.w);
  let x_3291 : vec4<f32> = u_xlat5;
  let x_3293 : vec4<f32> = u_xlat1;
  let x_3295 : vec3<f32> = (vec3<f32>(x_3291.x, x_3291.y, x_3291.z) + vec3<f32>(x_3293.x, x_3293.y, x_3293.z));
  let x_3296 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3295.x, x_3295.y, x_3295.z, x_3296.w);
  let x_3299 : f32 = x_41.x_Surface;
  u_xlatb22 = (x_3299 == 1.0f);
  let x_3301 : bool = u_xlatb22;
  let x_3302 : bool = u_xlatb44;
  u_xlatb22 = (x_3301 | x_3302);
  let x_3304 : bool = u_xlatb22;
  if (x_3304) {
    let x_3309 : f32 = u_xlat0.x;
    x_3305 = x_3309;
  } else {
    x_3305 = 1.0f;
  }
  let x_3311 : f32 = x_3305;
  SV_Target0.w = x_3311;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


