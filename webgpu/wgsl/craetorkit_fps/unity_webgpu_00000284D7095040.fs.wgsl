@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : vec4<bool>;
  var u_xlatb2 : vec4<bool>;
  var u_xlati1 : vec4<i32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD1;
  let x_24 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = x_24;
  let x_29 : vec4<f32> = u_xlat0;
  u_xlatb1 = (x_29 < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_34 : vec4<f32> = u_xlat0;
  u_xlatb2 = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < x_34);
  let x_40 : vec4<bool> = u_xlatb1;
  let x_51 : vec4<bool> = u_xlatb2;
  u_xlati1 = bitcast<vec4<i32>>(((select(vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 1u), x_40) * vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u)) | (select(vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 1u), x_51) * vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u))));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlatb2 = (x_57 == vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_59 : vec4<i32> = u_xlati1;
  let x_61 : vec4<bool> = u_xlatb2;
  u_xlati1 = bitcast<vec4<i32>>((bitcast<vec4<u32>>(x_59) | (select(vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(1u, 1u, 1u, 1u), x_61) * vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4294967295u))));
  let x_67 : vec4<i32> = u_xlati1;
  u_xlatb1 = (x_67 == vec4<i32>(0i, 0i, 0i, 0i));
  let x_73 : bool = u_xlatb1.y;
  let x_75 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_73 | x_75);
  let x_80 : bool = u_xlatb1.z;
  let x_82 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_80 | x_82);
  let x_87 : bool = u_xlatb1.w;
  let x_89 : bool = u_xlatb1.x;
  u_xlatb1.x = (x_87 | x_89);
  let x_93 : vec4<f32> = u_xlat0;
  let x_94 : vec3<f32> = vec3<f32>(x_93.x, x_93.y, x_93.z);
  let x_95 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  let x_97 : vec4<f32> = u_xlat0;
  let x_102 : vec3<f32> = clamp(vec3<f32>(x_97.x, x_97.y, x_97.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_102.x, x_102.y, x_102.z, x_103.w);
  let x_105 : vec4<f32> = u_xlat0;
  let x_109 : vec3<f32> = (vec3<f32>(x_105.x, x_105.y, x_105.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_115 : bool = u_xlatb1.x;
  let x_117 : vec4<f32> = u_xlat0;
  SV_Target0 = select(x_117, vec4<f32>(1.0f, 0.0f, 1.0f, 1.0f), vec4<bool>(x_115, x_115, x_115, x_115));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

