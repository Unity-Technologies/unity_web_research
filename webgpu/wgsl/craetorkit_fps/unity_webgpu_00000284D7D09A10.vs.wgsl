struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
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

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb1 : bool;
  var x_95 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
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
  let x_133 : vec4<f32> = in_POSITION0;
  let x_136 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_138 : vec3<f32> = (vec3<f32>(x_133.y, x_133.y, x_133.y) * vec3<f32>(x_136.x, x_136.y, x_136.z));
  let x_139 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  let x_142 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_144 : vec4<f32> = in_POSITION0;
  let x_147 : vec4<f32> = u_xlat1;
  let x_149 : vec3<f32> = ((vec3<f32>(x_142.x, x_142.y, x_142.z) * vec3<f32>(x_144.x, x_144.x, x_144.x)) + vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_149.x, x_149.y, x_149.z, x_150.w);
  let x_153 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_155 : vec4<f32> = in_POSITION0;
  let x_158 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.z, x_155.z, x_155.z)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_166 : vec4<f32> = in_POSITION0;
  let x_169 : vec4<f32> = u_xlat1;
  let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166.w, x_166.w, x_166.w)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_175 : vec4<f32> = u_xlat1;
  let x_179 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_181 : vec3<f32> = (vec3<f32>(x_175.x, x_175.y, x_175.z) + -(x_179));
  let x_182 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_190 : vec4<f32> = in_TANGENT0;
  let x_193 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat2 = (vec3<f32>(x_190.y, x_190.y, x_190.y) * vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_199 : vec4<f32> = in_TANGENT0;
  let x_202 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_199.x, x_199.x, x_199.x)) + x_202);
  let x_205 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_207 : vec4<f32> = in_TANGENT0;
  let x_210 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.z, x_207.z, x_207.z)) + x_210);
  let x_214 : vec3<f32> = u_xlat2;
  let x_215 : vec3<f32> = u_xlat2;
  u_xlat16 = dot(x_214, x_215);
  let x_217 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_217);
  let x_219 : f32 = u_xlat16;
  let x_221 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_219, x_219, x_219) * x_221);
  let x_224 : vec3<f32> = u_xlat2;
  let x_225 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_228 : vec4<f32> = u_xlat1;
  let x_232 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_236 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat3 = ((-(vec3<f32>(x_228.x, x_228.y, x_228.z)) * vec3<f32>(x_232.w, x_232.w, x_232.w)) + vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_241 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = vec3<f32>(x_241.x, x_241.y, x_241.z);
  let x_245 : f32 = u_xlat3.x;
  vs_TEXCOORD2.w = x_245;
  let x_249 : vec3<f32> = in_NORMAL0;
  let x_252 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_249, vec3<f32>(x_252.x, x_252.y, x_252.z));
  let x_256 : vec3<f32> = in_NORMAL0;
  let x_258 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_256, vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_262 : vec3<f32> = in_NORMAL0;
  let x_264 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_262, vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_269 : vec4<f32> = u_xlat1;
  let x_271 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_269.x, x_269.y, x_269.z), vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_274);
  let x_276 : f32 = u_xlat16;
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : vec3<f32> = (vec3<f32>(x_276, x_276, x_276) * vec3<f32>(x_278.x, x_278.y, x_278.z));
  let x_281 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_280.x, x_280.y, x_280.z, x_281.w);
  let x_284 : vec3<f32> = u_xlat2;
  let x_286 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_284.y, x_284.z, x_284.x) * vec3<f32>(x_286.z, x_286.x, x_286.y));
  let x_289 : vec4<f32> = u_xlat1;
  let x_291 : vec3<f32> = u_xlat2;
  let x_294 : vec3<f32> = u_xlat4;
  u_xlat2 = ((vec3<f32>(x_289.y, x_289.z, x_289.x) * vec3<f32>(x_291.z, x_291.x, x_291.y)) + -(x_294));
  let x_298 : vec4<f32> = u_xlat1;
  let x_299 : vec3<f32> = vec3<f32>(x_298.x, x_298.y, x_298.z);
  let x_300 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  let x_304 : f32 = in_TANGENT0.w;
  let x_307 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat1.x = (x_304 * x_307);
  let x_311 : vec4<f32> = u_xlat1;
  let x_313 : vec3<f32> = u_xlat2;
  let x_314 : vec3<f32> = (vec3<f32>(x_311.x, x_311.x, x_311.x) * x_313);
  let x_315 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
  let x_318 : f32 = u_xlat3.y;
  vs_TEXCOORD3.w = x_318;
  let x_321 : f32 = u_xlat3.z;
  vs_TEXCOORD4.w = x_321;
  let x_324 : f32 = u_xlat0.y;
  let x_326 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.y = (x_324 * x_326);
  let x_329 : vec4<f32> = u_xlat0;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.x, x_329.w, x_329.y) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_334 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_333.x, x_334.y, x_333.y, x_333.z);
  let x_337 : vec4<f32> = u_xlat0;
  let x_338 : vec2<f32> = vec2<f32>(x_337.z, x_337.w);
  let x_339 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_339.x, x_339.y, x_338.x, x_338.y);
  let x_341 : vec4<f32> = u_xlat1;
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec2<f32> = (vec2<f32>(x_341.z, x_341.z) + vec2<f32>(x_343.x, x_343.w));
  let x_346 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_345.x, x_345.y, x_346.z, x_346.w);
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
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD4, vs_TEXCOORD3, vs_TEXCOORD7);
}

