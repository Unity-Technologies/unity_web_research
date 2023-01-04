struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_SSAOParams : vec4<f32>,
  x_SourceSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(1) var sampler_BlitTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat10 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat15 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_21 : f32 = x_14.x_SSAOParams.z;
  u_xlat0.x = (1.0f / x_21);
  let x_32 : vec4<f32> = x_14.x_SourceSize;
  let x_35 : vec4<f32> = u_xlat0;
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_41 : vec2<f32> = ((-(vec2<f32>(x_32.z, x_32.w)) * vec2<f32>(x_35.x, x_35.x)) + x_40);
  let x_42 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_41.x, x_41.y, x_42.z);
  let x_55 : vec3<f32> = u_xlat5;
  let x_59 : f32 = x_14.x_GlobalMipBias.x;
  let x_60 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_55.x, x_55.y), x_59);
  u_xlat1 = x_60;
  let x_61 : vec4<f32> = u_xlat1;
  u_xlat5 = ((vec3<f32>(x_61.y, x_61.z, x_61.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_73 : vec2<f32> = vs_TEXCOORD0;
  let x_75 : f32 = x_14.x_GlobalMipBias.x;
  let x_76 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, x_73, x_75);
  u_xlat2 = x_76;
  let x_78 : vec4<f32> = u_xlat2;
  u_xlat6 = ((vec3<f32>(x_78.y, x_78.z, x_78.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_82 : vec3<f32> = u_xlat6;
  let x_83 : vec3<f32> = u_xlat5;
  u_xlat5.x = dot(x_82, x_83);
  let x_87 : f32 = u_xlat5.x;
  u_xlat5.x = (x_87 + -0.800000012f);
  let x_92 : f32 = u_xlat5.x;
  u_xlat5.x = (x_92 * 5.000000477f);
  let x_97 : f32 = u_xlat5.x;
  u_xlat5.x = clamp(x_97, 0.0f, 1.0f);
  let x_103 : f32 = u_xlat5.x;
  u_xlat10 = ((x_103 * -2.0f) + 3.0f);
  let x_109 : f32 = u_xlat5.x;
  let x_111 : f32 = u_xlat5.x;
  u_xlat5.x = (x_109 * x_111);
  let x_115 : f32 = u_xlat5.x;
  let x_116 : f32 = u_xlat10;
  u_xlat5.x = (x_115 * x_116);
  let x_120 : f32 = u_xlat1.x;
  let x_122 : f32 = u_xlat5.x;
  let x_125 : f32 = u_xlat2.x;
  u_xlat10 = ((x_120 * x_122) + x_125);
  let x_127 : vec4<f32> = u_xlat0;
  let x_130 : vec4<f32> = x_14.x_SourceSize;
  let x_132 : vec2<f32> = (vec2<f32>(x_127.x, x_127.x) * vec2<f32>(x_130.z, x_130.w));
  let x_133 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_132.x, x_132.y, x_133.z, x_133.w);
  let x_136 : vec4<f32> = x_14.x_SourceSize;
  let x_138 : vec4<f32> = u_xlat0;
  let x_141 : vec2<f32> = vs_TEXCOORD0;
  let x_142 : vec2<f32> = ((vec2<f32>(x_136.z, x_136.w) * vec2<f32>(x_138.x, x_138.x)) + x_141);
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_142.x, x_143.y, x_143.z, x_142.y);
  let x_149 : vec4<f32> = u_xlat0;
  let x_152 : f32 = x_14.x_GlobalMipBias.x;
  let x_153 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_149.x, x_149.w), x_152);
  u_xlat3 = x_153;
  let x_154 : vec4<f32> = u_xlat2;
  let x_156 : vec2<f32> = -(vec2<f32>(x_154.y, x_154.x));
  let x_157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_157.x, x_157.y, x_156.x, x_156.y);
  let x_159 : vec4<f32> = u_xlat2;
  let x_161 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = (vec4<f32>(x_159.x, x_159.z, x_159.w, x_159.y) + vec4<f32>(x_161.x, x_161.y, x_161.x, x_161.y));
  let x_168 : vec4<f32> = u_xlat2;
  let x_171 : f32 = x_14.x_GlobalMipBias.x;
  let x_172 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_168.x, x_168.y), x_171);
  u_xlat4 = x_172;
  let x_176 : vec4<f32> = u_xlat2;
  let x_179 : f32 = x_14.x_GlobalMipBias.x;
  let x_180 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_BlitTexture, vec2<f32>(x_176.z, x_176.w), x_179);
  u_xlat2 = x_180;
  let x_182 : vec4<f32> = u_xlat4;
  u_xlat9 = ((vec3<f32>(x_182.y, x_182.z, x_182.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_186 : vec3<f32> = u_xlat6;
  let x_187 : vec3<f32> = u_xlat9;
  u_xlat0.x = dot(x_186, x_187);
  let x_191 : f32 = u_xlat0.x;
  u_xlat0.x = (x_191 + -0.800000012f);
  let x_195 : f32 = u_xlat0.x;
  u_xlat0.x = (x_195 * 5.000000477f);
  let x_199 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_199, 0.0f, 1.0f);
  let x_204 : f32 = u_xlat0.x;
  u_xlat15 = ((x_204 * -2.0f) + 3.0f);
  let x_208 : f32 = u_xlat0.x;
  let x_210 : f32 = u_xlat0.x;
  u_xlat0.x = (x_208 * x_210);
  let x_214 : f32 = u_xlat0.x;
  let x_215 : f32 = u_xlat15;
  u_xlat1.x = (x_214 * x_215);
  let x_218 : f32 = u_xlat15;
  let x_220 : f32 = u_xlat0.x;
  let x_223 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_218 * x_220) + x_223);
  let x_227 : f32 = u_xlat4.x;
  let x_229 : f32 = u_xlat1.x;
  let x_231 : f32 = u_xlat10;
  u_xlat5.x = ((x_227 * x_229) + x_231);
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat7 = ((vec3<f32>(x_235.y, x_235.z, x_235.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_239 : vec3<f32> = u_xlat6;
  let x_240 : vec3<f32> = u_xlat7;
  u_xlat10 = dot(x_239, x_240);
  let x_242 : f32 = u_xlat10;
  u_xlat10 = (x_242 + -0.800000012f);
  let x_244 : f32 = u_xlat10;
  u_xlat10 = (x_244 * 5.000000477f);
  let x_246 : f32 = u_xlat10;
  u_xlat10 = clamp(x_246, 0.0f, 1.0f);
  let x_248 : f32 = u_xlat10;
  u_xlat15 = ((x_248 * -2.0f) + 3.0f);
  let x_251 : f32 = u_xlat10;
  let x_252 : f32 = u_xlat10;
  u_xlat10 = (x_251 * x_252);
  let x_254 : f32 = u_xlat10;
  let x_255 : f32 = u_xlat15;
  u_xlat1.x = (x_254 * x_255);
  let x_258 : f32 = u_xlat15;
  let x_259 : f32 = u_xlat10;
  let x_262 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_258 * x_259) + x_262);
  let x_266 : f32 = u_xlat2.x;
  let x_268 : f32 = u_xlat1.x;
  let x_271 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_266 * x_268) + x_271);
  let x_274 : vec4<f32> = u_xlat3;
  let x_277 : vec3<f32> = ((vec3<f32>(x_274.y, x_274.z, x_274.w) * vec3<f32>(2.0f, 2.0f, 2.0f)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec3<f32> = u_xlat6;
  let x_281 : vec4<f32> = u_xlat2;
  u_xlat10 = dot(x_280, vec3<f32>(x_281.x, x_281.y, x_281.z));
  let x_284 : f32 = u_xlat10;
  u_xlat10 = (x_284 + -0.800000012f);
  let x_286 : f32 = u_xlat10;
  u_xlat10 = (x_286 * 5.000000477f);
  let x_288 : f32 = u_xlat10;
  u_xlat10 = clamp(x_288, 0.0f, 1.0f);
  let x_290 : f32 = u_xlat10;
  u_xlat15 = ((x_290 * -2.0f) + 3.0f);
  let x_293 : f32 = u_xlat10;
  let x_294 : f32 = u_xlat10;
  u_xlat10 = (x_293 * x_294);
  let x_296 : f32 = u_xlat10;
  let x_297 : f32 = u_xlat15;
  u_xlat1.x = (x_296 * x_297);
  let x_300 : f32 = u_xlat15;
  let x_301 : f32 = u_xlat10;
  let x_304 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_300 * x_301) + x_304);
  let x_308 : f32 = u_xlat0.x;
  u_xlat0.x = (x_308 + 1.0f);
  let x_312 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / x_312);
  let x_316 : f32 = u_xlat3.x;
  let x_318 : f32 = u_xlat1.x;
  let x_321 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_316 * x_318) + x_321);
  let x_327 : f32 = u_xlat5.x;
  let x_330 : f32 = u_xlat0.x;
  SV_Target0.w = ((-(x_327) * x_330) + 1.0f);
  let x_337 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z, x_337.w);
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

