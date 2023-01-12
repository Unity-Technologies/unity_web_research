@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

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
  let x_23 : vec2<f32> = vs_TEXCOORD0;
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
  let x_95 : bool = u_xlatb1.x;
  let x_96 : vec4<f32> = u_xlat0;
  SV_Target0 = select(x_96, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<bool>(x_95, x_95, x_95, x_95));
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

