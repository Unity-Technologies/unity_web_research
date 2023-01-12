struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : bool;
  var x_95 : vec2<f32>;
  var u_xlat7 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_24 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_24);
  let x_28 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_29 : vec4<f32> = in_POSITION0;
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_28 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_35 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat0;
  let x_51 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_51);
  let x_54 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_55 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_54 * vec4<f32>(x_55.x, x_55.x, x_55.x, x_55.x)) + x_58);
  let x_61 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_62 : vec4<f32> = u_xlat0;
  let x_65 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_61 * vec4<f32>(x_62.z, x_62.z, x_62.z, x_62.z)) + x_65);
  let x_68 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_69 : vec4<f32> = u_xlat0;
  let x_72 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_68 * vec4<f32>(x_69.w, x_69.w, x_69.w, x_69.w)) + x_72);
  let x_80 : vec4<f32> = u_xlat0;
  gl_Position = x_80;
  let x_89 : f32 = x_18.x_UVSec;
  u_xlatb1 = (x_89 == 0.0f);
  let x_92 : bool = u_xlatb1;
  if (x_92) {
    let x_100 : vec2<f32> = in_TEXCOORD0;
    x_95 = x_100;
  } else {
    let x_103 : vec2<f32> = in_TEXCOORD1;
    x_95 = x_103;
  }
  let x_104 : vec2<f32> = x_95;
  let x_105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_104.x, x_104.y, x_105.z, x_105.w);
  let x_108 : vec4<f32> = u_xlat1;
  let x_112 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_116 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_118 : vec2<f32> = ((vec2<f32>(x_108.x, x_108.y) * vec2<f32>(x_112.x, x_112.y)) + vec2<f32>(x_116.z, x_116.w));
  let x_119 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_119.x, x_119.y, x_118.x, x_118.y);
  let x_121 : vec2<f32> = in_TEXCOORD0;
  let x_124 : vec4<f32> = x_18.x_MainTex_ST;
  let x_128 : vec4<f32> = x_18.x_MainTex_ST;
  let x_130 : vec2<f32> = ((x_121 * vec2<f32>(x_124.x, x_124.y)) + vec2<f32>(x_128.z, x_128.w));
  let x_131 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_130.x, x_130.y, x_131.z, x_131.w);
  let x_137 : f32 = u_xlat0.z;
  vs_TEXCOORD1.w = x_137;
  let x_141 : vec4<f32> = in_POSITION0;
  let x_144 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_146 : vec3<f32> = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_152 : vec4<f32> = in_POSITION0;
  let x_155 : vec4<f32> = u_xlat1;
  let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.x, x_152.x, x_152.x)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_163 : vec4<f32> = in_POSITION0;
  let x_166 : vec4<f32> = u_xlat1;
  let x_168 : vec3<f32> = ((vec3<f32>(x_161.x, x_161.y, x_161.z) * vec3<f32>(x_163.z, x_163.z, x_163.z)) + vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_174 : vec4<f32> = in_POSITION0;
  let x_177 : vec4<f32> = u_xlat1;
  let x_179 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.w, x_174.w, x_174.w)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_182 : vec4<f32> = u_xlat1;
  let x_186 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_188 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) + -(x_186));
  let x_189 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  u_xlat1.w = 0.0f;
  let x_193 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec4<f32>(x_193.w, x_193.w, x_193.w, x_193.x);
  let x_196 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = vec4<f32>(x_196.w, x_196.w, x_196.w, x_196.y);
  let x_200 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_200;
  let x_204 : vec3<f32> = in_NORMAL0;
  let x_206 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_204, vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_211 : vec3<f32> = in_NORMAL0;
  let x_213 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_211, vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_217 : vec3<f32> = in_NORMAL0;
  let x_219 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_217, vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec4<f32> = u_xlat1;
  u_xlat7 = dot(vec3<f32>(x_224.x, x_224.y, x_224.z), vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : f32 = u_xlat7;
  u_xlat7 = inverseSqrt(x_229);
  let x_231 : f32 = u_xlat7;
  let x_233 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = (vec3<f32>(x_231, x_231, x_231) * vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  let x_242 : f32 = u_xlat0.y;
  let x_244 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.y = (x_242 * x_244);
  let x_247 : vec4<f32> = u_xlat0;
  let x_251 : vec3<f32> = (vec3<f32>(x_247.x, x_247.w, x_247.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_252 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_251.x, x_252.y, x_251.y, x_251.z);
  let x_255 : vec4<f32> = u_xlat0;
  let x_256 : vec2<f32> = vec2<f32>(x_255.z, x_255.w);
  let x_257 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_257.x, x_257.y, x_256.x, x_256.y);
  let x_259 : vec4<f32> = u_xlat1;
  let x_261 : vec4<f32> = u_xlat1;
  let x_263 : vec2<f32> = (vec2<f32>(x_259.z, x_259.z) + vec2<f32>(x_261.x, x_261.w));
  let x_264 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_263.x, x_263.y, x_264.z, x_264.w);
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
  @location(5)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD7);
}

