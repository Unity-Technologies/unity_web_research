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

@group(0) @binding(10) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

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
  vs_TEXCOORD1.w = 0.0f;
  let x_135 : vec4<f32> = in_POSITION0;
  let x_138 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_140 : vec3<f32> = (vec3<f32>(x_135.y, x_135.y, x_135.y) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_144 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_146 : vec4<f32> = in_POSITION0;
  let x_149 : vec4<f32> = u_xlat0;
  let x_151 : vec3<f32> = ((vec3<f32>(x_144.x, x_144.y, x_144.z) * vec3<f32>(x_146.x, x_146.x, x_146.x)) + vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_152 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_155 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_157 : vec4<f32> = in_POSITION0;
  let x_160 : vec4<f32> = u_xlat0;
  let x_162 : vec3<f32> = ((vec3<f32>(x_155.x, x_155.y, x_155.z) * vec3<f32>(x_157.z, x_157.z, x_157.z)) + vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_168 : vec4<f32> = in_POSITION0;
  let x_171 : vec4<f32> = u_xlat0;
  let x_173 : vec3<f32> = ((vec3<f32>(x_166.x, x_166.y, x_166.z) * vec3<f32>(x_168.w, x_168.w, x_168.w)) + vec3<f32>(x_171.x, x_171.y, x_171.z));
  let x_174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat0;
  let x_180 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_182 : vec3<f32> = (vec3<f32>(x_176.x, x_176.y, x_176.z) + -(x_180));
  let x_183 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_182.x, x_182.y, x_182.z, x_183.w);
  u_xlat0.w = 0.0f;
  let x_188 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec4<f32>(x_188.w, x_188.w, x_188.w, x_188.x);
  let x_191 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = vec4<f32>(x_191.w, x_191.w, x_191.w, x_191.y);
  let x_196 : f32 = u_xlat0.z;
  vs_TEXCOORD4.w = x_196;
  let x_200 : vec3<f32> = in_NORMAL0;
  let x_202 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_200, vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_207 : vec3<f32> = in_NORMAL0;
  let x_209 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_207, vec3<f32>(x_209.x, x_209.y, x_209.z));
  let x_213 : vec3<f32> = in_NORMAL0;
  let x_215 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_213, vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_220 : vec4<f32> = u_xlat0;
  let x_222 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_220.x, x_220.y, x_220.z), vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat6;
  let x_229 : vec4<f32> = u_xlat0;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

