struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(5) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_93 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat0;
  let x_50 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_50);
  let x_53 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_54 : vec4<f32> = u_xlat0;
  let x_57 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_53 * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + x_57);
  let x_60 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_61 : vec4<f32> = u_xlat0;
  let x_64 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_73 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_74 : vec4<f32> = u_xlat0;
  let x_77 : vec4<f32> = u_xlat1;
  gl_Position = ((x_73 * vec4<f32>(x_74.w, x_74.w, x_74.w, x_74.w)) + x_77);
  let x_87 : f32 = x_18.x_UVSec;
  u_xlatb0 = (x_87 == 0.0f);
  let x_90 : bool = u_xlatb0;
  if (x_90) {
    let x_98 : vec2<f32> = in_TEXCOORD0;
    x_93 = x_98;
  } else {
    let x_101 : vec2<f32> = in_TEXCOORD1;
    x_93 = x_101;
  }
  let x_102 : vec2<f32> = x_93;
  let x_103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_106 : vec4<f32> = u_xlat0;
  let x_110 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_114 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_116 : vec2<f32> = ((vec2<f32>(x_106.x, x_106.y) * vec2<f32>(x_110.x, x_110.y)) + vec2<f32>(x_114.z, x_114.w));
  let x_117 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_117.x, x_117.y, x_116.x, x_116.y);
  let x_119 : vec2<f32> = in_TEXCOORD0;
  let x_122 : vec4<f32> = x_18.x_MainTex_ST;
  let x_126 : vec4<f32> = x_18.x_MainTex_ST;
  let x_128 : vec2<f32> = ((x_119 * vec2<f32>(x_122.x, x_122.y)) + vec2<f32>(x_126.z, x_126.w));
  let x_129 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_131 : vec4<f32> = in_POSITION0;
  let x_134 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_136 : vec3<f32> = (vec3<f32>(x_131.y, x_131.y, x_131.y) * vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_140 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_142 : vec4<f32> = in_POSITION0;
  let x_145 : vec4<f32> = u_xlat0;
  let x_147 : vec3<f32> = ((vec3<f32>(x_140.x, x_140.y, x_140.z) * vec3<f32>(x_142.x, x_142.x, x_142.x)) + vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_148 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_153 : vec4<f32> = in_POSITION0;
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.z, x_153.z, x_153.z)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_162 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_164 : vec4<f32> = in_POSITION0;
  let x_167 : vec4<f32> = u_xlat0;
  let x_169 : vec3<f32> = ((vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(x_164.w, x_164.w, x_164.w)) + vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_178 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  vs_TEXCOORD1 = (vec3<f32>(x_174.x, x_174.y, x_174.z) + -(x_178));
  u_xlat0.w = 0.0f;
  let x_185 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec4<f32>(x_185.w, x_185.w, x_185.w, x_185.x);
  let x_188 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec4<f32>(x_188.w, x_188.w, x_188.w, x_188.y);
  let x_193 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_193;
  let x_198 : vec3<f32> = in_NORMAL0;
  let x_200 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_198, vec3<f32>(x_200.x, x_200.y, x_200.z));
  let x_205 : vec3<f32> = in_NORMAL0;
  let x_207 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_205, vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_211 : vec3<f32> = in_NORMAL0;
  let x_213 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_211, vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_218 : vec4<f32> = u_xlat0;
  let x_220 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_218.x, x_218.y, x_218.z), vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_223);
  let x_225 : f32 = u_xlat6;
  let x_227 : vec4<f32> = u_xlat0;
  let x_229 : vec3<f32> = (vec3<f32>(x_225, x_225, x_225) * vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD4);
}

