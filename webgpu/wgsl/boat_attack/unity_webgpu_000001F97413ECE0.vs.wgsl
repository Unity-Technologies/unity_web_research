diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr,
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

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(32) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(96) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(2) var<uniform> x_20 : UnityPerDraw;

var<private> u_xlat0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat12 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_136 : VGlobals;

var<private> u_xlatb12 : bool;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_168 : f32;
  var x_229 : f32;
  var x_242 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = in_TEXCOORD0;
  let x_25 : vec4<f32> = x_20.unity_LightmapST;
  let x_29 : vec4<f32> = x_20.unity_LightmapST;
  let x_31 : vec2<f32> = ((x_13 * vec2<f32>(x_25.x, x_25.y)) + vec2<f32>(x_29.z, x_29.w));
  let x_32 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_32.x, x_32.y, x_31.x, x_31.y);
  let x_34 : vec2<f32> = in_TEXCOORD0;
  let x_35 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_34.x, x_34.y, x_35.z, x_35.w);
  let x_42 : vec3<f32> = in_NORMAL0;
  let x_47 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  let x_49 : vec3<f32> = (vec3<f32>(x_42.y, x_42.y, x_42.y) * vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_55 : vec3<f32> = in_NORMAL0;
  let x_58 : vec4<f32> = u_xlat0;
  let x_60 : vec3<f32> = ((vec3<f32>(x_53.x, x_53.y, x_53.z) * vec3<f32>(x_55.x, x_55.x, x_55.x)) + vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_65 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_67 : vec3<f32> = in_NORMAL0;
  let x_70 : vec4<f32> = u_xlat0;
  let x_72 : vec3<f32> = ((vec3<f32>(x_65.x, x_65.y, x_65.z) * vec3<f32>(x_67.z, x_67.z, x_67.z)) + vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_77 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_77.x, x_77.y, x_77.z), vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : f32 = u_xlat12;
  u_xlat12 = max(x_82, 1.17549435e-38f);
  let x_85 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_85);
  let x_87 : f32 = u_xlat12;
  let x_89 : vec4<f32> = u_xlat0;
  let x_91 : vec3<f32> = (vec3<f32>(x_87, x_87, x_87) * vec3<f32>(x_89.x, x_89.y, x_89.z));
  let x_92 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_95 : vec4<f32> = u_xlat0;
  let x_96 : vec3<f32> = vec3<f32>(x_95.x, x_95.y, x_95.z);
  let x_97 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_103 : vec4<f32> = in_POSITION0;
  let x_106 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat1 = (vec3<f32>(x_103.y, x_103.y, x_103.y) * vec3<f32>(x_106.x, x_106.y, x_106.z));
  let x_110 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_112 : vec4<f32> = in_POSITION0;
  let x_115 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_112.x, x_112.x, x_112.x)) + x_115);
  let x_118 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_120 : vec4<f32> = in_POSITION0;
  let x_123 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(x_120.z, x_120.z, x_120.z)) + x_123);
  let x_125 : vec3<f32> = u_xlat1;
  let x_128 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_125 + vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_132 : vec3<f32> = u_xlat1;
  let x_139 : vec3<f32> = x_136.x_WorldSpaceCameraPos;
  let x_140 : vec3<f32> = (-(x_132) + x_139);
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat12 = dot(vec3<f32>(x_143.x, x_143.y, x_143.z), vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_148);
  let x_150 : f32 = u_xlat12;
  let x_152 : vec4<f32> = u_xlat2;
  let x_154 : vec3<f32> = (vec3<f32>(x_150, x_150, x_150) * vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_163 : f32 = x_136.unity_OrthoParams.w;
  u_xlatb12 = (x_163 == 0.0f);
  let x_166 : bool = u_xlatb12;
  if (x_166) {
    let x_173 : f32 = u_xlat2.x;
    x_168 = x_173;
  } else {
    let x_176 : f32 = x_136.unity_MatrixV[0i].z;
    x_168 = x_176;
  }
  let x_177 : f32 = x_168;
  vs_TEXCOORD3.w = x_177;
  let x_180 : vec3<f32> = in_NORMAL0;
  let x_184 : vec2<f32> = (vec2<f32>(x_180.y, x_180.z) * vec2<f32>(1.0f, 0.0f));
  let x_185 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_184.x, x_185.y, x_185.z, x_184.y);
  let x_187 : vec3<f32> = in_NORMAL0;
  let x_191 : vec4<f32> = u_xlat2;
  let x_194 : vec2<f32> = ((vec2<f32>(x_187.z, x_187.x) * vec2<f32>(0.0f, 1.0f)) + -(vec2<f32>(x_191.x, x_191.w)));
  let x_195 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_194.x, x_195.y, x_195.z, x_194.y);
  let x_198 : vec4<f32> = u_xlat2;
  let x_201 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_198.w, x_198.w, x_198.w) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_207 : vec4<f32> = u_xlat2;
  let x_210 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.x, x_207.x, x_207.x)) + x_210);
  let x_213 : vec3<f32> = u_xlat3;
  let x_214 : vec3<f32> = u_xlat3;
  u_xlat13 = dot(x_213, x_214);
  let x_216 : f32 = u_xlat13;
  u_xlat13 = max(x_216, 1.17549435e-38f);
  let x_218 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_218);
  let x_220 : f32 = u_xlat13;
  let x_222 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_220, x_220, x_220) * x_222);
  let x_225 : vec3<f32> = u_xlat3;
  let x_226 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
  let x_228 : bool = u_xlatb12;
  if (x_228) {
    let x_234 : f32 = u_xlat2.y;
    x_229 = x_234;
  } else {
    let x_237 : f32 = x_136.unity_MatrixV[1i].z;
    x_229 = x_237;
  }
  let x_238 : f32 = x_229;
  vs_TEXCOORD4.w = x_238;
  let x_241 : bool = u_xlatb12;
  if (x_241) {
    let x_246 : f32 = u_xlat2.z;
    x_242 = x_246;
  } else {
    let x_249 : f32 = x_136.unity_MatrixV[2i].z;
    x_242 = x_249;
  }
  let x_250 : f32 = x_242;
  vs_TEXCOORD5.w = x_250;
  let x_252 : vec4<f32> = u_xlat0;
  let x_254 : vec3<f32> = u_xlat3;
  let x_256 : vec3<f32> = (vec3<f32>(x_252.z, x_252.x, x_252.y) * vec3<f32>(x_254.y, x_254.z, x_254.x));
  let x_257 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : vec4<f32> = u_xlat0;
  let x_261 : vec3<f32> = u_xlat3;
  let x_264 : vec4<f32> = u_xlat2;
  let x_267 : vec3<f32> = ((vec3<f32>(x_259.y, x_259.z, x_259.x) * vec3<f32>(x_261.z, x_261.x, x_261.y)) + -(vec3<f32>(x_264.x, x_264.y, x_264.z)));
  let x_268 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_271 : f32 = x_20.unity_WorldTransformParams.w;
  u_xlatb12 = (x_271 >= 0.0f);
  let x_273 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_273);
  let x_276 : f32 = u_xlat12;
  let x_278 : vec4<f32> = u_xlat0;
  let x_280 : vec3<f32> = (vec3<f32>(x_276, x_276, x_276) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  vs_TEXCOORD6 = 0.0f;
  let x_286 : vec3<f32> = u_xlat1;
  vs_TEXCOORD7 = x_286;
  let x_287 : vec3<f32> = u_xlat1;
  let x_290 : vec4<f32> = x_136.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_287.y, x_287.y, x_287.y, x_287.y) * x_290);
  let x_293 : vec4<f32> = x_136.unity_MatrixVP[0i];
  let x_294 : vec3<f32> = u_xlat1;
  let x_297 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_293 * vec4<f32>(x_294.x, x_294.x, x_294.x, x_294.x)) + x_297);
  let x_300 : vec4<f32> = x_136.unity_MatrixVP[2i];
  let x_301 : vec3<f32> = u_xlat1;
  let x_304 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_300 * vec4<f32>(x_301.z, x_301.z, x_301.z, x_301.z)) + x_304);
  let x_310 : vec4<f32> = u_xlat0;
  let x_312 : vec4<f32> = x_136.unity_MatrixVP[3i];
  gl_Position = (x_310 + x_312);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD7_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD7, gl_Position);
}


