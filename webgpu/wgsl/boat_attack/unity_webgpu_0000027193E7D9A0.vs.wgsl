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
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(64) */
  x_PrevViewProjMatrix : mat4x4<f32>,
  /* @offset(128) */
  x_NonJitteredViewProjMatrix : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_59 : VGlobals;

var<private> u_xlatb12 : bool;

var<private> u_xlat12 : f32;

var<private> in_TEXCOORD4 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

var<private> vs_INTERP0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  u_xlat0 = (vec3<f32>(x_12.y, x_12.y, x_12.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_31 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_33 : vec3<f32> = in_POSITION0;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_31.x, x_31.y, x_31.z) * vec3<f32>(x_33.x, x_33.x, x_33.x)) + x_36);
  let x_40 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_42 : vec3<f32> = in_POSITION0;
  let x_45 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_40.x, x_40.y, x_40.z) * vec3<f32>(x_42.z, x_42.z, x_42.z)) + x_45);
  let x_47 : vec3<f32> = u_xlat0;
  let x_50 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  u_xlat0 = (x_47 + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_55 : vec3<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_59.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y) * x_61);
  let x_64 : vec4<f32> = x_59.unity_MatrixVP[0i];
  let x_65 : vec3<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_64 * vec4<f32>(x_65.x, x_65.x, x_65.x, x_65.x)) + x_68);
  let x_71 : vec4<f32> = x_59.unity_MatrixVP[2i];
  let x_72 : vec3<f32> = u_xlat0;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_71 * vec4<f32>(x_72.z, x_72.z, x_72.z, x_72.z)) + x_75);
  let x_77 : vec4<f32> = u_xlat1;
  let x_79 : vec4<f32> = x_59.unity_MatrixVP[3i];
  u_xlat1 = (x_77 + x_79);
  let x_89 : f32 = x_21.unity_MotionVectorsParams.z;
  let x_94 : f32 = u_xlat1.w;
  let x_97 : f32 = u_xlat1.z;
  gl_Position.z = ((-(x_89) * x_94) + x_97);
  let x_105 : f32 = x_21.unity_MotionVectorsParams.y;
  u_xlatb12 = !((x_105 == 0.0f));
  let x_108 : bool = u_xlatb12;
  if (x_108) {
    let x_113 : f32 = x_21.unity_MotionVectorsParams.x;
    u_xlatb12 = (x_113 == 1.0f);
    let x_116 : bool = u_xlatb12;
    if (x_116) {
      let x_123 : f32 = in_TEXCOORD4.x;
      u_xlat12 = x_123;
      let x_126 : f32 = in_TEXCOORD4.y;
      u_xlat9 = x_126;
      let x_129 : f32 = in_TEXCOORD4.z;
      u_xlat2.x = x_129;
    } else {
      let x_133 : f32 = in_POSITION0.x;
      u_xlat12 = x_133;
      let x_135 : f32 = in_POSITION0.y;
      u_xlat9 = x_135;
      let x_137 : f32 = in_POSITION0.z;
      u_xlat2.x = x_137;
    }
    let x_140 : vec3<f32> = u_xlat0;
    let x_143 : vec4<f32> = x_59.x_NonJitteredViewProjMatrix[1i];
    u_xlat6 = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_143.x, x_143.y, x_143.w));
    let x_147 : vec4<f32> = x_59.x_NonJitteredViewProjMatrix[0i];
    let x_149 : vec3<f32> = u_xlat0;
    let x_152 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_147.x, x_147.y, x_147.w) * vec3<f32>(x_149.x, x_149.x, x_149.x)) + x_152);
    let x_155 : vec4<f32> = x_59.x_NonJitteredViewProjMatrix[2i];
    let x_157 : vec3<f32> = u_xlat0;
    let x_160 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_155.x, x_155.y, x_155.w) * vec3<f32>(x_157.z, x_157.z, x_157.z)) + x_160);
    let x_164 : vec3<f32> = u_xlat6;
    let x_166 : vec4<f32> = x_59.x_NonJitteredViewProjMatrix[3i];
    vs_CLIP_POSITION_NO_JITTER0 = (x_164 + vec3<f32>(x_166.x, x_166.y, x_166.w));
    let x_170 : f32 = u_xlat9;
    let x_174 : vec4<f32> = x_21.unity_MatrixPreviousM[1i];
    u_xlat3 = (vec4<f32>(x_170, x_170, x_170, x_170) * x_174);
    let x_177 : vec4<f32> = x_21.unity_MatrixPreviousM[0i];
    let x_178 : f32 = u_xlat12;
    let x_181 : vec4<f32> = u_xlat3;
    u_xlat3 = ((x_177 * vec4<f32>(x_178, x_178, x_178, x_178)) + x_181);
    let x_184 : vec4<f32> = x_21.unity_MatrixPreviousM[2i];
    let x_185 : vec4<f32> = u_xlat2;
    let x_188 : vec4<f32> = u_xlat3;
    u_xlat2 = ((x_184 * vec4<f32>(x_185.x, x_185.x, x_185.x, x_185.x)) + x_188);
    let x_190 : vec4<f32> = u_xlat2;
    let x_192 : vec4<f32> = x_21.unity_MatrixPreviousM[3i];
    u_xlat2 = (x_190 + x_192);
    let x_194 : vec4<f32> = u_xlat2;
    let x_197 : vec4<f32> = x_59.x_PrevViewProjMatrix[1i];
    let x_199 : vec3<f32> = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_197.x, x_197.y, x_197.w));
    let x_200 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_199.x, x_199.y, x_199.z, x_200.w);
    let x_203 : vec4<f32> = x_59.x_PrevViewProjMatrix[0i];
    let x_205 : vec4<f32> = u_xlat2;
    let x_208 : vec4<f32> = u_xlat3;
    let x_210 : vec3<f32> = ((vec3<f32>(x_203.x, x_203.y, x_203.w) * vec3<f32>(x_205.x, x_205.x, x_205.x)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
    let x_211 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
    let x_214 : vec4<f32> = x_59.x_PrevViewProjMatrix[2i];
    let x_216 : vec4<f32> = u_xlat2;
    let x_219 : vec4<f32> = u_xlat3;
    let x_221 : vec3<f32> = ((vec3<f32>(x_214.x, x_214.y, x_214.w) * vec3<f32>(x_216.z, x_216.z, x_216.z)) + vec3<f32>(x_219.x, x_219.y, x_219.z));
    let x_222 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
    let x_226 : vec4<f32> = x_59.x_PrevViewProjMatrix[3i];
    let x_228 : vec4<f32> = u_xlat2;
    let x_231 : vec4<f32> = u_xlat2;
    vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = ((vec3<f32>(x_226.x, x_226.y, x_226.w) * vec3<f32>(x_228.w, x_228.w, x_228.w)) + vec3<f32>(x_231.x, x_231.y, x_231.z));
  } else {
    vs_CLIP_POSITION_NO_JITTER0 = vec3<f32>(0.0f, 0.0f, 0.0f);
    vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = vec3<f32>(0.0f, 0.0f, 0.0f);
  }
  let x_236 : vec4<f32> = u_xlat1;
  let x_237 : vec3<f32> = vec3<f32>(x_236.x, x_236.y, x_236.w);
  let x_240 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_237.x, x_237.y, x_240.z, x_237.z);
  let x_245 : vec4<f32> = in_TEXCOORD0;
  vs_INTERP0 = x_245;
  let x_247 : vec3<f32> = u_xlat0;
  vs_INTERP1 = x_247;
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_CLIP_POSITION_NO_JITTER0_1 : vec3<f32>,
  @location(1)
  vs_PREVIOUS_CLIP_POSITION_NO_JITTER0_1 : vec3<f32>,
  @location(2)
  vs_INTERP0_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(2) in_TEXCOORD4_param : vec3<f32>, @location(1) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD4 = in_TEXCOORD4_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_CLIP_POSITION_NO_JITTER0, vs_PREVIOUS_CLIP_POSITION_NO_JITTER0, vs_INTERP0);
}


