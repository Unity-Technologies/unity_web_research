struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
}

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_24 : VGlobals;

var<private> in_POSITION0 : vec3<f32>;

var<private> vs_TEXCOORD0 : f32;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_12;
  let x_13 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = clamp(x_13, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_31 : vec4<f32> = x_24.unity_ObjectToWorld[1i];
  let x_34 : vec4<f32> = x_24.unity_MatrixV[1i];
  let x_36 : vec3<f32> = (vec3<f32>(x_31.y, x_31.y, x_31.y) * vec3<f32>(x_34.x, x_34.y, x_34.z));
  let x_37 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_36.x, x_36.y, x_36.z, x_37.w);
  let x_40 : vec4<f32> = x_24.unity_MatrixV[0i];
  let x_43 : vec4<f32> = x_24.unity_ObjectToWorld[1i];
  let x_46 : vec4<f32> = u_xlat0;
  let x_48 : vec3<f32> = ((vec3<f32>(x_40.x, x_40.y, x_40.z) * vec3<f32>(x_43.x, x_43.x, x_43.x)) + vec3<f32>(x_46.x, x_46.y, x_46.z));
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_48.x, x_48.y, x_48.z, x_49.w);
  let x_53 : vec4<f32> = x_24.unity_MatrixV[2i];
  let x_56 : vec4<f32> = x_24.unity_ObjectToWorld[1i];
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec3<f32> = ((vec3<f32>(x_53.x, x_53.y, x_53.z) * vec3<f32>(x_56.z, x_56.z, x_56.z)) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_66 : vec4<f32> = x_24.unity_MatrixV[3i];
  let x_69 : vec4<f32> = x_24.unity_ObjectToWorld[1i];
  let x_72 : vec4<f32> = u_xlat0;
  let x_74 : vec3<f32> = ((vec3<f32>(x_66.x, x_66.y, x_66.z) * vec3<f32>(x_69.w, x_69.w, x_69.w)) + vec3<f32>(x_72.x, x_72.y, x_72.z));
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_74.x, x_74.y, x_74.z, x_75.w);
  let x_77 : vec4<f32> = u_xlat0;
  let x_81 : vec3<f32> = in_POSITION0;
  let x_83 : vec3<f32> = (vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(x_81.y, x_81.y, x_81.y));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : vec4<f32> = x_24.unity_ObjectToWorld[0i];
  let x_91 : vec4<f32> = x_24.unity_MatrixV[1i];
  let x_93 : vec3<f32> = (vec3<f32>(x_88.y, x_88.y, x_88.y) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : vec4<f32> = x_24.unity_MatrixV[0i];
  let x_100 : vec4<f32> = x_24.unity_ObjectToWorld[0i];
  let x_103 : vec4<f32> = u_xlat1;
  let x_105 : vec3<f32> = ((vec3<f32>(x_97.x, x_97.y, x_97.z) * vec3<f32>(x_100.x, x_100.x, x_100.x)) + vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_106 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_109 : vec4<f32> = x_24.unity_MatrixV[2i];
  let x_112 : vec4<f32> = x_24.unity_ObjectToWorld[0i];
  let x_115 : vec4<f32> = u_xlat1;
  let x_117 : vec3<f32> = ((vec3<f32>(x_109.x, x_109.y, x_109.z) * vec3<f32>(x_112.z, x_112.z, x_112.z)) + vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_121 : vec4<f32> = x_24.unity_MatrixV[3i];
  let x_124 : vec4<f32> = x_24.unity_ObjectToWorld[0i];
  let x_127 : vec4<f32> = u_xlat1;
  let x_129 : vec3<f32> = ((vec3<f32>(x_121.x, x_121.y, x_121.z) * vec3<f32>(x_124.w, x_124.w, x_124.w)) + vec3<f32>(x_127.x, x_127.y, x_127.z));
  let x_130 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_132 : vec4<f32> = u_xlat1;
  let x_134 : vec3<f32> = in_POSITION0;
  let x_137 : vec4<f32> = u_xlat0;
  let x_139 : vec3<f32> = ((vec3<f32>(x_132.x, x_132.y, x_132.z) * vec3<f32>(x_134.x, x_134.x, x_134.x)) + vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_140 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_139.x, x_139.y, x_139.z, x_140.w);
  let x_143 : vec4<f32> = x_24.unity_ObjectToWorld[2i];
  let x_146 : vec4<f32> = x_24.unity_MatrixV[1i];
  let x_148 : vec3<f32> = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_146.x, x_146.y, x_146.z));
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_152 : vec4<f32> = x_24.unity_MatrixV[0i];
  let x_155 : vec4<f32> = x_24.unity_ObjectToWorld[2i];
  let x_158 : vec4<f32> = u_xlat1;
  let x_160 : vec3<f32> = ((vec3<f32>(x_152.x, x_152.y, x_152.z) * vec3<f32>(x_155.x, x_155.x, x_155.x)) + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_160.x, x_160.y, x_160.z, x_161.w);
  let x_164 : vec4<f32> = x_24.unity_MatrixV[2i];
  let x_167 : vec4<f32> = x_24.unity_ObjectToWorld[2i];
  let x_170 : vec4<f32> = u_xlat1;
  let x_172 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_167.z, x_167.z, x_167.z)) + vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec4<f32> = x_24.unity_MatrixV[3i];
  let x_179 : vec4<f32> = x_24.unity_ObjectToWorld[2i];
  let x_182 : vec4<f32> = u_xlat1;
  let x_184 : vec3<f32> = ((vec3<f32>(x_176.x, x_176.y, x_176.z) * vec3<f32>(x_179.w, x_179.w, x_179.w)) + vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : vec4<f32> = u_xlat1;
  let x_189 : vec3<f32> = in_POSITION0;
  let x_192 : vec4<f32> = u_xlat0;
  let x_194 : vec3<f32> = ((vec3<f32>(x_187.x, x_187.y, x_187.z) * vec3<f32>(x_189.z, x_189.z, x_189.z)) + vec3<f32>(x_192.x, x_192.y, x_192.z));
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_198 : vec4<f32> = x_24.unity_ObjectToWorld[3i];
  let x_201 : vec4<f32> = x_24.unity_MatrixV[1i];
  let x_203 : vec3<f32> = (vec3<f32>(x_198.y, x_198.y, x_198.y) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_203.x, x_203.y, x_203.z, x_204.w);
  let x_207 : vec4<f32> = x_24.unity_MatrixV[0i];
  let x_210 : vec4<f32> = x_24.unity_ObjectToWorld[3i];
  let x_213 : vec4<f32> = u_xlat1;
  let x_215 : vec3<f32> = ((vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_210.x, x_210.x, x_210.x)) + vec3<f32>(x_213.x, x_213.y, x_213.z));
  let x_216 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
  let x_219 : vec4<f32> = x_24.unity_MatrixV[2i];
  let x_222 : vec4<f32> = x_24.unity_ObjectToWorld[3i];
  let x_225 : vec4<f32> = u_xlat1;
  let x_227 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_222.z, x_222.z, x_222.z)) + vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : vec4<f32> = x_24.unity_MatrixV[3i];
  let x_234 : vec4<f32> = x_24.unity_ObjectToWorld[3i];
  let x_237 : vec4<f32> = u_xlat1;
  let x_239 : vec3<f32> = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_234.w, x_234.w, x_234.w)) + vec3<f32>(x_237.x, x_237.y, x_237.z));
  let x_240 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
  let x_242 : vec4<f32> = u_xlat0;
  let x_244 : vec4<f32> = u_xlat1;
  let x_246 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) + vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat0;
  let x_251 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_249.x, x_249.y, x_249.z), vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_259 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_259);
  let x_263 : f32 = u_xlat0.x;
  let x_266 : f32 = x_24.unity_FogParams.x;
  u_xlat0.x = (x_263 * x_266);
  let x_270 : f32 = u_xlat0.x;
  let x_272 : f32 = u_xlat0.x;
  u_xlat0.x = (x_270 * -(x_272));
  let x_279 : f32 = u_xlat0.x;
  vs_TEXCOORD0 = exp2(x_279);
  let x_281 : vec3<f32> = in_POSITION0;
  let x_284 : vec4<f32> = x_24.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_281.y, x_281.y, x_281.y, x_281.y) * x_284);
  let x_287 : vec4<f32> = x_24.unity_ObjectToWorld[0i];
  let x_288 : vec3<f32> = in_POSITION0;
  let x_291 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_287 * vec4<f32>(x_288.x, x_288.x, x_288.x, x_288.x)) + x_291);
  let x_294 : vec4<f32> = x_24.unity_ObjectToWorld[2i];
  let x_295 : vec3<f32> = in_POSITION0;
  let x_298 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_294 * vec4<f32>(x_295.z, x_295.z, x_295.z, x_295.z)) + x_298);
  let x_300 : vec4<f32> = u_xlat0;
  let x_302 : vec4<f32> = x_24.unity_ObjectToWorld[3i];
  u_xlat0 = (x_300 + x_302);
  let x_304 : vec4<f32> = u_xlat0;
  let x_307 : vec4<f32> = x_24.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_304.y, x_304.y, x_304.y, x_304.y) * x_307);
  let x_310 : vec4<f32> = x_24.unity_MatrixVP[0i];
  let x_311 : vec4<f32> = u_xlat0;
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_310 * vec4<f32>(x_311.x, x_311.x, x_311.x, x_311.x)) + x_314);
  let x_317 : vec4<f32> = x_24.unity_MatrixVP[2i];
  let x_318 : vec4<f32> = u_xlat0;
  let x_321 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_317 * vec4<f32>(x_318.z, x_318.z, x_318.z, x_318.z)) + x_321);
  let x_329 : vec4<f32> = x_24.unity_MatrixVP[3i];
  let x_330 : vec4<f32> = u_xlat0;
  let x_333 : vec4<f32> = u_xlat1;
  gl_Position = ((x_329 * vec4<f32>(x_330.w, x_330.w, x_330.w, x_330.w)) + x_333);
  return;
}

struct main_out {
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : f32,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_COLOR0_param : vec4<f32>, @location(0) in_POSITION0_param : vec3<f32>) -> main_out {
  in_COLOR0 = in_COLOR0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_COLOR0, vs_TEXCOORD0, gl_Position);
}

