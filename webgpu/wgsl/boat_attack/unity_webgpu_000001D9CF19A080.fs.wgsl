diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_SourceSize : vec4<f32>,
  /* @offset(32) */
  x_CoCParams : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : f32;

@group(0) @binding(1) var x_FullCoCTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlatb4 : bool;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_SourceSize;
  let x_27 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((-(vec4<f32>(x_18.z, x_18.w, x_18.z, x_18.w)) * vec4<f32>(0.5f, 0.5f, -0.5f, 0.5f)) + vec4<f32>(x_27.x, x_27.y, x_27.x, x_27.y));
  let x_42 : vec4<f32> = u_xlat0;
  let x_49 : f32 = x_13.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, vec2<f32>(x_42.z, x_42.w), x_49);
  u_xlat1 = x_50.x;
  let x_52 : f32 = u_xlat1;
  u_xlat1 = ((x_52 * 2.0f) + -1.0f);
  let x_59 : vec4<f32> = x_13.x_SourceSize;
  let x_63 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_59.z, x_59.w, x_59.z, x_59.w) * vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_63.x, x_63.y, x_63.x, x_63.y));
  let x_72 : vec4<f32> = u_xlat2;
  let x_75 : f32 = x_13.x_GlobalMipBias.x;
  let x_76 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, vec2<f32>(x_72.x, x_72.y), x_75);
  u_xlat4.x = x_76.x;
  let x_80 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_80 * 2.0f) + -1.0f);
  let x_86 : f32 = u_xlat4.x;
  let x_87 : f32 = u_xlat1;
  u_xlat7 = min(x_86, x_87);
  let x_90 : f32 = u_xlat4.x;
  let x_91 : f32 = u_xlat1;
  u_xlat1 = max(x_90, x_91);
  let x_96 : vec4<f32> = u_xlat2;
  let x_99 : f32 = x_13.x_GlobalMipBias.x;
  let x_100 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, vec2<f32>(x_96.z, x_96.w), x_99);
  u_xlat4.x = x_100.x;
  let x_104 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_104 * 2.0f) + -1.0f);
  let x_109 : f32 = u_xlat4.x;
  let x_110 : f32 = u_xlat7;
  u_xlat7 = min(x_109, x_110);
  let x_113 : f32 = u_xlat4.x;
  let x_114 : f32 = u_xlat1;
  u_xlat1 = max(x_113, x_114);
  let x_119 : vec4<f32> = u_xlat0;
  let x_122 : f32 = x_13.x_GlobalMipBias.x;
  let x_123 : vec4<f32> = textureSampleBias(x_FullCoCTexture, sampler_LinearClamp, vec2<f32>(x_119.x, x_119.y), x_122);
  u_xlat4.x = x_123.x;
  let x_127 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_127 * 2.0f) + -1.0f);
  let x_131 : f32 = u_xlat7;
  let x_133 : f32 = u_xlat4.x;
  u_xlat7 = min(x_131, x_133);
  let x_135 : f32 = u_xlat1;
  let x_137 : f32 = u_xlat4.x;
  u_xlat1 = max(x_135, x_137);
  let x_142 : f32 = u_xlat1;
  let x_143 : f32 = u_xlat7;
  u_xlatb4 = (x_142 < -(x_143));
  let x_146 : bool = u_xlatb4;
  let x_147 : f32 = u_xlat7;
  let x_148 : f32 = u_xlat1;
  u_xlat1 = select(x_148, x_147, x_146);
  let x_150 : f32 = u_xlat1;
  let x_154 : f32 = x_13.x_CoCParams.z;
  u_xlat1 = (x_150 * x_154);
  let x_158 : f32 = x_13.x_SourceSize.w;
  let x_160 : f32 = x_13.x_SourceSize.w;
  u_xlat4.x = (x_158 + x_160);
  let x_165 : f32 = u_xlat4.x;
  u_xlat4.x = (1.0f / x_165);
  let x_169 : f32 = u_xlat4.x;
  let x_170 : f32 = u_xlat1;
  u_xlat4.x = (x_169 * abs(x_170));
  let x_175 : f32 = u_xlat4.x;
  u_xlat4.x = clamp(x_175, 0.0f, 1.0f);
  let x_181 : f32 = u_xlat1;
  SV_Target0.w = x_181;
  let x_185 : f32 = u_xlat4.x;
  u_xlat1 = ((x_185 * -2.0f) + 3.0f);
  let x_191 : f32 = u_xlat4.x;
  let x_193 : f32 = u_xlat4.x;
  u_xlat4.x = (x_191 * x_193);
  let x_197 : f32 = u_xlat4.x;
  let x_198 : f32 = u_xlat1;
  u_xlat1 = (x_197 * x_198);
  let x_204 : vec4<f32> = u_xlat0;
  let x_207 : f32 = x_13.x_GlobalMipBias.x;
  let x_208 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_204.x, x_204.y), x_207);
  u_xlat4 = vec3<f32>(x_208.x, x_208.y, x_208.z);
  let x_213 : vec4<f32> = u_xlat0;
  let x_216 : f32 = x_13.x_GlobalMipBias.x;
  let x_217 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_213.z, x_213.w), x_216);
  let x_218 : vec3<f32> = vec3<f32>(x_217.x, x_217.y, x_217.z);
  let x_219 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec4<f32> = u_xlat0;
  let x_223 : vec3<f32> = u_xlat4;
  let x_224 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) + x_223);
  let x_225 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_230 : vec4<f32> = u_xlat2;
  let x_233 : f32 = x_13.x_GlobalMipBias.x;
  let x_234 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_230.x, x_230.y), x_233);
  u_xlat4 = vec3<f32>(x_234.x, x_234.y, x_234.z);
  let x_239 : vec4<f32> = u_xlat2;
  let x_242 : f32 = x_13.x_GlobalMipBias.x;
  let x_243 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_239.z, x_239.w), x_242);
  let x_244 : vec3<f32> = vec3<f32>(x_243.x, x_243.y, x_243.z);
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : vec4<f32> = u_xlat0;
  let x_249 : vec3<f32> = u_xlat4;
  let x_250 : vec3<f32> = (vec3<f32>(x_247.x, x_247.y, x_247.z) + x_249);
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
  let x_253 : vec4<f32> = u_xlat2;
  let x_255 : vec4<f32> = u_xlat0;
  let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.y, x_253.z) + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : vec4<f32> = u_xlat0;
  let x_264 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_265 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_267 : f32 = u_xlat1;
  let x_269 : vec4<f32> = u_xlat0;
  let x_271 : vec3<f32> = (vec3<f32>(x_267, x_267, x_267) * vec3<f32>(x_269.x, x_269.y, x_269.z));
  let x_272 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
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


