type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
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

struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_NORMAL0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_26 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_112 : VGlobals;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb12 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = x_12;
  let x_19 : vec3<f32> = in_NORMAL0;
  let x_32 : vec4<f32> = x_26.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_19, vec3<f32>(x_32.x, x_32.y, x_32.z));
  let x_38 : vec3<f32> = in_NORMAL0;
  let x_40 : vec4<f32> = x_26.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_38, vec3<f32>(x_40.x, x_40.y, x_40.z));
  let x_45 : vec3<f32> = in_NORMAL0;
  let x_48 : vec4<f32> = x_26.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_45, vec3<f32>(x_48.x, x_48.y, x_48.z));
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_53.x, x_53.y, x_53.z), vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : f32 = u_xlat12;
  u_xlat12 = max(x_58, 1.17549435e-37f);
  let x_61 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_61);
  let x_63 : f32 = u_xlat12;
  let x_65 : vec4<f32> = u_xlat0;
  let x_67 : vec3<f32> = (vec3<f32>(x_63, x_63, x_63) * vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_68 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_72 : vec4<f32> = u_xlat0;
  let x_73 : vec3<f32> = vec3<f32>(x_72.x, x_72.y, x_72.z);
  let x_74 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_73.x, x_73.y, x_73.z, x_74.w);
  let x_79 : vec3<f32> = in_POSITION0;
  let x_82 : vec4<f32> = x_26.unity_ObjectToWorld[1i];
  u_xlat1 = (vec3<f32>(x_79.y, x_79.y, x_79.y) * vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_86 : vec4<f32> = x_26.unity_ObjectToWorld[0i];
  let x_88 : vec3<f32> = in_POSITION0;
  let x_91 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_86.x, x_86.y, x_86.z) * vec3<f32>(x_88.x, x_88.x, x_88.x)) + x_91);
  let x_94 : vec4<f32> = x_26.unity_ObjectToWorld[2i];
  let x_96 : vec3<f32> = in_POSITION0;
  let x_99 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_94.x, x_94.y, x_94.z) * vec3<f32>(x_96.z, x_96.z, x_96.z)) + x_99);
  let x_101 : vec3<f32> = u_xlat1;
  let x_104 : vec4<f32> = x_26.unity_ObjectToWorld[3i];
  u_xlat1 = (x_101 + vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_108 : vec3<f32> = u_xlat1;
  let x_115 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_108) + x_115);
  let x_118 : f32 = u_xlat2.x;
  vs_TEXCOORD1.w = x_118;
  let x_125 : vec4<f32> = in_TANGENT0;
  let x_128 : vec4<f32> = x_26.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_125.y, x_125.y, x_125.y) * vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_132 : vec4<f32> = x_26.unity_ObjectToWorld[0i];
  let x_134 : vec4<f32> = in_TANGENT0;
  let x_137 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.x, x_134.x, x_134.x)) + x_137);
  let x_140 : vec4<f32> = x_26.unity_ObjectToWorld[2i];
  let x_142 : vec4<f32> = in_TANGENT0;
  let x_145 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142.z, x_142.z, x_142.z)) + x_145);
  let x_147 : vec3<f32> = u_xlat3;
  let x_148 : vec3<f32> = u_xlat3;
  u_xlat12 = dot(x_147, x_148);
  let x_150 : f32 = u_xlat12;
  u_xlat12 = max(x_150, 1.17549435e-37f);
  let x_152 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_152);
  let x_154 : f32 = u_xlat12;
  let x_156 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_154, x_154, x_154) * x_156);
  let x_159 : vec3<f32> = u_xlat3;
  let x_160 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : f32 = u_xlat2.y;
  vs_TEXCOORD2.w = x_163;
  let x_167 : f32 = u_xlat2.z;
  vs_TEXCOORD3.w = x_167;
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = u_xlat3;
  u_xlat2 = (vec3<f32>(x_169.z, x_169.x, x_169.y) * vec3<f32>(x_171.y, x_171.z, x_171.x));
  let x_174 : vec4<f32> = u_xlat0;
  let x_176 : vec3<f32> = u_xlat3;
  let x_179 : vec3<f32> = u_xlat2;
  let x_181 : vec3<f32> = ((vec3<f32>(x_174.y, x_174.z, x_174.x) * vec3<f32>(x_176.z, x_176.x, x_176.y)) + -(x_179));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  let x_189 : f32 = x_26.unity_WorldTransformParams.w;
  u_xlatb12 = (x_189 >= 0.0f);
  let x_192 : bool = u_xlatb12;
  u_xlat12 = select(-1.0f, 1.0f, x_192);
  let x_196 : f32 = u_xlat12;
  let x_199 : f32 = in_TANGENT0.w;
  u_xlat12 = (x_196 * x_199);
  let x_201 : f32 = u_xlat12;
  let x_203 : vec4<f32> = u_xlat0;
  let x_205 : vec3<f32> = (vec3<f32>(x_201, x_201, x_201) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_210 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD4 = x_210;
  let x_211 : vec3<f32> = u_xlat1;
  let x_214 : vec4<f32> = x_112.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_211.y, x_211.y, x_211.y, x_211.y) * x_214);
  let x_217 : vec4<f32> = x_112.unity_MatrixVP[0i];
  let x_218 : vec3<f32> = u_xlat1;
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_217 * vec4<f32>(x_218.x, x_218.x, x_218.x, x_218.x)) + x_221);
  let x_224 : vec4<f32> = x_112.unity_MatrixVP[2i];
  let x_225 : vec3<f32> = u_xlat1;
  let x_228 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_224 * vec4<f32>(x_225.z, x_225.z, x_225.z, x_225.z)) + x_228);
  let x_234 : vec4<f32> = u_xlat0;
  let x_236 : vec4<f32> = x_112.unity_MatrixVP[3i];
  gl_Position = (x_234 + x_236);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(4) in_TEXCOORD0_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec3<f32>, @location(2) in_TANGENT0_param : vec4<f32>, @location(3) in_COLOR0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_COLOR0 = in_COLOR0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, gl_Position);
}

