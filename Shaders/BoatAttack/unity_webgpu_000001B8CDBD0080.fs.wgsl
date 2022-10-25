struct PGlobals {
  x_PCUVToBrushUVScales : vec4<f32>,
  x_PCUVToBrushUVOffset : vec2<f32>,
  @size(8)
  padding : u32,
  x_BrushParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_39 : PGlobals;

@group(0) @binding(1) var x_BrushTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_BrushTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn uint_bitfieldExtract_u1_i1_i1_(value : ptr<function, u32>, offset_1 : ptr<function, i32>, bits : ptr<function, i32>) -> u32 {
  let x_16 : u32 = *(value);
  let x_17 : i32 = *(offset_1);
  let x_21 : i32 = *(bits);
  return ((x_16 >> bitcast<u32>(x_17)) & ~((4294967295u << bitcast<u32>(x_21))));
}

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlatb4 : vec2<bool>;
  var u_xlatb2 : bool;
  var u_xlat2 : f32;
  var u_xlatb0 : bool;
  var u_xlat6 : f32;
  var u_xlat1 : vec2<f32>;
  var u_xlati3 : i32;
  var u_xlati5 : i32;
  var u_xlat3 : f32;
  var u_xlat5 : f32;
  var x_237 : f32;
  var u_xlatu0 : vec2<u32>;
  var param : u32;
  var param_1 : i32;
  var param_2 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_35 : vec2<f32> = vs_TEXCOORD0;
  let x_43 : vec4<f32> = x_39.x_PCUVToBrushUVScales;
  u_xlat0 = (vec4<f32>(x_35.x, x_35.x, x_35.y, x_35.y) * x_43);
  let x_45 : vec4<f32> = u_xlat0;
  let x_47 : vec4<f32> = u_xlat0;
  let x_49 : vec2<f32> = (vec2<f32>(x_45.z, x_45.w) + vec2<f32>(x_47.x, x_47.y));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_50.z, x_50.w);
  let x_52 : vec4<f32> = u_xlat0;
  let x_57 : vec2<f32> = x_39.x_PCUVToBrushUVOffset;
  let x_58 : vec2<f32> = (vec2<f32>(x_52.x, x_52.y) + x_57);
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_58.x, x_58.y, x_59.z, x_59.w);
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat4 = vec2<f32>(x_63.x, x_63.y);
  let x_65 : vec2<f32> = u_xlat4;
  u_xlat4 = clamp(x_65, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_75 : vec4<f32> = u_xlat0;
  let x_77 : vec2<f32> = u_xlat4;
  let x_80 : vec4<bool> = (vec4<f32>(x_75.x, x_75.y, x_75.x, x_75.y) == vec4<f32>(x_77.x, x_77.y, x_77.x, x_77.y));
  u_xlatb4 = vec2<bool>(x_80.x, x_80.y);
  let x_92 : vec4<f32> = u_xlat0;
  let x_94 : vec4<f32> = textureSample(x_BrushTex, sampler_BrushTex, vec2<f32>(x_92.x, x_92.y));
  let x_95 : vec2<f32> = vec2<f32>(x_94.x, x_94.y);
  let x_96 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_95.x, x_95.y, x_96.z, x_96.w);
  let x_101 : f32 = u_xlat0.y;
  let x_106 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_101 * 256.0f) + x_106);
  let x_112 : bool = u_xlatb4.y;
  let x_114 : bool = u_xlatb4.x;
  u_xlatb2 = (x_112 & x_114);
  let x_117 : bool = u_xlatb2;
  u_xlat2 = select(0.0f, 1.0f, x_117);
  let x_119 : f32 = u_xlat2;
  let x_123 : f32 = x_39.x_BrushParams.x;
  u_xlat2 = (x_119 * x_123);
  let x_125 : f32 = u_xlat2;
  let x_127 : f32 = u_xlat0.x;
  u_xlat0.x = (x_125 * x_127);
  let x_131 : f32 = u_xlat0.x;
  u_xlat2 = (x_131 * 0.00389105058f);
  let x_134 : f32 = u_xlat2;
  u_xlat2 = clamp(x_134, 0.0f, 1.0f);
  let x_138 : f32 = u_xlat0.x;
  u_xlatb0 = (0.0f < x_138);
  let x_140 : f32 = u_xlat2;
  u_xlat4.x = (-(x_140) + 1.0f);
  let x_144 : f32 = u_xlat2;
  u_xlat2 = (x_144 + 0.000001f);
  let x_148 : f32 = u_xlat4.x;
  let x_149 : f32 = u_xlat2;
  u_xlat2 = (x_148 / x_149);
  let x_156 : vec2<f32> = vs_TEXCOORD0;
  let x_157 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_156);
  u_xlat4 = vec2<f32>(x_157.x, x_157.y);
  let x_160 : f32 = u_xlat4.y;
  let x_163 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_160 * 256.0f) + x_163);
  let x_168 : f32 = u_xlat4.x;
  let x_171 : f32 = x_39.x_BrushParams.y;
  u_xlat6 = ((x_168 * 0.00389105058f) + -(x_171));
  let x_175 : f32 = u_xlat4.x;
  u_xlat4.x = (x_175 * 0.00389105058f);
  let x_179 : f32 = u_xlat6;
  let x_180 : f32 = u_xlat2;
  u_xlat1.x = (x_179 * x_180);
  let x_184 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_184, -1.0f);
  let x_189 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_189, 1.0f);
  let x_194 : f32 = u_xlat1.x;
  u_xlati3 = bitcast<i32>(select(0u, 4294967295u, (0.0f < x_194)));
  let x_200 : f32 = u_xlat1.x;
  u_xlati5 = bitcast<i32>(select(0u, 4294967295u, (x_200 < 0.0f)));
  let x_204 : i32 = u_xlati3;
  let x_206 : i32 = u_xlati5;
  u_xlati3 = (-(x_204) + x_206);
  let x_209 : i32 = u_xlati3;
  u_xlat3 = f32(x_209);
  let x_213 : f32 = u_xlat1.x;
  u_xlat5 = (x_213 * 0.5f);
  let x_216 : f32 = u_xlat5;
  let x_217 : f32 = u_xlat3;
  u_xlat3 = ((x_216 * x_217) + -1.0f);
  let x_220 : f32 = u_xlat3;
  let x_222 : f32 = u_xlat1.x;
  u_xlat1.x = (x_220 * x_222);
  let x_226 : f32 = u_xlat1.x;
  let x_227 : f32 = u_xlat2;
  u_xlat2 = (x_226 / x_227);
  let x_229 : f32 = u_xlat2;
  let x_230 : f32 = u_xlat6;
  u_xlat2 = (x_229 + x_230);
  let x_232 : f32 = u_xlat2;
  let x_234 : f32 = x_39.x_BrushParams.y;
  u_xlat2 = (x_232 + x_234);
  let x_236 : bool = u_xlatb0;
  if (x_236) {
    let x_240 : f32 = u_xlat2;
    x_237 = x_240;
  } else {
    let x_243 : f32 = u_xlat4.x;
    x_237 = x_243;
  }
  let x_244 : f32 = x_237;
  u_xlat0.x = x_244;
  let x_247 : f32 = u_xlat0.x;
  u_xlat0.x = (x_247 * 65535.0f);
  let x_255 : f32 = u_xlat0.x;
  u_xlatu0.x = u32(x_255);
  let x_259 : u32 = u_xlatu0.x;
  u_xlatu0.y = (x_259 & 255u);
  let x_266 : u32 = u_xlatu0.x;
  param = x_266;
  param_1 = 8i;
  param_2 = 8i;
  let x_269 : u32 = uint_bitfieldExtract_u1_i1_i1_(&(param), &(param_1), &(param_2));
  u_xlatu0.x = x_269;
  let x_271 : vec2<u32> = u_xlatu0;
  u_xlat1 = vec2<f32>(vec2<u32>(x_271.y, x_271.x));
  let x_276 : vec2<f32> = u_xlat1;
  let x_279 : vec2<f32> = (x_276 * vec2<f32>(0.003921569f, 0.003921569f));
  let x_280 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_279.x, x_279.y, x_280.z, x_280.w);
  let x_283 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_283.x, x_283.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

