struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
  @size(12)
  padding_1 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(7) var<uniform> x_18 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD6 : vec3<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_102 : vec2<f32>;
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
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_48 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_49 : vec4<f32> = in_POSITION0;
  let x_52 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_48 * vec4<f32>(x_49.w, x_49.w, x_49.w, x_49.w)) + x_52);
  let x_55 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y) * x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_63 : vec4<f32> = u_xlat1;
  let x_66 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_62 * vec4<f32>(x_63.x, x_63.x, x_63.x, x_63.x)) + x_66);
  let x_69 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_70 : vec4<f32> = u_xlat1;
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_69 * vec4<f32>(x_70.z, x_70.z, x_70.z, x_70.z)) + x_73);
  let x_82 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_83 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = u_xlat2;
  gl_Position = ((x_82 * vec4<f32>(x_83.w, x_83.w, x_83.w, x_83.w)) + x_86);
  let x_96 : f32 = x_18.x_UVSec;
  u_xlatb1 = (x_96 == 0.0f);
  let x_99 : bool = u_xlatb1;
  if (x_99) {
    let x_107 : vec2<f32> = in_TEXCOORD0;
    x_102 = x_107;
  } else {
    let x_110 : vec2<f32> = in_TEXCOORD1;
    x_102 = x_110;
  }
  let x_111 : vec2<f32> = x_102;
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_112.w);
  let x_115 : vec4<f32> = u_xlat1;
  let x_119 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_123 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_125 : vec2<f32> = ((vec2<f32>(x_115.x, x_115.y) * vec2<f32>(x_119.x, x_119.y)) + vec2<f32>(x_123.z, x_123.w));
  let x_126 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_126.x, x_126.y, x_125.x, x_125.y);
  let x_128 : vec2<f32> = in_TEXCOORD0;
  let x_131 : vec4<f32> = x_18.x_MainTex_ST;
  let x_135 : vec4<f32> = x_18.x_MainTex_ST;
  let x_137 : vec2<f32> = ((x_128 * vec2<f32>(x_131.x, x_131.y)) + vec2<f32>(x_135.z, x_135.w));
  let x_138 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_140 : vec4<f32> = in_POSITION0;
  let x_143 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_145 : vec3<f32> = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_151 : vec4<f32> = in_POSITION0;
  let x_154 : vec4<f32> = u_xlat1;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151.x, x_151.x, x_151.x)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_162 : vec4<f32> = in_POSITION0;
  let x_165 : vec4<f32> = u_xlat1;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_173 : vec4<f32> = in_POSITION0;
  let x_176 : vec4<f32> = u_xlat1;
  let x_178 : vec3<f32> = ((vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_173.w, x_173.w, x_173.w)) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_182 : vec4<f32> = u_xlat1;
  let x_186 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_188 : vec3<f32> = (vec3<f32>(x_182.x, x_182.y, x_182.z) + -(x_186));
  let x_189 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_194 : vec4<f32> = u_xlat1;
  let x_198 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_202 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_204 : vec3<f32> = ((-(vec3<f32>(x_194.x, x_194.y, x_194.z)) * vec3<f32>(x_198.w, x_198.w, x_198.w)) + vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_209 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = vec3<f32>(x_209.x, x_209.y, x_209.z);
  u_xlat2.w = 0.0f;
  let x_214 : vec4<f32> = u_xlat2;
  vs_TEXCOORD2 = vec4<f32>(x_214.w, x_214.w, x_214.w, x_214.x);
  let x_217 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = vec4<f32>(x_217.w, x_217.w, x_217.w, x_217.y);
  let x_222 : f32 = u_xlat2.z;
  vs_TEXCOORD4.w = x_222;
  let x_226 : vec3<f32> = in_NORMAL0;
  let x_228 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_226, vec3<f32>(x_228.x, x_228.y, x_228.z));
  let x_233 : vec3<f32> = in_NORMAL0;
  let x_235 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_233, vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_239 : vec3<f32> = in_NORMAL0;
  let x_241 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_239, vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_246 : vec4<f32> = u_xlat1;
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_246.x, x_246.y, x_246.z), vec3<f32>(x_248.x, x_248.y, x_248.z));
  let x_251 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_251);
  let x_253 : f32 = u_xlat10;
  let x_255 : vec4<f32> = u_xlat1;
  let x_257 : vec3<f32> = (vec3<f32>(x_253, x_253, x_253) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat0;
  let x_264 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_266 : vec3<f32> = (vec3<f32>(x_260.y, x_260.y, x_260.y) * vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_272 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = u_xlat1;
  let x_277 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_272.x, x_272.x, x_272.x)) + vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_281 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_283 : vec4<f32> = u_xlat0;
  let x_286 : vec4<f32> = u_xlat1;
  let x_288 : vec3<f32> = ((vec3<f32>(x_281.x, x_281.y, x_281.z) * vec3<f32>(x_283.z, x_283.z, x_283.z)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_294 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_296 : vec4<f32> = u_xlat0;
  let x_299 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec3<f32>(x_294.x, x_294.y, x_294.z) * vec3<f32>(x_296.w, x_296.w, x_296.w)) + vec3<f32>(x_299.x, x_299.y, x_299.z));
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

