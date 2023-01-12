struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
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

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb2 : bool;
  var x_103 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat14 : f32;
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
  let x_43 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_43 + x_45);
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
  let x_76 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_76 * vec4<f32>(x_77.w, x_77.w, x_77.w, x_77.w)) + x_80);
  let x_88 : vec4<f32> = u_xlat1;
  gl_Position = x_88;
  let x_97 : f32 = x_18.x_UVSec;
  u_xlatb2 = (x_97 == 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_108 : vec2<f32> = in_TEXCOORD0;
    x_103 = x_108;
  } else {
    let x_111 : vec2<f32> = in_TEXCOORD1;
    x_103 = x_111;
  }
  let x_112 : vec2<f32> = x_103;
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_124 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_126 : vec2<f32> = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_120.x, x_120.y)) + vec2<f32>(x_124.z, x_124.w));
  let x_127 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_127.x, x_127.y, x_126.x, x_126.y);
  let x_129 : vec2<f32> = in_TEXCOORD0;
  let x_132 : vec4<f32> = x_18.x_MainTex_ST;
  let x_136 : vec4<f32> = x_18.x_MainTex_ST;
  let x_138 : vec2<f32> = ((x_129 * vec2<f32>(x_132.x, x_132.y)) + vec2<f32>(x_136.z, x_136.w));
  let x_139 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
  let x_145 : f32 = u_xlat1.z;
  vs_TEXCOORD1.w = x_145;
  let x_149 : vec4<f32> = in_POSITION0;
  let x_152 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_154 : vec3<f32> = (vec3<f32>(x_149.y, x_149.y, x_149.y) * vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_155 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_158 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_160 : vec4<f32> = in_POSITION0;
  let x_163 : vec4<f32> = u_xlat2;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160.x, x_160.x, x_160.x)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_169 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_171 : vec4<f32> = in_POSITION0;
  let x_174 : vec4<f32> = u_xlat2;
  let x_176 : vec3<f32> = ((vec3<f32>(x_169.x, x_169.y, x_169.z) * vec3<f32>(x_171.z, x_171.z, x_171.z)) + vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_177 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_176.x, x_176.y, x_176.z, x_177.w);
  let x_180 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_182 : vec4<f32> = in_POSITION0;
  let x_185 : vec4<f32> = u_xlat2;
  let x_187 : vec3<f32> = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182.w, x_182.w, x_182.w)) + vec3<f32>(x_185.x, x_185.y, x_185.z));
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_190 : vec4<f32> = u_xlat2;
  let x_194 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_196 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + -(x_194));
  let x_197 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
  let x_200 : vec4<f32> = u_xlat2;
  let x_204 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_208 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_210 : vec3<f32> = ((-(vec3<f32>(x_200.x, x_200.y, x_200.z)) * vec3<f32>(x_204.w, x_204.w, x_204.w)) + vec3<f32>(x_208.x, x_208.y, x_208.z));
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
  let x_215 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = vec3<f32>(x_215.x, x_215.y, x_215.z);
  u_xlat3.w = 0.0f;
  let x_219 : vec4<f32> = u_xlat3;
  vs_TEXCOORD2 = vec4<f32>(x_219.w, x_219.w, x_219.w, x_219.x);
  let x_222 : vec4<f32> = u_xlat3;
  vs_TEXCOORD3 = vec4<f32>(x_222.w, x_222.w, x_222.w, x_222.y);
  let x_226 : f32 = u_xlat3.z;
  vs_TEXCOORD4.w = x_226;
  let x_230 : vec3<f32> = in_NORMAL0;
  let x_233 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_230, vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_238 : vec3<f32> = in_NORMAL0;
  let x_240 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_238, vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_244 : vec3<f32> = in_NORMAL0;
  let x_246 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_244, vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_251 : vec4<f32> = u_xlat2;
  let x_253 : vec4<f32> = u_xlat2;
  u_xlat14 = dot(vec3<f32>(x_251.x, x_251.y, x_251.z), vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : f32 = u_xlat14;
  u_xlat14 = inverseSqrt(x_256);
  let x_258 : f32 = u_xlat14;
  let x_260 : vec4<f32> = u_xlat2;
  let x_262 : vec3<f32> = (vec3<f32>(x_258, x_258, x_258) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat0;
  let x_269 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_271 : vec2<f32> = (vec2<f32>(x_265.y, x_265.y) * vec2<f32>(x_269.x, x_269.y));
  let x_272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_271.x, x_271.y, x_272.z, x_272.w);
  let x_275 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_277 : vec4<f32> = u_xlat0;
  let x_280 : vec4<f32> = u_xlat2;
  let x_282 : vec2<f32> = ((vec2<f32>(x_275.x, x_275.y) * vec2<f32>(x_277.x, x_277.x)) + vec2<f32>(x_280.x, x_280.y));
  let x_283 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
  let x_286 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_288 : vec4<f32> = u_xlat0;
  let x_291 : vec4<f32> = u_xlat0;
  let x_293 : vec2<f32> = ((vec2<f32>(x_286.x, x_286.y) * vec2<f32>(x_288.z, x_288.z)) + vec2<f32>(x_291.x, x_291.y));
  let x_294 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_293.x, x_293.y, x_294.z, x_294.w);
  let x_299 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_301 : vec4<f32> = u_xlat0;
  let x_304 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec2<f32>(x_299.x, x_299.y) * vec2<f32>(x_301.w, x_301.w)) + vec2<f32>(x_304.x, x_304.y));
  let x_308 : f32 = u_xlat1.y;
  let x_310 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.x = (x_308 * x_310);
  let x_314 : f32 = u_xlat0.x;
  u_xlat0.w = (x_314 * 0.5f);
  let x_318 : vec4<f32> = u_xlat1;
  let x_321 : vec2<f32> = (vec2<f32>(x_318.x, x_318.w) * vec2<f32>(0.5f, 0.5f));
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_321.x, x_322.y, x_321.y, x_322.w);
  let x_325 : vec4<f32> = u_xlat1;
  let x_326 : vec2<f32> = vec2<f32>(x_325.z, x_325.w);
  let x_327 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_327.x, x_327.y, x_326.x, x_326.y);
  let x_329 : vec4<f32> = u_xlat0;
  let x_331 : vec4<f32> = u_xlat0;
  let x_333 : vec2<f32> = (vec2<f32>(x_329.z, x_329.z) + vec2<f32>(x_331.x, x_331.w));
  let x_334 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_333.x, x_333.y, x_334.z, x_334.w);
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
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4, vs_TEXCOORD7);
}

