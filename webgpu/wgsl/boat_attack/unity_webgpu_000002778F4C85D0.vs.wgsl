diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(16) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(80) */
  x_CullDistance : f32,
  /* @offset(84) */
  x_MaxAllowedSubdiv : i32,
  /* @offset(88) */
  x_MinAllowedSubdiv : i32,
  /* @offset(92) */
  x_OffsetSize : f32,
}

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

struct Props {
  /* @offset(0) */
  x_Validity : f32,
  /* @offset(4) */
  x_DilationThreshold : f32,
  /* @offset(8) */
  x_TouchupedByVolume : f32,
  /* @offset(16) */
  x_IndexInAtlas : vec4<f32>,
  /* @offset(32) */
  x_Offset : vec4<f32>,
  /* @offset(48) */
  x_RelativeSize : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_20 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_42 : UnityPerDraw;

var<private> u_xlatb1 : bool;

var<private> u_xlati3 : i32;

@group(1) @binding(2) var<uniform> x_129 : Props;

var<private> u_xlatb5 : bool;

var<private> u_xlatb3 : bool;

var<private> u_xlat3 : f32;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> phase0_Output0_3 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_219 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_POSITION0;
  let x_24 : f32 = x_20.x_OffsetSize;
  let x_26 : f32 = x_20.x_OffsetSize;
  let x_27 : vec2<f32> = vec2<f32>(x_24, x_26);
  let x_31 : vec2<f32> = (vec2<f32>(x_13.x, x_13.y) * vec2<f32>(x_27.x, x_27.y));
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_31.x, x_31.y, x_32.z, x_32.w);
  let x_35 : vec4<f32> = u_xlat0;
  let x_47 : vec4<f32> = x_42.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_35.y, x_35.y, x_35.y, x_35.y) * x_47);
  let x_50 : vec4<f32> = x_42.unity_ObjectToWorld[0i];
  let x_51 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_50 * vec4<f32>(x_51.x, x_51.x, x_51.x, x_51.x)) + x_54);
  let x_58 : vec4<f32> = x_42.unity_ObjectToWorld[2i];
  let x_59 : vec4<f32> = in_POSITION0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_58 * vec4<f32>(x_59.z, x_59.z, x_59.z, x_59.z)) + x_62);
  let x_64 : vec4<f32> = u_xlat0;
  let x_67 : vec4<f32> = x_42.unity_ObjectToWorld[3i];
  u_xlat0 = (x_64 + x_67);
  let x_69 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_69.y, x_69.y, x_69.y, x_69.y) * x_72);
  let x_75 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_75 * vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x)) + x_79);
  let x_82 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_83 : vec4<f32> = u_xlat0;
  let x_86 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_82 * vec4<f32>(x_83.z, x_83.z, x_83.z, x_83.z)) + x_86);
  let x_89 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_90 : vec4<f32> = u_xlat0;
  let x_93 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_89 * vec4<f32>(x_90.w, x_90.w, x_90.w, x_90.w)) + x_93);
  let x_97 : vec3<f32> = x_20.x_WorldSpaceCameraPos;
  let x_100 : vec4<f32> = x_42.unity_ObjectToWorld[3i];
  let x_102 : vec3<f32> = (-(x_97) + vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_105 : vec4<f32> = u_xlat1;
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_105.x, x_105.y, x_105.z), vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_114 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_114);
  let x_121 : f32 = x_20.x_CullDistance;
  let x_123 : f32 = u_xlat1.x;
  u_xlatb1 = (x_121 < x_123);
  let x_132 : f32 = x_129.x_IndexInAtlas.w;
  u_xlati3 = i32(x_132);
  let x_137 : i32 = x_20.x_MaxAllowedSubdiv;
  let x_138 : i32 = u_xlati3;
  u_xlatb5 = (x_137 < x_138);
  let x_141 : i32 = u_xlati3;
  let x_144 : i32 = x_20.x_MinAllowedSubdiv;
  u_xlatb3 = (x_141 < x_144);
  let x_146 : bool = u_xlatb5;
  let x_147 : bool = u_xlatb1;
  u_xlatb1 = (x_146 | x_147);
  let x_149 : bool = u_xlatb3;
  let x_150 : bool = u_xlatb1;
  u_xlatb1 = (x_149 | x_150);
  let x_154 : vec4<f32> = x_129.x_Offset;
  let x_157 : vec4<f32> = x_129.x_Offset;
  u_xlat3 = dot(vec3<f32>(x_154.x, x_154.y, x_154.z), vec3<f32>(x_157.x, x_157.y, x_157.z));
  let x_161 : f32 = u_xlat3;
  u_xlatb3 = (0.00000099999999747524f >= x_161);
  let x_163 : bool = u_xlatb3;
  let x_164 : bool = u_xlatb1;
  u_xlatb1 = (x_163 | x_164);
  let x_171 : bool = u_xlatb1;
  let x_174 : vec4<f32> = u_xlat0;
  gl_Position = select(x_174, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<bool>(x_171, x_171, x_171, x_171));
  let x_182 : vec3<f32> = in_NORMAL0;
  let x_184 : vec4<f32> = x_42.unity_ObjectToWorld[0i];
  u_xlat0.x = dot(x_182, vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_188 : vec3<f32> = in_NORMAL0;
  let x_190 : vec4<f32> = x_42.unity_ObjectToWorld[1i];
  u_xlat0.y = dot(x_188, vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : vec3<f32> = in_NORMAL0;
  let x_196 : vec4<f32> = x_42.unity_ObjectToWorld[2i];
  u_xlat0.z = dot(x_194, vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_201 : vec4<f32> = u_xlat0;
  let x_203 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_201.x, x_201.y, x_201.z), vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_206);
  let x_208 : f32 = u_xlat6;
  let x_210 : vec4<f32> = u_xlat0;
  let x_212 : vec3<f32> = (vec3<f32>(x_208, x_208, x_208) * vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
  let x_217 : bool = u_xlatb1;
  if (x_217) {
    x_219 = vec3<f32>(0.0f, 0.0f, 0.0f);
  } else {
    let x_224 : vec4<f32> = u_xlat0;
    x_219 = vec3<f32>(x_224.x, x_224.y, x_224.z);
  }
  let x_226 : vec3<f32> = x_219;
  vs_TEXCOORD1 = x_226;
  vs_COLOR0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  phase0_Output0_3 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
  let x_233 : vec4<f32> = phase0_Output0_3;
  vs_TEXCOORD0 = vec2<f32>(x_233.x, x_233.y);
  let x_236 : vec4<f32> = phase0_Output0_3;
  vs_TEXCOORD2 = vec2<f32>(x_236.z, x_236.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position);
}


