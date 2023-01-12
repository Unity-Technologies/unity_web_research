struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_141 : vec2<f32>;
  var u_xlat6 : f32;
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
  let x_36 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_37 : vec4<f32> = in_POSITION0;
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_36 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + x_40);
  let x_42 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat0 = (x_42 + x_44);
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
  let x_86 : f32 = u_xlat0.z;
  let x_89 : f32 = x_18.x_ProjectionParams.y;
  u_xlat0.x = (x_86 / x_89);
  let x_94 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_94) + 1.0f);
  let x_100 : f32 = u_xlat0.x;
  let x_102 : f32 = x_18.x_ProjectionParams.z;
  u_xlat0.x = (x_100 * x_102);
  let x_106 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_106, 0.0f);
  let x_111 : f32 = u_xlat0.x;
  let x_114 : f32 = x_18.unity_FogParams.x;
  u_xlat0.x = (x_111 * x_114);
  let x_118 : f32 = u_xlat0.x;
  let x_120 : f32 = u_xlat0.x;
  u_xlat0.x = (x_118 * -(x_120));
  let x_126 : f32 = u_xlat0.x;
  vs_TEXCOORD1.w = exp2(x_126);
  let x_136 : f32 = x_18.x_UVSec;
  u_xlatb0 = (x_136 == 0.0f);
  let x_138 : bool = u_xlatb0;
  if (x_138) {
    let x_146 : vec2<f32> = in_TEXCOORD0;
    x_141 = x_146;
  } else {
    let x_149 : vec2<f32> = in_TEXCOORD1;
    x_141 = x_149;
  }
  let x_150 : vec2<f32> = x_141;
  let x_151 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_150.x, x_150.y, x_151.z, x_151.w);
  let x_154 : vec4<f32> = u_xlat0;
  let x_158 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_162 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_164 : vec2<f32> = ((vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_158.x, x_158.y)) + vec2<f32>(x_162.z, x_162.w));
  let x_165 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_165.x, x_165.y, x_164.x, x_164.y);
  let x_167 : vec2<f32> = in_TEXCOORD0;
  let x_170 : vec4<f32> = x_18.x_MainTex_ST;
  let x_174 : vec4<f32> = x_18.x_MainTex_ST;
  let x_176 : vec2<f32> = ((x_167 * vec2<f32>(x_170.x, x_170.y)) + vec2<f32>(x_174.z, x_174.w));
  let x_177 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_176.x, x_176.y, x_177.z, x_177.w);
  let x_179 : vec4<f32> = in_POSITION0;
  let x_182 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_184 : vec3<f32> = (vec3<f32>(x_179.y, x_179.y, x_179.y) * vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_188 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_190 : vec4<f32> = in_POSITION0;
  let x_193 : vec4<f32> = u_xlat0;
  let x_195 : vec3<f32> = ((vec3<f32>(x_188.x, x_188.y, x_188.z) * vec3<f32>(x_190.x, x_190.x, x_190.x)) + vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_196 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
  let x_199 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_201 : vec4<f32> = in_POSITION0;
  let x_204 : vec4<f32> = u_xlat0;
  let x_206 : vec3<f32> = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201.z, x_201.z, x_201.z)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_210 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_212 : vec4<f32> = in_POSITION0;
  let x_215 : vec4<f32> = u_xlat0;
  let x_217 : vec3<f32> = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.w, x_212.w, x_212.w)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
  let x_218 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
  let x_220 : vec4<f32> = u_xlat0;
  let x_224 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_226 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) + -(x_224));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_230 : vec4<f32> = u_xlat1;
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_230.x, x_230.y, x_230.z), vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_235);
  let x_237 : f32 = u_xlat6;
  let x_239 : vec4<f32> = u_xlat1;
  let x_241 : vec3<f32> = (vec3<f32>(x_237, x_237, x_237) * vec3<f32>(x_239.x, x_239.y, x_239.z));
  let x_242 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_244 : vec4<f32> = u_xlat0;
  let x_248 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_252 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_254 : vec3<f32> = ((-(vec3<f32>(x_244.x, x_244.y, x_244.z)) * vec3<f32>(x_248.w, x_248.w, x_248.w)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_259 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = vec3<f32>(x_259.x, x_259.y, x_259.z);
  u_xlat1.w = 0.0f;
  let x_263 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = vec4<f32>(x_263.w, x_263.w, x_263.w, x_263.x);
  let x_266 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = vec4<f32>(x_266.w, x_266.w, x_266.w, x_266.y);
  let x_270 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_270;
  let x_274 : vec3<f32> = in_NORMAL0;
  let x_277 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_274, vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_281 : vec3<f32> = in_NORMAL0;
  let x_283 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_281, vec3<f32>(x_283.x, x_283.y, x_283.z));
  let x_287 : vec3<f32> = in_NORMAL0;
  let x_289 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_287, vec3<f32>(x_289.x, x_289.y, x_289.z));
  let x_293 : vec4<f32> = u_xlat0;
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat6 = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_298);
  let x_300 : f32 = u_xlat6;
  let x_302 : vec4<f32> = u_xlat0;
  let x_304 : vec3<f32> = (vec3<f32>(x_300, x_300, x_300) * vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD5, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

